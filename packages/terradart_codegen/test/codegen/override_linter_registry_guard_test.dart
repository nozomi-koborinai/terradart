import 'package:terradart_codegen/src/codegen/override_linter.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:test/test.dart';

void main() {
  test('the committed override registry has no dead-config violations', () {
    final loaded = YamlOverrideLoader(
      rootDir: 'lib/src/codegen/wrapper_overrides/yaml',
    ).load();
    final violations = lintOverrides(loaded.asLintMap());
    expect(
      violations,
      isEmpty,
      reason: violations
          .map((v) => '${v.tfType}: [${v.rule}] ${v.detail}')
          .join('\n'),
    );
  });
}
