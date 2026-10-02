import 'dart:convert';
import 'dart:io';

import 'package:terradart_core/internal.dart';
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
    FakePubsubTopic('t', argMap: const {'name': TfArgLiteral<String>('t')}),
  );
  TfRef<T> attr<T>(String name) => TfRef.attribute<T>(topic, name);
  return stack
    ..addOutput('topic_id', attr<String>('id'), description: 'The topic ID.')
    ..addOutput('replicas', attr<int>('replicas'))
    ..addOutput('ratio', attr<double>('ratio'))
    ..addOutput('enabled', attr<bool>('enabled'))
    ..addOutput('zones', attr<List<String>>('zones'))
    ..addOutput('labels', attr<Map<String, String>>('labels'))
    ..addOutput('matrix', attr<List<List<int>>>('matrix'))
    ..addOutput('maybe', attr<String?>('maybe'))
    ..addOutput('maybe_list', attr<List<String>?>('maybe_list'))
    ..addOutput(
      'anything',
      .expression<Object?>(r'${google_pubsub_topic.t.labels}'),
    )
    ..addOutput('secret', attr<String>('secret'), sensitive: true);
}

/// Writes [source] beside a `main.dart` whose body is [body], runs it with
/// the compile-time [defines] — on the VM, or compiled to JavaScript with
/// dart2js and run by Node when [web] — and returns its stdout lines.
Future<List<String>> _run(
  String source,
  String body, {
  Map<String, String> defines = const {},
  bool web = false,
}) async {
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
  final flags = [
    for (final MapEntry(:key, :value) in defines.entries)
      '--define=$key=$value',
  ];
  final ProcessResult result;
  if (web) {
    final js = '${dir.path}/main.js';
    final compiled = await Process.run(Platform.resolvedExecutable, [
      'compile',
      'js',
      ...flags,
      '-o',
      js,
      '${dir.path}/main.dart',
    ]);
    expect(compiled.exitCode, 0, reason: '${compiled.stdout}');
    result = await Process.run('node', [js]);
  } else {
    result = await Process.run(Platform.resolvedExecutable, [
      'run',
      ...flags,
      '${dir.path}/main.dart',
    ]);
  }
  expect(result.exitCode, 0, reason: '${result.stdout}\n${result.stderr}');
  return const LineSplitter().convert(result.stdout as String);
}

