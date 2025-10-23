To run Flutter from repository root, use:

cd "$(./echo_flutter_app_abs_path.sh)" && flutter pub get && flutter analyze && CI=true flutter test -r expanded
