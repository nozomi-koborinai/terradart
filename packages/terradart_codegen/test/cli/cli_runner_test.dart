import 'package:terradart_codegen/src/cli/cli_runner.dart';
import 'package:terradart_codegen/src/cli/version_command.dart';
import 'package:test/test.dart';

void main() {
  group('buildCliRunner', () {
    test('exposes top-level --version flag', () {
      final runner = buildCliRunner();
      expect(runner.argParser.options.containsKey('version'), isTrue);
      expect(runner.argParser.options['version']!.negatable, isFalse);
    });

    test('executableName is "terradart"', () {
      expect(buildCliRunner().executableName, 'terradart');
    });

    test('registers codegen and version subcommands', () {
      final runner = buildCliRunner();
      expect(runner.commands.containsKey('codegen'), isTrue);
      expect(runner.commands.containsKey('version'), isTrue);
    });
  });

  group('VersionCommand', () {
    test('terradartCliVersion is a non-empty semver-ish string', () {
      expect(terradartCliVersion, isNotEmpty);
      expect(
        RegExp(r'^\d+\.\d+\.\d+(-[A-Za-z0-9.-]+)?$')
            .hasMatch(terradartCliVersion),
        isTrue,
        reason: 'expected semver, got "$terradartCliVersion"',
      );
    });

    test('VersionCommand returns success and prints version', () async {
      final cmd = VersionCommand();
      expect(cmd.name, 'version');
      expect(await cmd.run(), 0);
    });
  });
}
