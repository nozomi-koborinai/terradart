/// Three-line header prepended to every file emitted by `terradart wrap`.
///
/// - Line 1 (`// GENERATED FILE - DO NOT EDIT`) gates the `--force`-less
///   overwrite path (E401 refuses to clobber files that lack this marker)
///   and feeds the `wrap_check` CI job (Wave 5).
/// - Line 2 points readers at the regen command.
/// - Line 3 suppresses `prefer_relative_imports` on the file: Wave 0 froze
///   the handwritten baseline with `package:terradart_google/...` self-imports,
///   which conflicts with the project's per-package `prefer_relative_imports`
///   lint. Scoping the ignore to generated files preserves the lint for
///   hand-written code.
const String generatedFileHeader = '// GENERATED FILE - DO NOT EDIT\n'
    '// Run `terradart wrap` to regenerate.\n'
    '// ignore_for_file: prefer_relative_imports\n';
