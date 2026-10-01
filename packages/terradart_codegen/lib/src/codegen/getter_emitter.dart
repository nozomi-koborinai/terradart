import '../ir/attribute.dart';
import '../ir/resource_def.dart';
import 'constructor_params.dart';
import 'dart_type_writer.dart';
import 'naming.dart';

/// Emits derived output-attribute getters for a [ResourceDef].
///
/// Every attribute another block, an output or a constant can read gets a
/// getter named after it (`scope_id` → `scopeId`) of its schema type — the
/// pure computed-only ones and every input (a constructor argument,
/// `optional + computed` included) alike; a write-only argument has none,
/// since Terraform cannot reference it. A getter is a `TfRef`, which is a
/// `TfArg`, so it fills an argument of its type as is: `pushEndpoint:
/// api.uri`. `name`, `kind`, `local_name` and `id` are always
/// `TfRef<String>` and come first, whatever the schema says.
///
/// A name that would clash with a member every wrapper already has — one of
/// `Resource`'s (`localName`, `kind`, `provider`, `lifecycle`, ...), the
/// `ref` getter, the `principal` getter when [principal] is set, an `Object`
/// member, the `@override` annotation — or that is a Dart reserved word
/// takes an `Attr` suffix:
/// `kindAttr`, `providerAttr`, `defaultAttr`.
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
  bool principal = false,
}) {
  final buf = StringBuffer();
  final taken = {..._wrapperMembers, if (principal) 'principal'};

  void writeGetter(String snake, String getter, String dartType) {
    if (excludeNames.contains(getter)) return;
    buf
      ..writeln('  /// Reference to `$snake` attribute.')
      ..writeln(
        "  TfRef<$dartType> get $getter => "
        "TfRef.attribute<$dartType>(this, '$snake');",
      )
      ..writeln();
  }

  final emitted = <String>{};
  void derive(Attribute attr) {
    if (!emitted.add(attr.name)) return;
    final getter = outputGetterName(attr.name, taken: taken);
    if (!_publicMember.hasMatch(getter) || !taken.add(getter)) return;
    final dartType = _identity.contains(attr.name)
        ? 'String'
        : writeDartType(attr.type);
    writeGetter(attr.name, getter, dartType);
  }

  final attrs = def.root.attributes;
  for (final name in _identity) {
    for (final attr in attrs) {
      if (attr.name == name) derive(attr);
    }
  }
  for (final attr in attrs) {
    if (attr.constraints.computedOnly) derive(attr);
  }
  for (final attr in attrs) {
    if (skipAttribute(attr) || attr.constraints.writeOnly) continue;
    derive(attr);
  }

  return buf.toString();
}

/// Attributes that always get a `TfRef<String>` getter, ahead of the rest.
const _identity = ['name', 'kind', 'local_name', 'id'];

/// The getter name of the [snake] attribute: its camelCase form, with an
/// `Attr` suffix when that is a Dart reserved word or in [taken] (a member
/// the wrapper already has).
String outputGetterName(String snake, {Set<String> taken = _wrapperMembers}) {
  final camel = snakeToCamel(snake);
  return safeDartIdentifier(camel) != camel || taken.contains(camel)
      ? '${camel}Attr'
      : camel;
}

/// The members every generated wrapper has besides its attribute getters —
/// `Resource`'s, the `ref` getter, `Object`'s — and `override`, which a
/// getter of that name would shadow as the `@override` annotation.
const Set<String> _wrapperMembers = {
  'argMap',
  'dependsOn',
  'kind',
  'lifecycle',
  'localName',
  'provider',
  'ref',
  'sensitiveFields',
  'supportsDeletionProtection',
  'terraformType',
  'tfAddress',
  'timeouts',
  'hashCode',
  'noSuchMethod',
  'override',
  'runtimeType',
  'toString',
};

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
    '      IamPrincipal.arg(TfRef.${data ? 'data' : 'attribute'}<String>'
    "(this, 'member'));\n";

/// The `ref` getter of a data source that reads a [resourceType] resource
/// wrapped as [className]: arguments typed `RefTo<className>` take it like the
/// resource's own.
String emitDataSourceRefGetter(String resourceType, String className) =>
    '  /// A reference to the `$resourceType` this data source reads, for\n'
    '  /// arguments typed `RefTo<$className>`.\n'
    '  RefTo<$className> get ref =>\n'
    '      RefTo.read(this); // ignore: invalid_use_of_internal_member\n';
