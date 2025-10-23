# Platforms

This project currently includes Android and Web scaffolding.
To add more platforms locally:
- flutter create --platforms=ios,macos,linux,windows .

CI note:
Some analyzers detect Flutter project roots when at least one platform dir (android/ios/web) exists. Android is present; web has been added.
