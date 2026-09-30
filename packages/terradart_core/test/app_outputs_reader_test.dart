import 'dart:convert';
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';

const _provider = FakeStackProvider(
  providerName: 'google',
  source: 'hashicorp/google',
  versionConstraint: '~> 7.0',
);

TestStack _stack() => TestStack(
  providers: const [_provider],
  appExports: AppExports('lib/gen/x.g.dart', name: 'Orders'),
);

/// A Stack with one output of every reader type, all read from `topic`.
TestStack _typedStack() {
  final stack = _stack();
  final topic = stack.add(
    FakePubsubTopic(
      localName: 't',
      argMap: const {'name': TfArgLiteral<String>('t')},
    ),
  );
  TfRef<T> attr<T>(String name) => TfRef.attribute<T>(topic, name);
  return stack
    ..addOutput(
      'topic_id',
      .ref(attr<String>('id')),
      description: 'The topic ID.',
    )
    ..addOutput('replicas', .ref(attr<int>('replicas')))
    ..addOutput('ratio', .ref(attr<double>('ratio')))
    ..addOutput('enabled', .ref(attr<bool>('enabled')))
    ..addOutput('zones', .ref(attr<List<String>>('zones')))
    ..addOutput('labels', .ref(attr<Map<String, String>>('labels')))
    ..addOutput('matrix', .ref(attr<List<List<int>>>('matrix')))
    ..addOutput('maybe', .ref(attr<String?>('maybe')))
    ..addOutput('maybe_list', .ref(attr<List<String>?>('maybe_list')))
    ..addOutput(
      'anything',
      .expression<Object?>(r'${google_pubsub_topic.t.labels}'),
    )
    ..addOutput('secret', .ref(attr<String>('secret')), sensitive: true);
}

/// Writes [source] beside a `main.dart` whose body is [body], runs it, and
/// returns its stdout lines.
Future<List<String>> _run(String source, String body) async {
  final dir = await Directory.systemTemp.createTemp('terradart_reader_');
  addTearDown(() => dir.delete(recursive: true));
  await File('${dir.path}/reader.dart').writeAsString(source);
  await File('${dir.path}/main.dart').writeAsString('''
import 'dart:convert';
import 'reader.dart';

void main() {
$body
}
''');
  final result = await Process.run(Platform.resolvedExecutable, [
    'run',
    '${dir.path}/main.dart',
  ]);
  expect(result.exitCode, 0, reason: '${result.stdout}\n${result.stderr}');
  return const LineSplitter().convert(result.stdout as String);
}

