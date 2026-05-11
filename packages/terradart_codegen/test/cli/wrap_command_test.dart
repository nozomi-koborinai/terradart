import 'package:args/command_runner.dart';
import 'package:terradart_codegen/src/cli/cli_runner.dart';
import 'package:terradart_codegen/src/cli/exit_codes.dart';
import 'package:test/test.dart';

void main() {
  group('WrapCommand args parse', () {
    test('wrap command is registered', () {
      final runner = buildCliRunner();
      final wrap = runner.commands['wrap'];
      expect(wrap, isNotNull);
      expect(wrap!.name, 'wrap');
    });

    test('--source missing returns dataError', () async {
      final runner = buildCliRunner();
      final code = await runner.run([
        'wrap',
        '--provider',
        'hashicorp/google',
      ]);
      expect(code, CliExitCodes.dataError);
    });

    test('invalid --provider format throws UsageException', () {
      final runner = buildCliRunner();
      expect(
        () => runner.run([
          'wrap',
          '--provider',
          'INVALID',
          '--source',
          '/tmp',
        ]),
        throwsA(isA<UsageException>()),
      );
    });
  });
}
