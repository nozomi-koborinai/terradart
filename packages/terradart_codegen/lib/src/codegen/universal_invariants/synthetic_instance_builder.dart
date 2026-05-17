import 'sealed_class_extractor.dart';

/// Builds Dart-source-text expressions that construct a synthetic instance of
/// a sealed-class [SealedClassMember]. Required params get a `<TODO>` placeholder
/// that the consumer (Gate 6 test generator) replaces with a type-aware
/// synthetic value (e.g. `TfArg.literal('mock-value')` for `TfArg<String>`).
/// Optional params are omitted from the expression (the synthetic instance
/// tests the all-optionals-null path).
///
/// The two-stage construction (this builder produces the skeleton, Gate 6
/// emission fills in synthetic values per type) keeps this class
/// type-system-agnostic. Adding type awareness here would require parsing the
/// field declarations as well — currently the extractor only captures param
/// names and required flags.
final class SyntheticInstanceBuilder {
  const SyntheticInstanceBuilder();

  /// Returns a constructor-call expression like `TargetSplit(splits: <TODO>)`
  /// for [member]. Optional params are omitted.
  ///
  /// Callers expected to substring-replace `<TODO>` with a synthetic value
  /// expression appropriate for the param's Dart type.
  String buildExpression(SealedClassMember member) {
    final required = member.params.where((p) => p.required).toList();
    if (required.isEmpty) return '${member.name}()';
    final args = required.map((p) => '${p.name}: <TODO>').join(', ');
    return '${member.name}($args)';
  }
}