/// Why a test needs Node, or `null` when it is on PATH.
final Object? _noNode = Process.runSync('which', ['node']).exitCode == 0
    ? null
    : 'node is not on PATH';

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

  group('dart-define output', () {
    /// The `terraform output -json dart_defines` value of [stack], whose
    /// outputs are all literals.
    Map<String, String> applied(Stack stack, [String name = 'dart_defines']) {
      final output = stack.synth().tfJson['output'] as Map<String, Object?>;
      final value = (output[name]! as Map<String, Object?>)['value'];
      return (value! as Map<String, Object?>).cast();
    }

    test('is the environment of every non-sensitive output', () {
      final stack = _typedStack()
        ..addDartDefineOutput(description: 'Client build defines.');
      final output = stack.synth().tfJson['output'] as Map<String, Object?>;
      expect(output.keys.last, 'dart_defines');
      expect(output['dart_defines'], {
        'value': {
          'TOPIC_ID': r'${google_pubsub_topic.t.id}',
          'REPLICAS': r'${jsonencode(google_pubsub_topic.t.replicas)}',
          'RATIO': r'${jsonencode(google_pubsub_topic.t.ratio)}',
          'ENABLED': r'${jsonencode(google_pubsub_topic.t.enabled)}',
          'ZONES': r'${jsonencode(google_pubsub_topic.t.zones)}',
          'LABELS': r'${jsonencode(google_pubsub_topic.t.labels)}',
          'MATRIX': r'${jsonencode(google_pubsub_topic.t.matrix)}',
          'MAYBE': r'${google_pubsub_topic.t.maybe}',
          'MAYBE_LIST': r'${jsonencode(google_pubsub_topic.t.maybe_list)}',
          'ANYTHING': r'${jsonencode(google_pubsub_topic.t.labels)}',
        },
        'description': 'Client build defines.',
      });
      expect(stack.outputs.keys, isNot(contains('dart_defines')));
      expect(stack.synth().dartSource, isNot(contains('get dartDefines')));
    });

    test('resolves at synth and picks outputs with only', () {
      final stack = _stack()
        ..addDartDefineOutput()
        ..addDartDefineOutput(name: 'admin_defines', only: ['b'])
        ..addOutput('a', .literal('1'))
        ..addOutput('b', .literal(2));
      expect(applied(stack), {'A': '1', 'B': '2'});
      expect(applied(stack, 'admin_defines'), {'B': '2'});
    });

    test('works without appExports', () {
      final stack = TestStack(providers: const [_provider])
        ..addOutput('a', .literal('1'))
        ..addDartDefineOutput();
      expect(applied(stack), {'A': '1'});
    });

    test('rejects a taken or invalid name', () {
      final stack = _stack()
        ..addOutput('a', .literal('1'))
        ..addDartDefineOutput();
      expect(() => stack.addDartDefineOutput(name: 'a'), throwsArgumentError);
      expect(() => stack.addDartDefineOutput(), throwsArgumentError);
      expect(
        () => stack.addOutput('dart_defines', .literal('x')),
        throwsArgumentError,
      );
      expect(() => stack.addDartDefineOutput(name: '1x'), throwsArgumentError);
    });

    test('reports what it cannot carry', () {
      List<String> issues(Stack stack) => [
        for (final issue in stack.validate())
          if (issue is InvalidDartDefineOutput) issue.toString(),
      ];
      expect(issues(_stack()..addDartDefineOutput()), [
        startsWith('output.dart_defines: it carries no output.'),
      ]);
      expect(
        issues(
          _stack()
            ..addOutput('secret', .literal('s'), sensitive: true)
            ..addOutput('none', TfArg<String?>.literal(null))
            ..addDartDefineOutput(only: ['missing', 'secret', 'none']),
        ),
        [
          contains('Output "missing" is not registered'),
          contains('Output "secret" is sensitive'),
          contains('Output "none" is null'),
        ],
      );
      expect(
        issues(
          TestStack(providers: const [_provider])
            ..addOutput('a_b', .literal('1'))
            ..addOutput('a-b', .literal('2'))
            ..addDartDefineOutput(),
        ),
        [contains('it carries the variable A_B twice')],
      );
      expect(
        () => (_stack()..addDartDefineOutput()).synth(),
        throwsA(isA<SynthException>()),
      );
    });

    for (final web in [false, true]) {
      test(
        'is what fromDartDefine reads ${web ? 'in dart2js' : 'on the VM'}',
        skip: web ? _noNode : null,
        () async {
          final stack = _stack()
            ..addOutput('api_url', .literal('https://api.example.com/v1?a=b'))
            ..addOutput('replicas', .literal(3))
            ..addOutput('zones', .literal(['a', 'b']))
            ..addOutput('limits', .literal({'cpu': 1}))
            ..addOutput('unset', .literal('u'))
            ..addOutput('secret', .literal('s'), sensitive: true)
            ..addDartDefineOutput(only: ['api_url', 'replicas', 'zones']);
          final lines = await _run(
            stack.synth().dartSource!,
            r'''
  const o = OrdersOutputs.fromDartDefine();
  print(jsonEncode([o.apiUrl, o.replicas, o.zones, o.limits]));
  try {
    o.unset;
  } on StateError catch (e) {
    print(e.message);
  }
''',
            defines: {
              ...applied(stack),
              'LIMITS': '{"cpu":1}',
              'SECRET': 'leaked',
            },
            web: web,
          );
          expect(lines, [
            '["https://api.example.com/v1?a=b",3,["a","b"],{"cpu":1}]',
            'Dart define UNSET (Terraform output "unset") is not set.',
          ]);
        },
      );
    }

    test('reads only the defines of the reader getters', () {
      final source =
          (_stack()
                ..addOutput('api_url', .literal('a'))
                ..addOutput('secret', .literal('s'), sensitive: true))
              .synth()
              .dartSource!;
      expect(
        source,
        contains(
          "    if (bool.hasEnvironment('API_URL')) "
          "'API_URL': String.fromEnvironment('API_URL'),\n  };",
        ),
      );
      expect(source, isNot(contains("'SECRET'")));
      expect(source, contains('const OrdersOutputs.fromDartDefine()'));
    });
  });

  group('outputEnvironment', () {
    Map<String, Object?> encoded(
      List<({String name, TfArg<String> value})> environment,
    ) => {
      for (final (:name, :value) in environment)
        name: TfJsonEncoder.encodeArg(value),
    };

    test('passes a String as is and anything else as jsonencode', () {
      final environment = _typedStack().outputEnvironment();
      expect(encoded(environment), {
        'TOPIC_ID': r'${google_pubsub_topic.t.id}',
        'REPLICAS': r'${jsonencode(google_pubsub_topic.t.replicas)}',
        'RATIO': r'${jsonencode(google_pubsub_topic.t.ratio)}',
        'ENABLED': r'${jsonencode(google_pubsub_topic.t.enabled)}',
        'ZONES': r'${jsonencode(google_pubsub_topic.t.zones)}',
        'LABELS': r'${jsonencode(google_pubsub_topic.t.labels)}',
        'MATRIX': r'${jsonencode(google_pubsub_topic.t.matrix)}',
        'MAYBE': r'${google_pubsub_topic.t.maybe}',
        'MAYBE_LIST': r'${jsonencode(google_pubsub_topic.t.maybe_list)}',
        'ANYTHING': r'${jsonencode(google_pubsub_topic.t.labels)}',
      }, reason: 'the sensitive output is left out');
      expect(
        encoded(_typedStack().outputEnvironment(only: ['zones', 'topic_id'])),
        {
          'ZONES': r'${jsonencode(google_pubsub_topic.t.zones)}',
          'TOPIC_ID': r'${google_pubsub_topic.t.id}',
        },
      );
    });

    test('is what the generated reader reads', () async {
      final stack = _stack()
        ..addOutput('region', .literal('us-central1'))
        ..addOutput('replicas', .literal(3))
        ..addOutput('ratio', .literal(2.5))
        ..addOutput('zones', .literal(['a', 'b']))
        ..addOutput('limits', .literal({'cpu': 1, 'memory': 2}))
        ..addOutput('maybe', TfArg<List<int>?>.literal(null));
      final environment = encoded(stack.outputEnvironment());
      final lines = await _run(stack.synth().dartSource!, '''
  final o = OrdersOutputs.fromEnvironment(${jsonEncode(environment)});
  print(jsonEncode([o.region, o.replicas, o.ratio, o.zones, o.limits, o.maybe]));
''');
      expect(lines, [
        '["us-central1",3,2.5,["a","b"],{"cpu":1,"memory":2},null]',
      ]);
    });

    test('covers the outputs registered so far', () {
      final stack = _stack()..addOutput('a', .literal('1'));
      final environment = stack.outputEnvironment();
      stack.addOutput('b', .literal('2'));
      expect([for (final e in environment) e.name], ['A']);
    });

    test('rejects an output with no environment value', () {
      final stack = _stack()
        ..addOutput('secret', .literal('s'), sensitive: true)
        ..addOutput('pair', .expression<List<String>>(r'${a.b}-${c.d}'))
        ..addOutput(
          'mixed',
          .literal(<String, Object?>{
            'id': TfArg.expression<String>(r'${a.b}'),
          }),
        );
      Matcher fails(String message) => throwsA(
        isA<ArgumentError>().having(
          (e) => e.message,
          'message',
          contains(message),
        ),
      );
      expect(
        () => stack.outputEnvironment(only: ['missing']),
        fails('is not registered'),
      );
      expect(
        () => stack.outputEnvironment(only: ['secret']),
        fails('is sensitive'),
      );
      expect(
        () => stack.outputEnvironment(only: ['pair']),
        fails('has no JSON encoding'),
      );
      expect(
        () => stack.outputEnvironment(only: ['mixed']),
        fails('holding references'),
      );
      expect(
        () => TestStack(providers: const [_provider]).outputEnvironment(),
        throwsStateError,
      );
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
