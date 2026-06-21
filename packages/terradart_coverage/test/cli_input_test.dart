import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:test/test.dart';

void main() {
  group('resolveInput', () {
    test('--dir wins over a file arg and the terminal', () {
      final input = resolveInput(
        dirOption: 'infra',
        fileArg: 'plan.json',
        stdinIsTerminal: true,
      );
      expect(input, isA<DirectoryInput>().having((i) => i.dir, 'dir', 'infra'));
    });

    test('a file arg is used when there is no --dir', () {
      final input = resolveInput(
        dirOption: null,
        fileArg: 'plan.json',
        stdinIsTerminal: false,
      );
      expect(
        input,
        isA<FileInput>().having((i) => i.path, 'path', 'plan.json'),
      );
    });

    test(
      'a file arg beats the current-directory default even at a terminal',
      () {
        final input = resolveInput(
          dirOption: null,
          fileArg: 'plan.json',
          stdinIsTerminal: true,
        );
        expect(input, isA<FileInput>());
      },
    );

    test('bare invocation at a terminal defaults to the current directory', () {
      final input = resolveInput(
        dirOption: null,
        fileArg: null,
        stdinIsTerminal: true,
      );
      expect(input, isA<DirectoryInput>().having((i) => i.dir, 'dir', '.'));
    });

    test('piped stdin (not a terminal) reads stdin', () {
      final input = resolveInput(
        dirOption: null,
        fileArg: null,
        stdinIsTerminal: false,
      );
      expect(input, isA<StdinInput>());
    });
  });
}
