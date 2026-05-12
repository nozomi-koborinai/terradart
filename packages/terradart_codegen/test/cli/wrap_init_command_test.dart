import 'package:args/command_runner.dart';
import 'package:terradart_codegen/src/cli/cli_runner.dart';
import 'package:terradart_codegen/src/cli/exit_codes.dart';
import 'package:test/test.dart';

void main() {
  group('WrapInitCommand args parse', () {
    test('wrap-init is registered in the cli runner', () {
      final runner = buildCliRunner();
      final cmd = runner.commands['wrap-init'];
      expect(cmd, isNotNull);
      expect(cmd!.name, 'wrap-init');
    });

    test('missing <resource> positional → usage error', () {
      final runner = buildCliRunner();
      expect(
        () => runner.run(['wrap-init', '--source', '/tmp', '--output', '/tmp']),
        throwsA(isA<UsageException>()),
      );
    });

    test('--source missing returns dataError', () async {
      final runner = buildCliRunner();
      final code = await runner.run([
        'wrap-init',
        'google_pubsub_topic',
        '--output',
        '/tmp',
      ]);
      expect(code, CliExitCodes.dataError);
    });

    test('--output missing returns dataError', () async {
      final runner = buildCliRunner();
      final code = await runner.run([
        'wrap-init',
        'google_pubsub_topic',
        '--source',
        '/tmp',
      ]);
      expect(code, CliExitCodes.dataError);
    });

    test('invalid --provider format throws UsageException', () {
      final runner = buildCliRunner();
      expect(
        () => runner.run([
          'wrap-init',
          'google_pubsub_topic',
          '--provider',
          'INVALID',
          '--source',
          '/tmp',
          '--output',
          '/tmp',
        ]),
        throwsA(isA<UsageException>()),
      );
    });

    test('--provider hashicorp/aws → usage error (only google supported)', () {
      final runner = buildCliRunner();
      expect(
        () => runner.run([
          'wrap-init',
          'google_pubsub_topic',
          '--provider',
          'hashicorp/aws',
          '--source',
          '/tmp',
          '--output',
          '/tmp',
        ]),
        throwsA(isA<UsageException>()),
      );
    });
  });
}
