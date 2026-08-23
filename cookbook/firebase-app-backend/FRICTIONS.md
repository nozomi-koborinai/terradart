# firebase-app-backend — FRICTIONS

Findings and design notes from authoring the Firebase + Google Cloud (GA + Beta) composite recipe.

## Summary

- **Provider partitioning**: TerraDart's `GoogleBetaProvider` + `terradart_google_beta` resource wrapper design emits `provider: "google-beta"` automatically in Terraform JSON, making composition with `GoogleProvider` + `terradart_google` seamless in a single `Stack`.
- **Dependency chain**: `google_firebase_project` requires `firebase.googleapis.com` enabled, and downstream Firebase apps / Firestore databases depend on `google_firebase_project`. Explicit `dependsOn` wiring ensures Terraform creates them in the correct sequence.
