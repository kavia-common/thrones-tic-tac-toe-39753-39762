Gradle wrapper notes

- Gradle wrapper distribution is configured in gradle-wrapper.properties.
- Flutter manages Gradle invocation; use Flutter commands instead of running Gradle directly.
- To update the wrapper in a non-Flutter project you would run:
  ./gradlew wrapper --gradle-version <version>
- For this Flutter project, prefer:
  flutter clean && flutter pub get && flutter build apk
