import '../ir/resource_def.dart';
import 'dart_type_writer.dart';
import 'naming.dart';

/// Emits derived output-attribute getters for a [ResourceDef].
///
/// Phase A3: output getters used to live entirely in each override's
/// hand-written `extraGetters` axis. This emitter derives the mechanical
/// ones from the IR so they converge across agents/models:
///
/// - A `name` attribute → `nameRef` (the bare `name` getter would collide
///   with the constructor parameter; `String` matches every Terraform name).
/// - A `kind` attribute → `kindRef` (bare `kind` would override
///   [Resource.kind]'s `ResourceKind` return type and fail analysis).
/// - A `local_name` attribute → `localNameRef` (bare `localName` would
///   override [Resource.localName]'s `String` return type and fail analysis;
///   GKE on-prem / GDC cluster CR names hit this).
/// - An `id` attribute → bare `id`. Special-cased by name (parallel to
///   `skipAttribute`'s `isIdAttribute` check), so it is exposed as a getter
///   regardless of how its computed/optional flags would otherwise classify it.
/// - Every **pure computed-only** attribute (`Constraints.computedOnly`)
///   other than `id`/`name`/`kind`/`local_name` → a camelCase getter of its
///   rendered Dart type.
///
/// `optional + computed` attributes are intentionally skipped: they are
/// settable constructor inputs, and exposing a reference getter for them is
/// a genuine judgment call that stays in `extraGetters`.
///
/// The Google identity convention (`name→nameRef`, `id→id`) is encoded here.
/// A multi-provider generalisation (e.g. AWS `arn→arnRef`) is deferred until
/// a second provider adapter exists.
///
/// [excludeNames] is the set of Dart getter names already hand-written in the
/// override's `extraGetters`. Any derived getter whose Dart name is in this set
/// is skipped, so the hand-written one wins (no `duplicate_definition`). This
/// lets an override KEEP a narrower attribute type than the schema implies
/// (e.g. `TfRef<int> get executionCount` where the schema's number widens to
/// `TfRef<num>`) without colliding with derivation.
///
/// Output is **unformatted** Dart source (two-space indented, one blank line
/// after each getter); the caller feeds the whole wrapper through
/// `dart_style`. Returns an empty string when nothing is derivable.
String emitDerivedOutputGetters(
  ResourceDef def, {
  Set<String> excludeNames = const {},
}) {
  final buf = StringBuffer();
  final attrNames = {for (final a in def.root.attributes) a.name};
  final emitted = <String>{};

  void writeGetter(String snake, String getter, String dartType) {
    emitted.add(snake);
    if (excludeNames.contains(getter)) return;
    buf
      ..writeln('  /// Reference to `$snake` attribute.')
      ..writeln(
        "  TfRef<$dartType> get $getter => "
        "TfRef.attribute<$dartType>(this, '$snake');",
      )
      ..writeln();
  }

  if (attrNames.contains('name')) {
    writeGetter('name', 'nameRef', 'String');
  }
  if (attrNames.contains('kind')) {
    writeGetter('kind', 'kindRef', 'String');
  }
  if (attrNames.contains('local_name')) {
    writeGetter('local_name', 'localNameRef', 'String');
  }
  // `id` is special-cased by name, parallel to `skipAttribute`'s isIdAttribute
  // check: always a getter, never a constructor arg, whatever its flags say.
  if (attrNames.contains('id')) {
    writeGetter('id', 'id', 'String');
  }
  for (final attr in def.root.attributes) {
    if (emitted.contains(attr.name)) continue;
    if (!attr.constraints.computedOnly) continue;
    writeGetter(attr.name, snakeToCamel(attr.name), writeDartType(attr.type));
  }

  return buf.toString();
}
