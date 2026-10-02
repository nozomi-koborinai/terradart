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
    expect(config.defineOutput, 'dart_defines');
    expect(config.defineFile, isNull);
    expect(config.engine.kind, isNull);
    expect(config.environments, isEmpty);
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
environments:
  staging:
    backend_config: backend/staging.tfbackend
  prd:
    args: [--stage, production]
    dir: build/tf/prd
    backend_config: [bucket=prd-state, prefix=app]
    workspace: production
''');
    expect(config.entrypoint, 'tool/infra.dart');
    expect(config.out, 'build/tf');
    expect(config.engine.kind, EngineKind.terraform);
    expect(config.engine.path, p.normalize('/project/tools/terraform'));
    expect(config.engine.openTofuVersion, '1.12.7');
    expect(config.defineOutput, 'mobile_defines');
    expect(config.defineFile, '../app/defines.json');
    expect(config.environments.keys, ['staging', 'prd']);
    expect(config.environments['staging']!.backendConfig, [
      'backend/staging.tfbackend',
    ]);
    final prd = config.environments['prd']!;
    expect(prd.args, ['--stage', 'production']);
    expect(prd.dir, 'build/tf/prd');
    expect(prd.backendConfig, ['bucket=prd-state', 'prefix=app']);
    expect(prd.workspace, 'production');
  });

  test('environments may be a list of names', () {
    final config = parse('environments: [qa, sandbox, eu-west.1]');
    expect(config.environments.keys, ['qa', 'sandbox', 'eu-west.1']);
    expect(config.environments['sandbox']!.args, isNull);
  });

  test('an environment with no settings is allowed', () {
    final config = parse('environments:\n  qa:\n  sandbox:\n');
    expect(config.environments.keys, ['qa', 'sandbox']);
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
    expect(
      () => parse('environments:\n  qa:\n    backend: x\n'),
      throwsA(
        isA<CliException>().having(
          (e) => e.message,
          'message',
          contains('terradart.environments.qa: unknown key backend'),
        ),
      ),
    );
  });

  test('rejects an environment name that cannot name a file', () {
    expect(
      () => parse('environments: [qa/eu]'),
      throwsA(
        isA<CliException>().having(
          (e) => e.message,
          'message',
          contains('"qa/eu" is not an environment name'),
        ),
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
