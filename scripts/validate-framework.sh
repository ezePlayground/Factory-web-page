#!/usr/bin/env bash
set -euo pipefail

fail() {
  echo "FAIL: $1" >&2
  exit 1
}

require_file() {
  [ -f "$1" ] || fail "Missing required file: $1"
}

require_dir() {
  [ -d "$1" ] || fail "Missing required directory: $1"
}

require_text() {
  local pattern="$1"
  local file="$2"
  grep -Eq "$pattern" "$file" || fail "Missing expected text in $file: $pattern"
}

reject_text() {
  local pattern="$1"
  shift
  if grep -R -n -E "$pattern" "$@" >/tmp/framework-validation-grep.txt 2>/dev/null; then
    cat /tmp/framework-validation-grep.txt >&2
    fail "Found rejected text: $pattern"
  fi
}

root_files=(
  README.md
  LICENSE
  .gitignore
  CONTRIBUTING.md
  AGENTS.md
  HANDOFF.md
  FRAMEWORK_FREEZE.md
  ROADMAP.md
  CHANGELOG.md
  SECURITY.md
)

for file in "${root_files[@]}"; do
  require_file "$file"
done

schema_files=(
  schemas/skill-summary.schema.json
  schemas/approval-record.schema.json
  schemas/validation-evidence.schema.json
  schemas/handoff-state.schema.json
  schemas/roadmap-item.schema.json
  schemas/changelog-entry.schema.json
)

for file in "${schema_files[@]}"; do
  require_file "$file"
done

require_file records/handoff-state.json
require_dir records/approvals
require_dir records/skill-summaries
require_dir records/validation-evidence
require_dir artifacts/mockups
require_file scripts/validate-framework.sh
require_file .github/workflows/validate-framework.yml
require_file .github/PULL_REQUEST_TEMPLATE.md
require_file .github/ISSUE_TEMPLATE/framework-gap.yml
require_file .github/ISSUE_TEMPLATE/maintenance-request.yml
require_file .github/ISSUE_TEMPLATE/config.yml

for skill_dir in skills/orchestrator/* skills/helper/*; do
  [ -d "$skill_dir" ] || continue
  require_file "$skill_dir/SKILL.md"
  require_file "$skill_dir/missing-input.response.md"
  require_file "$skill_dir/summary.response.md"
  require_file "$skill_dir/completion-checklist.md"
  require_text "[Aa]pprove" "$skill_dir/summary.response.md"
  require_text "[Mm]odify" "$skill_dir/summary.response.md"
  require_text "[Rr]eject" "$skill_dir/summary.response.md"
done

require_text "git@github.com:ezePlayground/Factory-web-page.git" HANDOFF.md
require_text "origin/main" HANDOFF.md
require_text '"pushed": true' records/handoff-state.json
require_text "git@github.com:ezePlayground/Factory-web-page.git" records/handoff-state.json
require_text "Not frozen" FRAMEWORK_FREEZE.md
require_text "artifacts/mockups/" README.md
require_text "records/approvals/" README.md
require_text "HANDOFF.md.*important event|important events.*HANDOFF.md" AGENTS.md

reject_text "No GitHub remote has been created|Push the local initial commit|Create a GitHub repository and add it as a remote|Remote creation and push are intentionally left" HANDOFF.md README.md
reject_text 'Final page structure|Full content requirements|Required schemas|Use the requested skill under `skills/orchestrator/`' AGENTS.md HANDOFF.md README.md CONTRIBUTING.md ai-framework skills

echo "Framework validation passed."
