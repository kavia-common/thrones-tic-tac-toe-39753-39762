# Environment Configuration

This app does not require environment variables to run locally.
If you need environment-specific values in the future:

1) Copy .env.example to .env in this directory.
2) Add keys/values as needed.
3) Use a package like `flutter_dotenv` to read them at runtime.

Notes
- Do NOT commit secrets. Use CI/CD secret management for production values.
- The app already functions without .env for local development.
