# Flutter Root Pointer

Some CI and analysis tools require a Flutter project to exist at the workspace root.
Use the wrapper at:

- flutter_wrapper/

It contains a minimal pubspec to allow discovery and a script to delegate operations
to the actual app:

Quick start:
- cd flutter_wrapper
- flutter pub get
- ./run_from_wrapper.sh
