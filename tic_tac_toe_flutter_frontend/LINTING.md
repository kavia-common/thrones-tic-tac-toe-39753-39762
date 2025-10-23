Linting and code style

- The project uses flutter_lints via analysis_options.yaml.
- Guidelines:
  - Prefer const constructors where possible.
  - Use withAlpha() for color transparency.
  - Avoid context usage after await in async functions.
  - Keep widgets small and composable; add doc comments for public APIs.
- Run lints:
  flutter analyze