void main() {
  group('generated reader', () {
    test('declares a typed getter per non-sensitive output', () {
      final source = _typedStack().synth().dartSource!;
      expect(source, contains('final class OrdersOutputs {'));
      expect(source, contains('  /// The topic ID.\n  String get topicId {'));
      expect(source, contains('  int get replicas {'));
      expect(source, contains('  double get ratio {'));
      expect(source, contains('  bool get enabled {'));
      expect(source, contains('  List<String> get zones {'));
      expect(source, contains('  Map<String, String> get labels {'));
      expect(source, contains('  List<List<int>> get matrix {'));
      expect(source, contains('  String? get maybe {'));
      expect(source, contains('  Object? get anything {'));
      expect(source, isNot(contains('secret')));
      expect(
        source,
        contains("_read(r'topic_id', 'TOPIC_ID', false)"),
        reason: 'a String output is the raw variable',
      );
      expect(source, contains("_read(r'zones', 'ZONES', true)"));
    });

    test('an empty Stack still writes both classes', () {
      final source = _stack().synth().dartSource!;
      expect(source, contains('abstract final class OrdersConstants {'));
      expect(source, contains('final class OrdersOutputs {'));
    });

    test('reads terraform output -json and the environment', () async {
      final outputs = {
        'topic_id': {'value': 'projects/p/topics/t', 'type': 'string'},
        'replicas': {'value': 3},
        'ratio': {'value': 2},
        'enabled': {'value': true},
        'zones': {
          'value': ['a', 'b'],
        },
        'labels': {
          'value': {'env': 'prod'},
        },
        'matrix': {
          'value': [
            [1, 2],
            [3],
          ],
        },
        'maybe': {'value': null},
        'maybe_list': {'value': null},
        'anything': {
          'value': {'k': 1},
        },
      };
      final environment = {
        'TOPIC_ID': 'projects/p/topics/t',
        'REPLICAS': '3',
        'RATIO': '2.5',
        'ENABLED': 'true',
        'ZONES': '["a","b"]',
        'LABELS': '{"env":"prod"}',
        'MATRIX': '[[1,2],[3]]',
        'MAYBE': 'm',
        'MAYBE_LIST': 'null',
        'ANYTHING': '{"k":1}',
      };
      final lines = await _run(_typedStack().synth().dartSource!, '''
  void show(OrdersOutputs o) => print(jsonEncode([
        o.topicId, o.replicas, o.ratio, o.enabled, o.zones, o.labels,
        o.matrix, o.maybe, o.maybeList, o.anything,
      ]));
  show(OrdersOutputs.fromTerraformJson(${jsonEncode(outputs)}));
  show(OrdersOutputs.fromEnvironment(${jsonEncode(environment)}));

  // Only the getters called need their variable.
  print(OrdersOutputs.fromEnvironment({'REPLICAS': '1'}).replicas);
  void fails(Object? Function() read) {
    try {
      read();
      print('no error');
    } on StateError catch (e) {
      print(e.message);
    }
  }
  fails(() => OrdersOutputs.fromEnvironment({}).topicId);
  fails(() => OrdersOutputs.fromEnvironment({'ZONES': 'a,b'}).zones);
  fails(() => OrdersOutputs.fromEnvironment({'REPLICAS': '"3"'}).replicas);
  fails(() => OrdersOutputs.fromTerraformJson({}).topicId);
''');
      expect(lines, [
        '["projects/p/topics/t",3,2.0,true,["a","b"],{"env":"prod"},'
            '[[1,2],[3]],null,null,{"k":1}]',
        '["projects/p/topics/t",3,2.5,true,["a","b"],{"env":"prod"},'
            '[[1,2],[3]],"m",null,{"k":1}]',
        '1',
        'Environment variable TOPIC_ID (Terraform output "topic_id") is not '
            'set.',
        startsWith(
          'Environment variable ZONES (Terraform output "zones") is not JSON',
        ),
        'Terraform output "replicas" is String 3, not int.',
        'Terraform output "topic_id" is missing; apply the stack first.',
      ]);
    });
  });

  group('output names with appExports', () {
    test('map to lowerCamel getters and SCREAMING_SNAKE variables', () {
      final source =
          (_stack()
                ..addOutput('orders-topic-id', .literal('a'))
                ..addOutput('serviceUrl', .literal('b')))
              .synth()
              .dartSource!;
      expect(
        source,
        contains(
          "String get ordersTopicId {\n    final value = "
          "_read(r'orders-topic-id', 'ORDERS_TOPIC_ID', false);",
        ),
      );
      expect(
        source,
        contains(
          "String get serviceUrl {\n    final value = "
          "_read(r'serviceUrl', 'SERVICE_URL', false);",
        ),
      );
    });

    test('reject a getter that is not a usable identifier', () {
      for (final name in ['class', '_1x', 'hash_code']) {
        expect(
          () => _stack().addOutput(name, .literal('v')),
          throwsArgumentError,
          reason: name,
        );
      }
    });

    test('reject two outputs with one getter or variable', () {
      final stack = _stack()..addOutput('topic_id', .literal('a'));
      expect(
        () => stack.addOutput('topic-id', .literal('b')),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            contains('reader getter "topicId"'),
          ),
        ),
      );
      expect(
        () => stack.addOutput('TOPIC_ID', .literal('b')),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            contains('environment variable TOPIC_ID'),
          ),
        ),
      );
    });

    test('are not checked for a sensitive output or without appExports', () {
      _stack()
        ..addOutput('class', .literal('v'), sensitive: true)
        ..addOutput('topic_id', .literal('a'))
        ..addOutput('topic-id', .literal('b'), sensitive: true);
      TestStack(providers: const [_provider])
        ..addOutput('class', .literal('v'))
        ..addOutput('topic_id', .literal('a'))
        ..addOutput('topic-id', .literal('b'));
    });
  });
}
