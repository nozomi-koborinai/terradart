# Changelog

## Unreleased

First release, in lockstep with the workspace at 0.33.0.

- The `terradart` command: `synth` runs the entry point (`bin/infra.dart`, or `terradart.entrypoint` in `pubspec.yaml`); `plan`, `apply` and `destroy` synthesize, then run `init` and the engine in the directory it wrote; `outputs` writes the define file from the applied state without planning or applying; `engine` prints the binary it runs.
- The engine is the first of `--engine-path` / `--engine` (or `engine_path` / `engine` in `pubspec.yaml`), the engine `.terradart/engines.json` records for the state, `tofu` on `PATH`, `terraform` on `PATH`, and OpenTofu 1.13.1 downloaded from its GitHub release — checked against the SHA-256 the package ships, and cached in the user cache directory — on Linux, macOS and Windows, amd64 and arm64. Running a state with another engine than the one that applied it, or an older one, warns first.
- Environments come from the entry point: `--env <name>` names a member of the enum `bin/infra.dart` passes to `runEnvironments`, and the Terraform directory, workspace and partial backend configuration are the ones it declares. An unknown name lists the known ones.
- `apply` and `outputs` write the Stack's `addDartDefineOutput()` to `.terradart/dart_defines.json` (`.terradart/dart_defines.<env>.json` with `--env`; `--define-output`, `--define-file` or `terradart.dart_defines` in `pubspec.yaml` pick another), gitignore `.terradart/`, and print the `flutter run` / `flutter build` line that reads it.
