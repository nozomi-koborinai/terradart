import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/resource_def.dart';
import 'naming.dart';

/// Emits the **top-level** sensitive-field constant for a resource.
///
/// Output looks like:
/// ```dart
/// /// Sensitive field paths for `google_secret_manager_secret_version`.
/// const Set<String> googleSecretManagerSecretVersionSensitive = {
///   'secret_data',
///   'secret_data_wo',
/// };
/// ```
///
/// **Why top-level (not a class member):** schemantic 0.1.3's `SchemaGenerator`
/// scans every member of an `@Schema`-annotated abstract class and treats them
/// as schema fields. A `static const Set<String> $sensitive` member became a
/// required constructor argument (and an invalid `'$sensitive'` map key with
/// broken interpolation). Moving the set to a sibling top-level const keeps
/// schemantic blind to it while preserving the lookup mechanism for
/// factories — they now read [sensitiveConstName] instead of `$Foo.$sensitive`.
///
/// The keys are Terraform JSON snake_case names, dotted for nested fields.
/// The set is alphabetically sorted for deterministic golden tests.
String emitSensitiveStaticSet(ResourceDef def) {
  final names = <String>[];
  _collect(def.root.attributes, def.root.nestedBlocks, '', names);
  names.sort();
  final constName = sensitiveConstName(def.terraformType);
  final docComment = "/// Sensitive field paths for `${def.terraformType}`.\n";
  if (names.isEmpty) {
    return "${docComment}const Set<String> $constName = <String>{};";
  }
  final body = names.map((n) => "'$n'").join(', ');
  return "${docComment}const Set<String> $constName = <String>{$body};";
}

/// Returns the Dart identifier for the top-level sensitive const of
/// [terraformType]. e.g. `google_pubsub_topic` →
/// `googlePubsubTopicSensitive`.
///
/// Naming pattern: full Terraform resource type in camelCase + `Sensitive`
/// suffix. The full prefix (including the `google` provider segment) keeps
/// constants from colliding when multiple provider packages are imported in
/// one library.
String sensitiveConstName(String terraformType) =>
    '${snakeToCamel(terraformType)}Sensitive';

void _collect(
  List<Attribute> attrs,
  List<NestedBlockDef> nested,
  String prefix,
  List<String> sink,
) {
  for (final a in attrs) {
    if (a.constraints.sensitive) {
      sink.add(prefix.isEmpty ? a.name : '$prefix.${a.name}');
    }
  }
  for (final n in nested) {
    final nextPrefix = prefix.isEmpty ? n.name : '$prefix.${n.name}';
    _collect(n.block.attributes, n.block.nestedBlocks, nextPrefix, sink);
  }
}
