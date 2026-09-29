import '../naming.dart';
import 'reference_targets.dart';

/// The constructor parameter and argMap entry of a top-level input typed
/// by [reference]: `RefTo<C>` (`TfArg<List<RefTo<C>>>` for a list), encoded
/// through `encodeAs` with the attribute the input takes.
({String param, String argMapEntry}) referenceSlot({
  required String tfName,
  required String dartName,
  required ResolvedReference reference,
  required bool required,
}) {
  final value = "$dartName.encodeAs('${reference.attribute}')";
  return required
      ? (
          param: 'required ${reference.dartType} $dartName',
          argMapEntry: "'$tfName': $value,",
        )
      : (
          param: '${reference.dartType}? $dartName',
          argMapEntry: "if ($dartName != null) '$tfName': $value,",
        );
}

/// The constructor parameter, field and `encode()` entry of a nested helper
/// field typed by [reference].
({String ctorParam, String fieldDecl, String encodeEntry}) referenceField({
  required String tfName,
  required String dartName,
  required ResolvedReference reference,
  required bool required,
}) {
  final ident = safeDartIdentifier(dartName);
  final access = required ? ident : '$ident!';
  final entry =
      "'$tfName': $access.encodeAs('${reference.attribute}').toTfJson(),";
  return required
      ? (
          ctorParam: 'required this.$ident,',
          fieldDecl: 'final ${reference.dartType} $ident;',
          encodeEntry: entry,
        )
      : (
          ctorParam: 'this.$ident,',
          fieldDecl: 'final ${reference.dartType}? $ident;',
          encodeEntry: 'if ($ident != null) $entry',
        );
}
