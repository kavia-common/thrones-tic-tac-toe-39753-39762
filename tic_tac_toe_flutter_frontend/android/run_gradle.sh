#!/usr/bin/env bash
# Run Android Gradle wrapper from this android/ directory.
# Examples:
#   ./run_gradle.sh :app:assembleDebug
#   ./run_gradle.sh :app:assembleRelease
set -euo pipefail

cd "$(dirname "$0")"

if [ ! -x "./gradlew" ]; then
  echo "Error: gradlew not found." >&2
  exit 2
fi

./gradlew "$@"
