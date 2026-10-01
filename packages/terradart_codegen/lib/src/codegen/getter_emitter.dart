import '../ir/resource_def.dart';
import 'constructor_params.dart';
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
/// - An `id` attribute → bare `id`. Special-cased by name so it is always
///   a getter (constructor-only `id` params do not create a field, so a
///   required create-time `id` can coexist with this getter).
/// - Every **pure computed-only** attribute (`Constraints.computedOnly`)
///   other than `id`/`name`/`kind`/`local_name` → a camelCase getter of its
///   rendered Dart type.
///
/// - Every **input** (a constructor argument, `optional + computed`
///   included) → `<camelCase>Ref` of its schema type (`scope_id` →
///   `scopeIdRef`), so another resource, an output or a constant reads what
///   the argument is set to without repeating the value. Skipped for a
///   write-only argument (Terraform cannot reference it) and when the name
///   is already a getter above (a computed-only `scope_id_ref`).
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
  // `id` is always a getter. A required create-time `id` constructor param
  // is not a field (`this.id`), so it does not collide with this getter.
  if (attrNames.contains('id')) {
    writeGetter('id', 'id', 'String');
  }
  final getters = <String>{'nameRef', 'kindRef', 'localNameRef', 'id'};
  for (final attr in def.root.attributes) {
    if (emitted.contains(attr.name)) continue;
    if (!attr.constraints.computedOnly) continue;
    final getter = snakeToDartIdent(attr.name);
    getters.add(getter);
    writeGetter(attr.name, getter, writeDartType(attr.type));
  }
  for (final attr in def.root.attributes) {
    if (emitted.contains(attr.name) || skipAttribute(attr)) continue;
    if (attr.constraints.writeOnly) continue;
    final getter = '${snakeToCamel(attr.name)}Ref';
    if (!_publicMember.hasMatch(getter) || !getters.add(getter)) continue;
    writeGetter(attr.name, getter, writeDartType(attr.type));
  }

  return buf.toString();
}

/// The Dart getter names declared in a hand-written `extraGetters` snippet
/// (e.g. `executionCount` from `TfRef<int> get executionCount =>`). These are
/// excluded from derivation so a hand-written getter (kept for a semantic
/// rename or a narrower type) shadows the derived one instead of colliding
/// with it.
Set<String> extraGetterNames(String? extraGetters) {
  if (extraGetters == null) return const {};
  return RegExp(
    r'\bget (\w+)',
  ).allMatches(extraGetters).map((m) => m.group(1)!).toSet();
}

final _publicMember = RegExp(r'^[a-z][A-Za-z0-9]*$');

/// The `ref` getter every resource wrapper [className] carries: the
/// `RefTo<className>` its reference-typed arguments take.
String emitResourceRefGetter(String className) =>
    '  /// A reference to this resource, for arguments typed\n'
    '  /// `RefTo<$className>`.\n'
    '  RefTo<$className> get ref => RefTo.of(this);\n';

/// The `principal` getter of a block with a computed `member` attribute
/// (`serviceAccount:<email>`), for IAM `member` / `members` arguments.
String emitPrincipalGetter({required bool data}) =>
    '  /// This identity as an IAM principal, for `member` / `members`.\n'
    '  IamPrincipal get principal =>\n'
    '      IamPrincipal.read(TfRef.${data ? 'data' : 'attribute'}<String>'
    "(this, 'member'));\n";

/// The `ref` getter of a data source that reads a [resourceType] resource
/// wrapped as [className]: arguments typed `RefTo<className>` take it like the
/// resource's own.
String emitDataSourceRefGetter(String resourceType, String className) =>
    '  /// A reference to the `$resourceType` this data source reads, for\n'
    '  /// arguments typed `RefTo<$className>`.\n'
    '  RefTo<$className> get ref =>\n'
    '      RefTo.read(this); // ignore: invalid_use_of_internal_member\n';
