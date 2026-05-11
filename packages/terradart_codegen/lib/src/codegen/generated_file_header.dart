/// Two-line header prepended to every file emitted by `terradart wrap`.
///
/// The leading marker (`// GENERATED FILE - DO NOT EDIT`) gates the
/// `--force`-less overwrite path in Wave 2a (refusing to clobber a file
/// that lacks this marker, error code E401) and feeds the `wrap_check`
/// CI job that lands in Wave 5.
const String generatedFileHeader = '// GENERATED FILE - DO NOT EDIT\n'
    '// Run `terradart wrap` to regenerate.\n';
