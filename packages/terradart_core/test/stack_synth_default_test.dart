import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:test/test.dart';

import 'helpers/fake_resources.dart';

void main() {
  group('Stack.synth default', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('terradart_synth_test_');
    });

    tearDown(() async {
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('writes main.tf.json under outDir', () async {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );

      await stack.synth(outDir: tempDir.path);

      final tfJsonFile = File('${tempDir.path}/main.tf.json');
      expect(await tfJsonFile.exists(), isTrue);

      final decoded = dart_convert.jsonDecode(await tfJsonFile.readAsString());
      expect(decoded, isA<Map<String, dynamic>>());
      expect((decoded as Map<String, dynamic>).containsKey('terraform'), isTrue);
    });

    test('creates outDir when it does not exist', () async {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );

      final nested = '${tempDir.path}/nested/tf-out';
      await stack.synth(outDir: nested);

      expect(await File('$nested/main.tf.json').exists(), isTrue);
    });

    test('emitted JSON is pretty-printed (two-space indent)', () async {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );

      await stack.synth(outDir: tempDir.path);

      final content = await File('${tempDir.path}/main.tf.json').readAsString();
      expect(content, contains('  "terraform"'));
    });
  });
}
