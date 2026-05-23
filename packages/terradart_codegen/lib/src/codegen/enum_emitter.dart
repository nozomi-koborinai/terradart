import 'naming.dart';

/// Emits a free-standing Dart enum declaration.
///
/// The enum suffix is always derived from the resource type's short name
/// (without the `google_` prefix, e.g. `PubsubTopic`) plus the field's leaf
/// name in PascalCase. See [enumName] in `naming.dart`.
///
/// v0.11.0 (ADR-0016): every emitted enum carries `implements TerraformEnum`
/// so `TfArg.literal` can dispatch through the static interface declared in
/// `package:terradart_core/src/tf_arg.dart` rather than a duck-typed
/// `dynamic` cast. The wrapper file already imports
/// `package:terradart_core/terradart_core.dart`, which re-exports
/// [TerraformEnum]; no separate import is required at the enum-emit site.
String emitEnumDeclaration(EnumName name) {
  final memberList = name.dartMembers.join(', ');
  // Resource label is everything except the trailing PascalCase chunk; the
  // **leaf** field name (last segment of fieldPath) is the dartdoc reference,
  // since it's already disambiguated by the resource prefix in the enum name.
  final words = _splitPascalWords(name.dartName);
  final resource = words.length >= 2
      ? words.sublist(0, words.length - 1).join(' ')
      : name.dartName;
  final leaf = name.fieldPath.split('.').last;
  return '/// $resource enum for `$leaf`.\n'
      'enum ${name.dartName} implements TerraformEnum { $memberList }\n';
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
