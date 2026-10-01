import 'dart:convert';
import 'dart:io';

import 'package:terradart_core/src/app_exports.dart';
import 'package:terradart_core/src/synth/synth_issue.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_variable.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';
import 'helpers/synth_issues.dart';

const _providers = [
  FakeStackProvider(
    providerName: 'google',
    source: 'hashicorp/google',
    versionConstraint: '~> 7.0',
  ),
];

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

    test('writes both main.tf.json and the appExports file', () async {
      final path = '${tempDir.path}/gen/exports.g.dart';
      final stack = TestStack(
        providers: _providers,
        appExports: AppExports(path),
      )..addConstant('foo', const .value('bar'));

      await stack.writeTo(tempDir.path);

      expect(await File('${tempDir.path}/main.tf.json').exists(), isTrue);
      expect(
        await File(path).readAsString(),
        contains("static const String foo = r'bar';"),
      );
    });

    test('rewrites the appExports file on every synth, so a removed '
        'constant cannot survive', () async {
      final path = '${tempDir.path}/gen/exports.g.dart';
      await (TestStack(
        providers: _providers,
        appExports: AppExports(path),
      )..addConstant('foo', const .value('bar'))).writeTo(tempDir.path);
      await TestStack(
        providers: _providers,
        appExports: AppExports(path),
      ).writeTo(tempDir.path);

      final source = await File(path).readAsString();
      expect(source, contains('abstract final class TestStackConstants'));
      expect(source, isNot(contains('foo')));
    });

    test('a constant that cannot resolve fails before any write', () async {
      final path = '${tempDir.path}/gen/exports.g.dart';
      final stack = TestStack(
        providers: _providers,
        appExports: AppExports(path),
      );
      final topic = stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: {'name': TfArg.variable<String>('topic_name')},
        ),
      );
      stack
        ..addVariable('topic_name', const TfVariable(type: 'string'))
        ..addConstant(
          'topicName',
          .ref(TfRef.attribute<String>(topic, 'name')),
        );

      await expectLater(
        stack.writeTo(tempDir.path),
        throwsSynthIssue<UnresolvableConstant>(),
      );
      expect(await File('${tempDir.path}/main.tf.json').exists(), isFalse);
      expect(await File(path).exists(), isFalse);
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
      expect(result.dartSource, isNull);
      expect(result.dartSourcePath, isNull);
    });

    test('names the generated class after AppExports.name', () {
      final stack = TestStack(
        providers: _providers,
        appExports: AppExports('/tmp/ignored.dart', name: 'Custom'),
      );

      final result = stack.synth();
      expect(result.dartSourcePath, '/tmp/ignored.dart');
      expect(
        result.dartSource,
        contains('abstract final class CustomConstants'),
      );
    });
  });
}
