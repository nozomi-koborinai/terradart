import 'package:args/command_runner.dart';
import 'package:terradart_codegen/src/cli/cli_runner.dart';
import 'package:terradart_codegen/src/cli/exit_codes.dart';
import 'package:test/test.dart';

void main() {
  group('WrapPromoteCommand args parse', () {
    test('wrap-promote is registered in the cli runner', () {
      final runner = buildCliRunner();
      final cmd = runner.commands['wrap-promote'];
      expect(cmd, isNotNull);
      expect(cmd!.name, 'wrap-promote');
    });

    test('missing <resource> positional → usage error', () {
      final runner = buildCliRunner();
      expect(
        () => runner
            .run(['wrap-promote', '--source', '/tmp', '--output', '/tmp']),
        throwsA(isA<UsageException>()),
      );
    });

    test('--source missing returns dataError', () async {
      final runner = buildCliRunner();
      final code = await runner.run([
        'wrap-promote',
        'google_pubsub_topic',
        '--output',
        '/tmp',
      ]);
      expect(code, CliExitCodes.dataError);
    });

    test('--output missing returns dataError', () async {
      final runner = buildCliRunner();
      final code = await runner.run([
        'wrap-promote',
        'google_pubsub_topic',
        '--source',
        '/tmp',
      ]);
      expect(code, CliExitCodes.dataError);
    });

    test('--provider hashicorp/aws → usage error', () {
      final runner = buildCliRunner();
      expect(
        () => runner.run([
          'wrap-promote',
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
