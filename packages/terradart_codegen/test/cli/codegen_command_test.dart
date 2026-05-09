import 'package:args/command_runner.dart';
import 'package:terradart_codegen/src/cli/codegen_command.dart';
import 'package:test/test.dart';

void main() {
  CommandRunner<int> newRunner({CodegenExecutor? executor}) =>
      CommandRunner<int>('terradart', 'test')
        ..addCommand(
          CodegenCommand(executor: executor ?? _NoopExecutor()),
        );

  group('CodegenCommand argument parsing', () {
    test('accepts --provider, --version, --output, --services, --source', () {
      final runner = newRunner();
      final cmd = runner.commands['codegen']! as CodegenCommand;
      final argResults = cmd.argParser.parse([
        '--provider',
        'hashicorp/google',
        '--version',
        '5.32.0',
        '--output',
        'lib/src/generated',
        '--services',
        'pubsub,storage',
        '--source',
        '/tmp/mm-yaml',
      ]);
      expect(argResults['provider'], 'hashicorp/google');
      expect(argResults['version'], '5.32.0');
      expect(argResults['output'], 'lib/src/generated');
      expect(argResults['services'], 'pubsub,storage');
      expect(argResults['source'], '/tmp/mm-yaml');
    });

    test('--output defaults to terradart_generated', () {
      final runner = newRunner();
      final cmd = runner.commands['codegen']! as CodegenCommand;
      final argResults =
          cmd.argParser.parse(['--provider', 'hashicorp/google']);
      expect(argResults['output'], 'terradart_generated');
    });

    test('--provider is required (missing -> UsageException on run)', () {
      final runner = newRunner();
      expect(
        () => runner.run(['codegen']),
        throwsA(isA<UsageException>()),
      );
    });

    test('description and name match spec §7.1', () {
      final runner = newRunner();
      final cmd = runner.commands['codegen']! as CodegenCommand;
      expect(cmd.name, 'codegen');
      expect(cmd.description.toLowerCase(), contains('provider schema'));
    });
  });

  group('CodegenCommand validation', () {
    test('rejects provider id without "/"', () async {
      final runner = newRunner(executor: _ThrowingExecutor());
      final code = await runner.run(
          ['codegen', '--provider', 'hashicorp_google']).catchError((Object e) {
        expect(e, isA<UsageException>());
        return 64;
      });
      expect(code, 64);
    });

    test('rejects provider id with internal whitespace', () async {
      final runner = newRunner(executor: _ThrowingExecutor());
      final code = await runner
          .run(['codegen', '--provider', 'hashicorp/ google']).catchError(
              (Object e) {
        expect(e, isA<UsageException>());
        return 64;
      });
      expect(code, 64);
    });

    test('accepts canonical "namespace/name" provider id', () async {
      final exec = _RecordingExecutor();
      final runner = newRunner(executor: exec);
      await runner.run(['codegen', '--provider', 'hashicorp/google']);
      expect(exec.recorded?.provider, 'hashicorp/google');
    });
  });

  group('CodegenCommand executor wiring', () {
    test('passes parsed invocation to runCodegen', () async {
      final exec = _RecordingExecutor();
      final runner = newRunner(executor: exec);
      await runner.run([
        'codegen',
        '--provider',
        'hashicorp/google',
        '--version',
        '5.32.0',
        '--output',
        '/tmp/out',
        '--services',
        'pubsub,storage',
      ]);
      expect(exec.recorded, isNotNull);
      expect(exec.recorded!.provider, 'hashicorp/google');
      expect(exec.recorded!.providerVersion, '5.32.0');
      expect(exec.recorded!.outputDir, '/tmp/out');
      expect(exec.recorded!.services, ['pubsub', 'storage']);
    });

    test('translates FormatException into dataError exit', () async {
      final runner = newRunner(executor: _BadDataExecutor());
      final code = await runner.run([
        'codegen',
        '--provider',
        'hashicorp/google',
      ]);
      expect(code, 65);
    });

    test('treats empty --services as null filter', () async {
      final exec = _RecordingExecutor();
      final runner = newRunner(executor: exec);
      await runner.run([
        'codegen',
        '--provider',
        'hashicorp/google',
        '--services',
        '',
      ]);
      expect(exec.recorded?.services, isNull);
    });
  });
}

class _NoopExecutor implements CodegenExecutor {
  @override
  Future<int> run(CodegenInvocation invocation) async => 0;
}

class _ThrowingExecutor implements CodegenExecutor {
  @override
  Future<int> run(CodegenInvocation invocation) async {
    throw StateError('executor must not be reached when validation fails');
  }
}

class _RecordingExecutor implements CodegenExecutor {
  CodegenInvocation? recorded;
  @override
  Future<int> run(CodegenInvocation invocation) async {
    recorded = invocation;
    return 0;
  }
}

class _BadDataExecutor implements CodegenExecutor {
  @override
  Future<int> run(CodegenInvocation invocation) async {
    throw const FormatException('malformed schema');
  }
}
