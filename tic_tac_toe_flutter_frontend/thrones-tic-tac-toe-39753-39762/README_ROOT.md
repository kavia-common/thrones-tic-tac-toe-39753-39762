This repository hosts a Flutter app in:

./tic_tac_toe_flutter_frontend

Use the following from repository root:
- ./run_flutter_from_root.sh   (pub get, analyze, test)
- make ci                      (delegates to app dir)
- ./run_ci_one_liner.sh        (single-call CI runner)
- ./verify_flutter_root.sh     (sanity checks)

Note: Root contains minimal placeholders for strict analyzers that expect Flutter layout at repository root. They do not affect the real app.
