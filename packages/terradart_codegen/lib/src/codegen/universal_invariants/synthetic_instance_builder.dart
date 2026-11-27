import 'sealed_class_extractor.dart';

final class SyntheticInstanceBuilder {
  const SyntheticInstanceBuilder();

  String buildExpression(SealedClassMember member) {
    final required = member.params.where((p) => p.required).toList();
    if (required.isEmpty) return '${member.name}()';
    final args = required.map((p) => '${p.name}: <TODO>').join(', ');
    return '${member.name}($args)';
  }
}
