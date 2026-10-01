import 'naming.dart';

/// Emits a free-standing Terraform enum declaration.
///
/// The enum suffix is always derived from the resource type's short name
/// (without the `google_` prefix, e.g. `PubsubTopic`) plus the field's leaf
/// name in PascalCase. See [enumName] in `naming.dart`.
String emitEnumDeclaration(EnumName name) {
  final words = _splitPascalWords(name.dartName);
  final resource = words.length >= 2
      ? words.sublist(0, words.length - 1).join(' ')
      : name.dartName;
  final leaf = name.fieldPath.split('.').last;
  return renderTerraformEnum(
    doc: '$resource enum for `$leaf`.',
    name: name.dartName,
    members: name.dartMembers,
    rawValues: name.rawValues,
  );
}

/// Renders a Terraform enum: an extension type over `TfArg<String>` whose
/// values are `static const` members, so a parameter of the enum type takes
/// `.member` and the `TfArg` escape hatches (`.variable(...)`,
/// `.expression(...)`, `.arg(...)`) through the same dot shorthand.
///
/// Every enum the wrappers declare — derived or hand-written in a `prelude`
/// — has exactly this shape; `EnumExtractor` reads it back.
String renderTerraformEnum({
  required String doc,
  required String name,
  required List<String> members,
  required List<String> rawValues,
}) {
  final buf = StringBuffer()
    ..writeln('/// $doc')
    ..writeln(
      'extension type const $name._(TfArg<String> _) '
      'implements TfArg<String> {',
    );
  buf
    ..writeln('  $name.variable(String name) : this._(TfArg.variable(name));')
    ..writeln(
      '  $name.expression(String template) '
      ': this._(TfArg.expression(template));',
    )
    ..writeln('  const $name.arg(TfArg<String> arg) : this._(arg);')
    ..writeln();
  for (var i = 0; i < members.length; i++) {
    buf.writeln(
      "  static const ${members[i]} = "
      "$name._(TfArgLiteral('${dartSingleQuotedBody(rawValues[i])}'));",
    );
  }
  buf
    ..writeln()
    ..writeln('  static const List<$name> values = [${members.join(', ')}];')
    ..writeln('}');
  return buf.toString();
}

String writeEnumDartType(EnumName name) => name.dartName;

List<String> _splitPascalWords(String s) {
  final out = <String>[];
  final buf = StringBuffer();
  for (var i = 0; i < s.length; i++) {
    final ch = s[i];
    final isUpper = ch.toUpperCase() == ch && ch != ch.toLowerCase();
    if (isUpper && buf.isNotEmpty) {
      out.add(buf.toString());
      buf.clear();
    }
    buf.write(ch);
  }
  if (buf.isNotEmpty) out.add(buf.toString());
  return out;
}
