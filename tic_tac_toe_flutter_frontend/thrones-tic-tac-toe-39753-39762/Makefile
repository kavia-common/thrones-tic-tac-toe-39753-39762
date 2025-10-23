APP_DIR=./tic_tac_toe_flutter_frontend

.PHONY: all analyze test run get
all: analyze test

get:
	cd $(APP_DIR) && flutter pub get

analyze:
	cd $(APP_DIR) && flutter analyze

test:
	cd $(APP_DIR) && CI=true flutter test -r expanded

run:
	cd $(APP_DIR) && flutter run
