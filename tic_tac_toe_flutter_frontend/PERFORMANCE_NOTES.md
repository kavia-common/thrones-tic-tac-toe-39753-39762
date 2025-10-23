# Performance Notes

- The app pre-caches commonly used assets (X and O icons) after the first frame to avoid first-use jank.
- warmupImageCache() complements precacheImage by ensuring the cache is primed for frequent assets.
- Animations are short (<= 250ms) and use easeOut curves to remain responsive and lightweight.
- The board uses a non-scrollable GridView and constrained sizes to prevent layout thrash on smaller screens.
