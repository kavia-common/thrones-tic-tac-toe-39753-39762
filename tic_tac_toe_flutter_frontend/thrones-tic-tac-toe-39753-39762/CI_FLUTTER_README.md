# CI Flutter Pointer

Use the root-level Makefile targets to operate on the Flutter app located at:
- tic_tac_toe_flutter_frontend/

Common commands:
- make bootstrap
- make analyze
- make test
- make build-apk

These commands change into the app directory and run the appropriate Flutter tasks, ensuring CI can determine the project root and execute successfully.
