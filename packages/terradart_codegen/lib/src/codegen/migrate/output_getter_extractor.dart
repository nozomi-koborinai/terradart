final class ExtractedGetter {
  const ExtractedGetter({
    required this.tfName,
    required this.dartName,
    required this.dartType,
  });

  final String tfName;
  final String dartName;
  final String dartType;
}

final RegExp _getter = RegExp(
  r'TfRef<([\w\s<>,?]+?)>\s+get\s+(\w+)\s*=>\s*TfRef\.attribute<[^(]*>\(\s*this\s*,\s*'
  "'([^']+)'",
);

List<ExtractedGetter> extractOutputGetters(String source) {
  return [
    for (final m in _getter.allMatches(source))
      ExtractedGetter(
        tfName: m.group(3)!,
        dartName: m.group(2)!,
        dartType: m.group(1)!.replaceAll(RegExp(r'\s+'), ' ').trim(),
      ),
  ];
}
