#!/usr/bin/env bash
set -euo pipefail
dart "$(dirname "$0")/analyze.dart"
