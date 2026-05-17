import 'package:terradart_codegen/src/codegen/universal_invariants/sealed_class_extractor.dart';
import 'package:terradart_codegen/src/codegen/universal_invariants/synthetic_instance_builder.dart';
import 'package:test/test.dart';

void main() {
  group('SyntheticInstanceBuilder', () {
    test('builds a constructor expression for a member with one required param',
        () {
      const member = SealedClassMember(
        name: 'TargetSplit',
        params: [SealedClassParam(name: 'splits', required: true)],
      );

      final expr = const SyntheticInstanceBuilder().buildExpression(member);

      // The synth value for a required param is left as `<TODO>` for the
      // emitted test to fill in via Component B-3's type-aware logic. The
      // expression shape must include the constructor call with all required
      // params present.
      expect(expr, contains('TargetSplit('));
      expect(expr, contains('splits:'));
      expect(expr, endsWith(')'));
    });

    test('omits optional params from the constructor expression', () {
      const member = SealedClassMember(
        name: 'RolloutPolicy',
        params: [
          SealedClassParam(name: 'codebaseBranch', required: false),
          SealedClassParam(name: 'disabled', required: false),
        ],
      );

      final expr = const SyntheticInstanceBuilder().buildExpression(member);

      // Both params are optional; the synthetic expression invokes the
      // constructor with no args (testing the "all optional null" path of
      // encode round-trip).
      expect(expr, 'RolloutPolicy()');
    });
  });
}
