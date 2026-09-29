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
  final encode = "encodeAs('${reference.attribute}')";
  return required
      ? (
          param: 'required ${reference.dartType} $dartName',
          argMapEntry: "'$tfName': $dartName.$encode,",
        )
      : (
          param: '${reference.dartType}? $dartName',
          argMapEntry: "'$tfName': ?$dartName?.$encode,",
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
  final encode = "encodeAs('${reference.attribute}').toTfJson()";
  return required
      ? (
          ctorParam: 'required this.$ident,',
          fieldDecl: 'final ${reference.dartType} $ident;',
          encodeEntry: "'$tfName': $ident.$encode,",
        )
      : (
          ctorParam: 'this.$ident,',
          fieldDecl: 'final ${reference.dartType}? $ident;',
          encodeEntry: "'$tfName': ?$ident?.$encode,",
        );
}
