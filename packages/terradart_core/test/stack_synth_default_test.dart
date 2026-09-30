import 'dart:convert';
import 'dart:io';

import 'package:terradart_core/src/app_export.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';
import 'package:terradart_core/src/tf_variable.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';

/// Stack that registers a Dart-emitting export but does NOT set an output
/// path. Used to exercise the [StateError] path in [Stack.writeTo].
final class _StackWithUnsetExportPath extends Stack {
  _StackWithUnsetExportPath()
    : super(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      ) {
    addExport('FOO', StringExport('bar'));
  }
}

/// Stack with both an export AND an output path set — the happy path
/// where [Stack.writeTo] writes both `main.tf.json` and the constants
/// `.dart` file.
final class _StackWithExportPath extends Stack {
  _StackWithExportPath({required this.constantsPath})
    : super(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      ) {
    addExport('FOO', StringExport('bar'));
    setAppExportsOutputPath(constantsPath);
  }

  final String constantsPath;
}

void main() {
  group('Stack.writeTo', () {
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

      await stack.writeTo(tempDir.path);

      final tfJsonFile = File('${tempDir.path}/main.tf.json');
      expect(await tfJsonFile.exists(), isTrue);

      final decoded = jsonDecode(await tfJsonFile.readAsString());
      expect(decoded, isA<Map<String, dynamic>>());
      expect(
        (decoded as Map<String, dynamic>).containsKey('terraform'),
        isTrue,
      );
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
      await stack.writeTo(nested);

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

      await stack.writeTo(tempDir.path);

      final content = await File('${tempDir.path}/main.tf.json').readAsString();
      expect(content, contains('  "terraform"'));
    });

    test('throws StateError when AppExports produced Dart constants '
        'but no output path was set', () async {
      final stack = _StackWithUnsetExportPath();

      await expectLater(
        () async => stack.writeTo(tempDir.path),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            contains('setAppExportsOutputPath'),
          ),
        ),
      );

      // Atomic failure: nothing should have been written under outDir.
      expect(
        await File('${tempDir.path}/main.tf.json').exists(),
        isFalse,
        reason:
            'writeTo must fail before any I/O; a partial main.tf.json on '
            'disk would mislead users into thinking synth half-succeeded.',
      );
    });

    test('writes both main.tf.json and the constants .dart file when '
        'setAppExportsOutputPath is set', () async {
      final constantsPath = '${tempDir.path}/gen/exports.dart';
      final stack = _StackWithExportPath(constantsPath: constantsPath);

      await stack.writeTo(tempDir.path);

      expect(await File('${tempDir.path}/main.tf.json').exists(), isTrue);
      expect(await File(constantsPath).exists(), isTrue);

      final dartSource = await File(constantsPath).readAsString();
      expect(dartSource, contains("r'bar'"));
    });

    test('rewrites the constants file when no export resolves to a constant '
        'any more, so a stale value cannot survive', () async {
      final constantsPath = '${tempDir.path}/gen/exports.app.dart';
      TestStack stackWith(TfArg<String> name) {
        final stack = TestStack(
          providers: const [
            FakeStackProvider(
              providerName: 'google',
              source: 'hashicorp/google',
              versionConstraint: '~> 7.0',
            ),
          ],
        );
        final topic = stack.add(
          FakePubsubTopic(localName: 'orders', argMap: {'name': name}),
        );
        stack.addExport(
          'topicName',
          ResourceIdExport(TfRef.attribute<String>(topic, 'name')),
        );
        stack.setAppExportsOutputPath(constantsPath);
        return stack;
      }

      await stackWith(TfArg.literal('orders-prod')).writeTo(tempDir.path);
      expect(await File(constantsPath).readAsString(), contains('topicName'));

      final second = stackWith(TfArg.variable('topic_name'))
        ..addVariable('topic_name', const TfVariable(type: 'string'));
      await second.writeTo(tempDir.path);

      final source = await File(constantsPath).readAsString();
      expect(source, contains('abstract final class TestStackExports'));
      expect(source, isNot(contains('topicName')));
      expect(source, isNot(contains('orders-prod')));
    });

    test('StateError names the exports that need an output path', () async {
      await expectLater(
        () async => _StackWithUnsetExportPath().writeTo(tempDir.path),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            contains('"FOO"'),
          ),
        ),
      );
    });
  });

  group('Stack.addExport', () {
    TestStack newStack() => TestStack(
      providers: const [
        FakeStackProvider(
          providerName: 'google',
          source: 'hashicorp/google',
          versionConstraint: '~> 7.0',
        ),
      ],
    );

    test('rejects a second export emitting the same Terraform output', () {
      final stack = newStack();
      final a = stack.add(
        FakePubsubTopic(
          localName: 'a',
          argMap: const {'name': TfArgLiteral<String>('a')},
        ),
      );
      final b = stack.add(
        FakePubsubTopic(
          localName: 'b',
          argMap: const {'name': TfArgLiteral<String>('b')},
        ),
      );
      stack.addExport(
        'x',
        ResourceIdExport(TfRef.attribute<String>(a, 'name')),
      );
      expect(
        () => stack.addExport(
          'y',
          ResourceIdExport(
            TfRef.attribute<String>(b, 'name'),
            terraformOutputName: 'x',
          ),
        ),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            allOf(contains('"x"'), contains('terraformOutputName')),
          ),
        ),
      );
    });

    test('a Dart-only export does not claim a Terraform output name', () {
      final stack = newStack();
      final a = stack.add(
        FakePubsubTopic(
          localName: 'a',
          argMap: const {'name': TfArgLiteral<String>('a')},
        ),
      );
      stack.addExport('x', StringExport('v'));
      stack.addExport(
        'y',
        ResourceIdExport(
          TfRef.attribute<String>(a, 'name'),
          terraformOutputName: 'x',
        ),
      );
      expect(stack.appExports.keys, ['x', 'y']);
    });
  });

  group('Stack.synth (in-memory)', () {
    test('returns a SynthResult; does not touch the filesystem', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );

      final result = stack.synth();

      expect(result.tfJson, isA<Map<String, dynamic>>());
      expect(result.tfJson.containsKey('terraform'), isTrue);
      // No exports registered → no Dart constants emitted.
      expect(result.dartConstants, isNull);
    });

    test('stackName override is forwarded to StackSynth', () {
      final stack = _StackWithExportPath(constantsPath: '/tmp/ignored.dart');

      final result = stack.synth(stackName: 'CustomName');
      // Constants file should reference the override-derived class name.
      expect(result.dartConstants, isNotNull);
      expect(result.dartConstants, contains('CustomNameExports'));
    });
  });
}
