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
