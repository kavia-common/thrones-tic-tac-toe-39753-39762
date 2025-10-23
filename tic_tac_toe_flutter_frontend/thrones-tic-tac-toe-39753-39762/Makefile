# Root-level Makefile to delegate into the Flutter app directory.
APP_DIR := tic_tac_toe_flutter_frontend

.PHONY: help analyze test clean ci all

help:
	@echo "Available targets:"
	@echo "  make analyze  - Run flutter analyze in $(APP_DIR)"
	@echo "  make test     - Run flutter tests in $(APP_DIR)"
	@echo "  make clean    - Run flutter clean in $(APP_DIR)"
	@echo "  make ci       - pub get, analyze, and test in $(APP_DIR)"
	@echo "  make all      - Same as ci"

analyze:
	@cd $(APP_DIR) && flutter pub get && flutter analyze

test:
	@cd $(APP_DIR) && CI=true flutter test -r expanded

clean:
	@cd $(APP_DIR) && flutter clean

ci:
	@cd $(APP_DIR) && flutter pub get && flutter analyze && CI=true flutter test -r expanded

all: ci
