import 'naming.dart';

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
