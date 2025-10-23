# Accessibility Notes

- Tiles and controls include Semantics with labels, hints, and values.
- Status text and board semantics use `liveRegion: true` to announce changes.
- Result banner announces winner/draw as a live region.
- Reset controls include tooltip and semantics hints (with keyboard shortcut hints).
- Winning tiles have an animated pulse (WinPulse) with semantics label "Winning tile highlight".
- Animations are subtle (ScaleTransition + FadeTransition) and run under 250ms to minimize motion sensitivity.
