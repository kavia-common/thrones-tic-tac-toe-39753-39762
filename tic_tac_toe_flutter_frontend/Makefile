.PHONY: all get analyze test run clean

all: get analyze test

get:
	flutter pub get

analyze:
	flutter analyze

test:
	CI=true flutter test -r expanded

run:
	flutter run

clean:
	flutter clean
