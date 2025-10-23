# CI Usage

Flutter app directory:
- tic_tac_toe_flutter_frontend/

Tools failing to auto-detect the Flutter project root should use these scripts from repository root:
- ./ci_analyze_and_test.sh   # resolves Flutter from env/PATH; runs pub get + analyze + test in app
- ./analyze_with_flutter.sh  # analyze only
- ./test_with_flutter.sh     # tests only
- ./ci_full_pipeline.sh      # full pipeline (pub get, analyze, test, optional android build)

These scripts explicitly target `tic_tac_toe_flutter_frontend/` so CI does not need to infer the Flutter root.
