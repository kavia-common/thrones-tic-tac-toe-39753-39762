.PHONY: analyze test format

analyze:
	flutter pub get
	flutter analyze

test:
	CI=true flutter test -r expanded

format:
	dart format --fix lib test
