/// One `TfRef<T> get <name> => TfRef.attribute<T>(this, '<attr>')` getter.
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
  r'TfRef<(.+?)>\s+get\s+(\w+)\s*=>\s*TfRef\.attribute<[^(]*>\(\s*this\s*,\s*'
  "'([^']+)'",
  dotAll: true,
);

/// Extracts every output-attribute getter from a wrapper file. Both the
/// derived getters (`getter_emitter.dart`) and hand-written `extraGetters`
/// use the same `TfRef.attribute<T>(this, 'attr')` idiom, so one scan covers
/// both. Order is declaration order.
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
