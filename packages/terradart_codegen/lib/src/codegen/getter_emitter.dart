import '../ir/attribute.dart';
import '../ir/resource_def.dart';
import 'constructor_params.dart';
import 'dart_type_writer.dart';
import 'naming.dart';

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

const _identity = ['name', 'kind', 'local_name', 'id'];

String outputGetterName(String snake, {Set<String> taken = _wrapperMembers}) {
  final camel = snakeToCamel(snake);
  return safeDartIdentifier(camel) != camel || taken.contains(camel)
      ? '${camel}Attr'
      : camel;
}

// 'override' is included because a Dart member named override shadows @override.
const Set<String> _wrapperMembers = {
  'argMap',
  'dependsOn',
  'kind',
  'lifecycle',
  'localName',
  'provider',
  'ref',
  'sensitiveFields',
  'terraformType',
  'tfAddress',
  'timeouts',
  'hashCode',
  'noSuchMethod',
  'override',
  'runtimeType',
  'toString',
};

Set<String> extraGetterNames(String? extraGetters) {
  if (extraGetters == null) return const {};
  return RegExp(
    r'\bget (\w+)',
  ).allMatches(extraGetters).map((m) => m.group(1)!).toSet();
}

final _publicMember = RegExp(r'^[a-z][A-Za-z0-9]*$');

String emitResourceRefGetter(String className) =>
    '  /// A reference to this resource, for arguments typed\n'
    '  /// `RefTo<$className>`.\n'
    '  RefTo<$className> get ref => RefTo.of(this);\n';

String emitPrincipalGetter() =>
    '  /// This identity as an IAM principal, for `member` / `members`.\n'
    '  IamPrincipal get principal =>\n'
    "      IamPrincipal.arg(TfRef.attribute<String>(this, 'member'));\n";

String emitDataSourceRefGetter(String resourceType, String className) =>
    '  /// A reference to the `$resourceType` this data source reads, for\n'
    '  /// arguments typed `RefTo<$className>`.\n'
    '  RefTo<$className> get ref =>\n'
    '      RefTo.read(this); // ignore: invalid_use_of_internal_member\n';
