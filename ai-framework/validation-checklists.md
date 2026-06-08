# Validation Checklists

## Production Readiness

- [ ] Requirements satisfied
- [ ] Approved scope followed
- [ ] Human approved final UI design
- [ ] Static mockup or equivalent visual preview approved before implementation when required
- [ ] Rendered UI matches approved frontend design direction
- [ ] No unrelated changes
- [ ] No dead code
- [ ] No unapproved placeholders
- [ ] Responsive layout tested
- [ ] Accessibility basics passed
- [ ] SEO basics passed
- [ ] Performance acceptable
- [ ] Metadata included
- [ ] Build passes
- [ ] Lint passes
- [ ] Type checks pass
- [ ] Tests pass where present
- [ ] No console errors
- [ ] No broken links
- [ ] Keyboard support, focus states, hit targets, forms, loading/error states, reduced motion, image dimensions, metadata, and browser UI theming checked where relevant
- [ ] No sensitive data exposed
- [ ] Production deployment completed
- [ ] Production page verified without known bugs
- [ ] `HANDOFF.md` updated
- [ ] Deployment instructions included

## Responsive Viewports

- Mobile: 375px wide
- Large mobile: 430px wide
- Tablet: 768px wide
- Desktop: 1280px wide
- Wide desktop: 1440px or wider

## Accessibility Basics

- Semantic landmarks
- Logical heading order
- Keyboard navigation
- Visible focus states
- Form labels
- Correct link versus button semantics
- Hit targets: at least 24px desktop and 44px mobile where practical
- Browser zoom is not disabled
- Alt text for meaningful images
- Contrast for text and controls
- Reduced motion support where motion exists

## Interface Quality Basics

- Loading, empty, sparse, dense, and error states are designed where relevant
- Forms include labels, autocomplete where appropriate, validation, and clear error messages
- Motion avoids `transition: all` and respects reduced-motion preferences
- Images include explicit dimensions where possible to reduce layout shift
- Metadata, `theme-color`, and `color-scheme` match the page when relevant
- Navigation uses links; commands use buttons

## SEO Basics

- Unique title
- Meta description
- One clear H1
- Logical heading hierarchy
- Crawlable primary content
- Descriptive links
- Open Graph metadata when relevant
- Canonical URL when relevant
