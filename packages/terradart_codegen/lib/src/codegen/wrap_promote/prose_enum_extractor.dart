import '../../ir/attribute.dart';
import '../../ir/nested_block.dart';
import '../../ir/resource_def.dart';

class ProseEnumExtractor {
  const ProseEnumExtractor();

  static final RegExp _possibleValuesPattern = RegExp(
    r'Possible values:\s*([^.\n]+?)(?:\.|\n|$)',
  );

  static final RegExp _enumTokenPattern = RegExp(
    r'^[A-Za-z][A-Za-z0-9_]{0,39}$',
  );

  Map<String, List<String>> extract(ResourceDef def) {
    final result = <String, List<String>>{};
    _walk(def.root.attributes, def.root.nestedBlocks, '', result);
    return result;
  }

  void _walk(
    List<Attribute> attrs,
    List<NestedBlockDef> nested,
    String prefix,
    Map<String, List<String>> sink,
  ) {
    for (final a in attrs) {
      final desc = a.description;
      if (desc == null) continue;
      final values = _extractValues(desc);
      if (values == null) continue;
      final key = prefix.isEmpty ? a.name : '$prefix.${a.name}';
      sink[key] = values;
    }
    for (final n in nested) {
      final nextPrefix = prefix.isEmpty ? n.name : '$prefix.${n.name}';
      _walk(n.block.attributes, n.block.nestedBlocks, nextPrefix, sink);
    }
  }

  List<String>? _extractValues(String desc) {
    final match = _possibleValuesPattern.firstMatch(desc);
    if (match == null) return null;
    final raw = match.group(1) ?? '';
    final tokens = raw
        .split(',')
        .map((s) => s.trim())
        .where((s) => s.isNotEmpty)
        .toList();
    if (tokens.length < 2) return null;
    for (final t in tokens) {
      if (!_enumTokenPattern.hasMatch(t)) return null;
    }
    return tokens;
  }
}
