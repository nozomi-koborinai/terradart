import 'package:terradart_codegen/src/cli/exit_codes.dart';
import 'package:test/test.dart';

void main() {
  group('CliExitCodes', () {
    test('matches POSIX sysexits.h conventions', () {
      expect(CliExitCodes.success, 0);
      expect(CliExitCodes.usage, 64);
      expect(CliExitCodes.dataError, 65);
      expect(CliExitCodes.software, 70);
    });

    test('values are positive ints, not nullable', () {
      const codes = <int>[
        CliExitCodes.success,
        CliExitCodes.usage,
        CliExitCodes.dataError,
        CliExitCodes.software,
      ];
      expect(codes.every((c) => c >= 0 && c < 256), isTrue);
    });
  });
}
