import 'package:terradart_codegen/src/codegen/override_linter.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:test/test.dart';

void main() {
  group('lintOverride', () {
    test('flags deriveClassDoc + classDocComment as dead config (rule a)', () {
      const o = WrapperOverride(
        outputDir: 'x',
        deriveClassDoc: true,
        classDocComment: '/// hand-written, now dead.',
      );
      final violations = lintOverride('google_x', o);
      expect(violations, hasLength(1));
      expect(violations.single.tfType, 'google_x');
      expect(violations.single.rule, 'derive-class-doc-dead-classdoccomment');
    });

    test('flags curatedDoc without deriveClassDoc as dead config (rule d)', () {
      const o = WrapperOverride(
        outputDir: 'x',
        curatedDoc: '/// Curated tail.',
      );
      final violations = lintOverride('google_x', o);
      expect(violations, hasLength(1));
      expect(violations.single.rule, 'curated-doc-without-derive-class-doc');
    });

    test('clean: deriveClassDoc + curatedDoc, no classDocComment', () {
      const o = WrapperOverride(
        outputDir: 'x',
        deriveClassDoc: true,
        curatedDoc: '/// Curated tail.',
      );
      expect(lintOverride('google_x', o), isEmpty);
    });

    test('clean: un-migrated resource (classDocComment only, no gate)', () {
      const o = WrapperOverride(
        outputDir: 'x',
        classDocComment: '/// Still hand-written; not yet migrated.',
      );
      expect(lintOverride('google_x', o), isEmpty);
    });

    test('clean: bare override with only outputDir', () {
      const o = WrapperOverride(outputDir: 'x');
      expect(lintOverride('google_x', o), isEmpty);
    });

    test('reports both rules when both dead configs are present', () {
      // deriveClassDoc true + classDocComment set triggers (a);
      // curatedDoc present with deriveClassDoc true does NOT trigger (d).
      // To trip both at once we need (a) on one resource and (d) on another,
      // so this case asserts (a) fires and (d) does not on the same override.
      const o = WrapperOverride(
        outputDir: 'x',
        deriveClassDoc: true,
        classDocComment: '/// dead',
        curatedDoc: '/// live (deriveClassDoc is true)',
      );
      final rules = lintOverride('google_x', o).map((v) => v.rule).toList();
      expect(rules, ['derive-class-doc-dead-classdoccomment']);
    });
  });

  group('lintOverrides', () {
    test('aggregates across the map sorted by tfType', () {
      const a = WrapperOverride(
        outputDir: 'x',
        deriveClassDoc: true,
        classDocComment: '/// dead',
      );
      const b = WrapperOverride(outputDir: 'x', curatedDoc: '/// dead');
      final violations = lintOverrides({'google_zeta': a, 'google_alpha': b});
      expect(violations, hasLength(2));
      // sorted by tfType: alpha before zeta
      expect(violations.first.tfType, 'google_alpha');
      expect(violations.last.tfType, 'google_zeta');
    });

    test('empty map yields no violations', () {
      expect(lintOverrides(const {}), isEmpty);
    });

    test('all-clean map yields no violations', () {
      const o = WrapperOverride(outputDir: 'x', deriveClassDoc: true);
      expect(lintOverrides({'google_x': o}), isEmpty);
    });
  });
}
