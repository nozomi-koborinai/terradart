/// Renders `_provider_version.g.dart`: the provider release a lane's
/// wrappers were generated from (`<source>/provider_version.txt`).
///
/// A package that pins its provider exactly (`terradart_aws`,
/// `terradart_cloudflare`) reads its version constraint from this constant,
/// so a schema bump moves the pin together with the regenerated wrappers
/// and no hand-written file carries a copy. Unformatted; the wrap pipeline
/// formats it like every other emitted file.
String providerVersionSource(String version) {
  final literal = version
      .replaceAll(r'\', r'\\')
      .replaceAll("'", r"\'")
      .replaceAll(r'$', r'\$');
  return '// GENERATED FILE - DO NOT EDIT\n'
      '// Run `terradart wrap` to regenerate.\n'
      '\n'
      '/// The provider release this package was generated from.\n'
      "const String terradartProviderVersion = '$literal';\n";
}
