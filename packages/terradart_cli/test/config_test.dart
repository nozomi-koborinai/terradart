import 'package:path/path.dart' as p;
import 'package:terradart_cli/src/cli_exception.dart';
import 'package:terradart_cli/src/config.dart';
import 'package:terradart_cli/src/engine.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

ProjectConfig parse(String yaml) =>
    ProjectConfig.parse('/project', loadYaml(yaml));

void main() {
  test('defaults without a terradart section', () {
    final config = ProjectConfig.parse('/project', null);
    expect(config.entrypoint, 'bin/infra.dart');
    expect(config.out, 'tf-out');
    expect(config.defineOutput, isNull);
    expect(config.defineFile, isNull);
    expect(config.engine.kind, isNull);
  });

  test('reads every key', () {
    final config = parse('''
entrypoint: tool/infra.dart
out: build/tf
engine: terraform
engine_path: tools/terraform
opentofu_version: 1.12.7
dart_defines:
  output: mobile_defines
  file: ../app/defines.json
''');
    expect(config.entrypoint, 'tool/infra.dart');
    expect(config.out, 'build/tf');
    expect(config.engine.kind, EngineKind.terraform);
    expect(config.engine.path, p.normalize('/project/tools/terraform'));
    expect(config.engine.openTofuVersion, '1.12.7');
    expect(config.defineOutput, 'mobile_defines');
    expect(config.defineFile, '../app/defines.json');
  });

  test('points environments at runEnvironments', () {
    expect(
      () => parse('environments: [qa, sandbox]'),
      throwsA(
        isA<CliException>().having(
          (e) => e.message,
          'message',
          contains('Environments are declared in Dart: call runEnvironments'),
        ),
      ),
    );
  });

  test('rejects an unknown key, naming the expected ones', () {
    expect(
      () => parse('entry: bin/infra.dart'),
      throwsA(
        isA<CliException>()
            .having((e) => e.message, 'message', contains('unknown key entry'))
            .having((e) => e.exitCode, 'exitCode', 64),
      ),
    );
  });

  test('rejects an unknown engine', () {
    expect(
      () => parse('engine: pulumi'),
      throwsA(
        isA<CliException>().having(
          (e) => e.message,
          'message',
          contains('must be "tofu" or "terraform"'),
        ),
      ),
    );
  });
}
