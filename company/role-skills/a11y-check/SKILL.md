---
name: a11y-check
description: Accessibility audit against WCAG 2.1 AA — automated scan plus manual keyboard, screen-reader, contrast and zoom checks — with criterion references. Use for "a11y check", "accessibility", before shipping UI.
---

# Accessibility Check (WCAG 2.1 AA)

Output: `A11Y-REPORT.md`. Every finding cites the WCAG success criterion (e.g. 1.4.3 Contrast).

## Automated (catches about a third of issues)
- `npx @axe-core/cli <url>` or Lighthouse accessibility (`npx lighthouse <url> --only-categories=accessibility`). If not runnable, say so.

## Manual (required)
- **Keyboard:** reach and operate everything with Tab/Shift+Tab/Enter/Space/Esc; visible focus; no traps (2.1.1, 2.1.2, 2.4.7).
- **Screen reader** (VoiceOver: Cmd+F5): headings, landmarks, form labels, button names, status messages announced (1.3.1, 4.1.2, 4.1.3).
- **Contrast:** text ≥ 4.5:1, large text/UI ≥ 3:1 (1.4.3, 1.4.11).
- **Zoom/reflow:** 200% zoom and 320px width without loss (1.4.4, 1.4.10).
- **Forms:** labels, error identification and suggestions (3.3.1–3.3.3).
- **Media/motion:** alt text (1.1.1), no auto-playing motion without control (2.2.2).
- **Language:** page `lang` set; Thai/English mixed content marked where relevant (3.1.1, 3.1.2).

## Output
`| Criterion | Level | Issue | Where | How to fix |` + automated tool and version used.
