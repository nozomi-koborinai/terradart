import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/resource_def.dart';
import 'naming.dart';

String emitFilePrivateSensitiveSet(
  ResourceDef def, {
  List<String>? extraSensitiveFields,
}) => _emit(
  def,
  constName: filePrivateSensitiveConstName(def.terraformType),
  extraSensitiveFields: extraSensitiveFields,
);

String emitSensitiveStaticSet(
  ResourceDef def, {
  List<String>? extraSensitiveFields,
}) => _emit(
  def,
  constName: sensitiveConstName(def.terraformType),
  extraSensitiveFields: extraSensitiveFields,
);

List<String> sensitiveFieldPaths(
  ResourceDef def, {
  List<String>? extraSensitiveFields,
}) {
  final names = <String>{};
  _collect(def.root.attributes, def.root.nestedBlocks, '', names);
  if (extraSensitiveFields != null) {
    names.addAll(extraSensitiveFields);
  }
  return names.toList()..sort();
}

String _emit(
  ResourceDef def, {
  required String constName,
  List<String>? extraSensitiveFields,
}) {
  final sorted = sensitiveFieldPaths(
    def,
    extraSensitiveFields: extraSensitiveFields,
  );
  final docComment = "/// Sensitive field paths for `${def.terraformType}`.\n";
  if (sorted.isEmpty) {
    return "${docComment}const Set<String> $constName = <String>{};";
  }
  final body = sorted.map((n) => "'$n'").join(', ');
  return "${docComment}const Set<String> $constName = <String>{$body};";
}

String filePrivateSensitiveConstName(String terraformType) =>
    '_${snakeToCamel(terraformType)}Sensitive';

String sensitiveConstName(String terraformType) =>
    '${snakeToCamel(terraformType)}Sensitive';

void _collect(
  List<Attribute> attrs,
  List<NestedBlockDef> nested,
  String prefix,
  Set<String> sink,
) {
  for (final a in attrs) {
    if (a.constraints.sensitive) {
      sink.add(prefix.isEmpty ? a.name : '$prefix.${a.name}');
    }
  }
  for (final n in nested) {
    final name = n.nesting == NestingMode.map ? '${n.name}.*' : n.name;
    final nextPrefix = prefix.isEmpty ? name : '$prefix.$name';
    _collect(n.block.attributes, n.block.nestedBlocks, nextPrefix, sink);
  }
}
