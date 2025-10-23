# Android Build Prerequisites

Environment variables:
- ANDROID_HOME or ANDROID_SDK_ROOT must be set
- Java (JDK 17+) available on PATH

Validate environment:
- ./check_env.sh

Build from app root:
- flutter pub get
- flutter build apk --debug

Build from repository root:
- ./ci_build_android.sh
- ./flutterw build apk --debug
