import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/resource_def.dart';
import 'naming.dart';

/// Emits the **top-level** sensitive-field constant for a resource.
///
/// Pre Plan 5.X, this emitter produced a **public** const sibling of the
/// `$Resource` abstract class inside `<r>.schema.dart` (e.g.
/// `const Set<String> googleSecretManagerSecretVersionSensitive = {...};`).
/// The wrapper imported it via `show <r>Sensitive` and exposed it through
/// the `$sensitiveFields` getter.
///
/// Plan 5.X (v0.5.0-dev) retires the entire `.schema.dart` Layer 1 — the
/// const therefore moves **inline into the wrapper file** as a file-private
/// const (`_<r>Sensitive`). The data flow is unchanged
/// (`IR → const Set → $sensitiveFields → encoder masking`); only the
/// physical location and visibility of the const move.
///
/// Two emit helpers are exposed:
///
/// - [emitFilePrivateSensitiveSet] — Plan 5.X canonical. Emits
///   `const Set<String> _<r>Sensitive = <String>{...};` for the wrapper
///   to drop at the top of the file. Used by [WrapperEmitter].
/// - [emitSensitiveStaticSet] — pre-Plan-5.X public-const form
///   (`const Set<String> <r>Sensitive = ...;`). No live consumer in
///   Plan 5.X (the only caller was [AbstractClassEmitter], itself a
///   Plan 5.X no-op), kept exported only so the existing unit test that
///   pins its behavior continues to compile during the transition.
///
/// Output (file-private form):
/// ```dart
/// /// Sensitive field paths for `google_secret_manager_secret_version`.
/// const Set<String> _googleSecretManagerSecretVersionSensitive = <String>{
///   'secret_data',
///   'secret_data_wo',
/// };
/// ```
///
/// The keys are Terraform JSON snake_case names, dotted for nested fields.
/// The set is alphabetically sorted for deterministic golden tests.
///
/// [extraSensitiveFields] (optional) lists additional paths the curator
/// wants masked even though the provider schema does not flag them as
/// sensitive — e.g. `metadata_startup_script` on `google_compute_instance`
/// frequently holds credentials in practice. Entries are merged with the
/// schema-derived set; duplicates collapse via the underlying Set.
String emitFilePrivateSensitiveSet(
  ResourceDef def, {
  List<String>? extraSensitiveFields,
}) =>
    _emit(
      def,
      constName: filePrivateSensitiveConstName(def.terraformType),
      extraSensitiveFields: extraSensitiveFields,
    );

/// Pre-Plan-5.X public-const form. Returned source is identical in
/// structure to [emitFilePrivateSensitiveSet] but the const name has no
/// leading underscore. Kept for transitional compatibility only —
/// Plan 5.X has no live consumer.
String emitSensitiveStaticSet(
  ResourceDef def, {
  List<String>? extraSensitiveFields,
}) =>
    _emit(
      def,
      constName: sensitiveConstName(def.terraformType),
      extraSensitiveFields: extraSensitiveFields,
    );

String _emit(
  ResourceDef def, {
  required String constName,
  List<String>? extraSensitiveFields,
}) {
  final names = <String>{};
  _collect(def.root.attributes, def.root.nestedBlocks, '', names);
  if (extraSensitiveFields != null) {
    names.addAll(extraSensitiveFields);
  }
  final sorted = names.toList()..sort();
  final docComment = "/// Sensitive field paths for `${def.terraformType}`.\n";
  if (sorted.isEmpty) {
    return "${docComment}const Set<String> $constName = <String>{};";
  }
  final body = sorted.map((n) => "'$n'").join(', ');
  return "${docComment}const Set<String> $constName = <String>{$body};";
}

/// Returns the Dart identifier for the file-private sensitive const of
/// [terraformType]. e.g. `google_pubsub_topic` →
/// `_googlePubsubTopicSensitive`.
///
/// Naming pattern: a leading underscore (file-private) + the camelCase
/// resource type + `Sensitive` suffix. The leading underscore is the
/// load-bearing Plan 5.X change vs [sensitiveConstName] — the const is
/// now scoped to the single wrapper file rather than re-exported across
/// packages.
String filePrivateSensitiveConstName(String terraformType) =>
    '_${snakeToCamel(terraformType)}Sensitive';

/// Returns the **public** Dart identifier for the sensitive const of
/// [terraformType]. Pre-Plan-5.X naming pattern; kept exported because
/// the existing unit test for the public-const emit form references it.
///
/// Naming pattern: full Terraform resource type in camelCase + `Sensitive`
/// suffix.
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
    final nextPrefix = prefix.isEmpty ? n.name : '$prefix.${n.name}';
    _collect(n.block.attributes, n.block.nestedBlocks, nextPrefix, sink);
  }
}
