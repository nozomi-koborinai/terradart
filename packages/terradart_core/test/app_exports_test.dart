import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';
import 'helpers/synth_issues.dart';

extension type const _Tier._(TfArg<String> _) implements TfArg<String> {
  static const _Tier standard = _Tier._(TfArgLiteral('STANDARD'));
}

const _provider = FakeStackProvider(
  providerName: 'google',
  source: 'hashicorp/google',
  versionConstraint: '~> 7.0',
);

TestStack _stack({AppExports? appExports}) => TestStack(
  providers: const [_provider],
  appExports: appExports ?? AppExports('lib/gen/x.g.dart'),
);

TestStack _plainStack() => TestStack(providers: const [_provider]);

FakePubsubTopic _topic(TestStack stack, Map<String, TfArg<dynamic>?> argMap) =>
    stack.add(FakePubsubTopic('orders', argMap: argMap));

String _source(Stack stack) => stack.synth().dartSource!;

Matcher _argumentError(String message) => throwsA(
  isA<ArgumentError>().having((e) => e.message, 'message', contains(message)),
);

Matcher _stateError(String message) => throwsA(
  isA<StateError>().having((e) => e.message, 'message', contains(message)),
);

Matcher _unresolvable(String message) => throwsSynthIssue<UnresolvableConstant>(
  allOf(startsWith('constant.x: '), contains(message)),
);

void main() {
  group('AppExports', () {
    test('requires a .dart path', () {
      expect(() => AppExports('lib/gen/x.txt'), throwsArgumentError);
    });

    test('requires a public identifier name', () {
      expect(() => AppExports('x.dart', name: '_Orders'), throwsArgumentError);
      expect(() => AppExports('x.dart', name: 'class'), throwsArgumentError);
    });
  });

  group('addConstant', () {
    test('writes a .value constant of every supported type', () {
      final stack = _stack()
        ..addConstant('s', const .value('v1'))
        ..addConstant('i', const .value(3))
        ..addConstant('d', const .value(1.5))
        ..addConstant('b', const .value(true))
        ..addConstant('n', const AppConstant<String?>.value(null))
        ..addConstant('l', const .value(['a', 'b']))
        ..addConstant('m', const .value(<String, int>{'a': 1}));

      final source = _source(stack);
      expect(source, contains("static const String s = r'v1';"));
      expect(source, contains('static const int i = 3;'));
      expect(source, contains('static const double d = 1.5;'));
      expect(source, contains('static const bool b = true;'));
      expect(source, contains('static const String? n = null;'));
      expect(source, contains("static const List<String> l = [r'a', r'b'];"));
      expect(source, contains("static const Map<String, int> m = {r'a': 1};"));
    });

    test('resolves a .ref to the literal the attribute is set to', () {
      final stack = _stack();
      final topic = _topic(stack, {
        'name': const TfArgLiteral<String>('orders-prod'),
        'labels': TfArg.literal<Map<String, TfArg<String>>>({
          'env': const TfArgLiteral('prod'),
        }),
        'tier': _Tier.standard,
      });
      stack
        ..addConstant(
          'topicName',
          .ref(TfRef.attribute<String>(topic, 'name'), description: 'Topic.'),
        )
        ..addConstant(
          'labels',
          .ref(TfRef.attribute<Map<String, String>>(topic, 'labels')),
        )
        ..addConstant('tier', .ref(TfRef.attribute<String>(topic, 'tier')));

      final source = _source(stack);
      expect(
        source,
        contains(
          "  /// Topic.\n  static const String topicName = r'orders-prod';",
        ),
      );
      expect(
        source,
        contains(
          "static const Map<String, String> labels = {r'env': r'prod'};",
        ),
      );
      expect(source, contains("static const String tier = r'STANDARD';"));
    });

    test('resolves a .ref to a data source argument', () {
      final stack = _stack();
      final project = stack.add(
        FakeProjectData(
          'p',
          argMap: const {'project_id': TfArgLiteral<String>('my-proj')},
        ),
      );
      stack.addConstant(
        'projectId',
        .ref(TfRef.data<String>(project, 'project_id')),
      );

      expect(
        _source(stack),
        contains("static const String projectId = r'my-proj';"),
      );
    });

    test('writes a .fromEnvironment constant', () {
      final stack = _stack()
        ..addConstant('apiBase', .fromEnvironment('API_BASE'))
        ..addConstant('mode', .fromEnvironment('MODE', defaultValue: 'dev'));

      final source = _source(stack);
      expect(
        source,
        contains(
          "static const String apiBase = String.fromEnvironment('API_BASE');",
        ),
      );
      expect(
        source,
        contains(
          'static const String mode = '
          "String.fromEnvironment('MODE', defaultValue: r'dev');",
        ),
      );
    });

    test('rejects a .fromEnvironment name that would break the literal', () {
      expect(() => AppConstant.fromEnvironment("A'B"), throwsArgumentError);
      expect(() => AppConstant.fromEnvironment(''), throwsArgumentError);
    });

    test('names the class after the Stack type unless AppExports.name', () {
      expect(
        _source(_stack()),
        contains('abstract final class TestStackConstants {'),
      );
      expect(
        _source(_stack(appExports: AppExports('x.dart', name: 'Orders'))),
        contains('abstract final class OrdersConstants {'),
      );
    });

    group('registration', () {
      test('throws StateError without appExports', () {
        expect(
          () => _plainStack().addConstant('x', const .value('v')),
          _stateError('appExports: AppExports('),
        );
      });

      test('rejects a name that is not a public Dart identifier', () {
        final stack = _stack();
        for (final name in ['', '1x', 'a-b', '_x', 'class']) {
          expect(
            () => stack.addConstant(name, const .value('v')),
            throwsArgumentError,
            reason: name,
          );
        }
      });

      test('rejects a duplicate name', () {
        final stack = _stack()..addConstant('x', const .value('v'));
        expect(
          () => stack.addConstant('x', const .value('w')),
          _argumentError('already registered'),
        );
      });

      test('rejects an unsupported type', () {
        expect(
          () => _stack().addConstant('x', const .value(Duration.zero)),
          _argumentError('supported:'),
        );
        expect(
          () => _stack().addConstant('x', const .value(<int, int>{})),
          _argumentError('supported:'),
        );
      });

      test('rejects a non-finite number', () {
        expect(
          () => _stack().addConstant('x', const .value(double.nan)),
          _argumentError('non-finite'),
        );
      });

      test('rejects a .value that is not a value of its type', () {
        expect(
          () => _stack().addConstant<Object>('x', const .value(#sym)),
          throwsArgumentError,
        );
      });

      test('rejects a whole-resource reference', () {
        final stack = _stack();
        final topic = _topic(stack, const {});
        expect(
          () => stack.addConstant('x', .ref(TfRef.resource(topic))),
          _argumentError('whole resource'),
        );
      });
    });

    group('synth fails when a .ref attribute is not a literal', () {
      void expectFailure(TfArg<dynamic>? name, String message) {
        final stack = _stack()
          ..addVariable('v', const TfVariable(type: 'string'));
        final topic = _topic(stack, {'name': name});
        stack.addConstant('x', .ref(TfRef.attribute<String>(topic, 'name')));
        expect(stack.synth, _unresolvable(message));
      }

      test('unset', () => expectFailure(null, 'not set in the Stack'));

      test('a variable', () {
        expectFailure(TfArg.variable<String>('v'), 'the variable "v"');
      });

      test('a reference', () {
        final other = AddressStub('google_pubsub_topic.other');
        expectFailure(
          TfRef.attribute<String>(other, 'name'),
          'a reference to google_pubsub_topic.other.name',
        );
      });

      test('an expression', () {
        expectFailure(TfArg.expression<String>(r'${upper("a")}'), 'expression');
      });

      test('a template string', () {
        expectFailure(
          const TfArgLiteral<String>(r'${var.v}'),
          'a literal holding a reference or template',
        );
      });

      test('a map key Terraform would interpolate', () {
        final stack = _stack();
        final topic = _topic(stack, {
          'labels': TfArg.literal<Map<String, String>>({r'${var.k}': 'v'}),
        });
        stack.addConstant(
          'x',
          .ref(TfRef.attribute<Map<String, String>>(topic, 'labels')),
        );
        expect(stack.synth, _unresolvable('a literal holding a reference'));
      });

      test('a value of another type', () {
        expectFailure(const TfArgLiteral<int>(3), 'is a String');
      });

      test('a sensitive field', () {
        final stack = _stack();
        final version = stack.add(
          FakeSecretVersion(
            's',
            argMap: const {'secret_data': TfArgLiteral<String>('pw')},
          ),
        );
        stack.addConstant(
          'x',
          .ref(TfRef.attribute<String>(version, 'secret_data')),
        );
        expect(stack.synth, _unresolvable('sensitive field'));
      });

      test('a sensitive field of a data source', () {
        final stack = _stack();
        final secret = stack.add(
          FakeSecretData(
            's',
            argMap: const {'plaintext': TfArgLiteral<String>('pw')},
          ),
        );
        stack.addConstant('x', .ref(TfRef.data<String>(secret, 'plaintext')));
        expect(stack.synth, _unresolvable('sensitive field'));
      });

      test('an owner that is not registered', () {
        final stack = _stack();
        final topic = FakePubsubTopic(
          'orders',
          argMap: const {'name': TfArgLiteral<String>('o')},
        );
        stack.addConstant('x', .ref(TfRef.attribute<String>(topic, 'name')));
        expect(stack.synth, _unresolvable('not registered on this Stack'));
      });
    });
  });

  group('addOutput', () {
    test('emits the output block', () {
      final stack = _plainStack();
      final topic = _topic(stack, const {'name': TfArgLiteral<String>('o')});
      stack
        ..addOutput('topic_id', TfRef.attribute<String>(topic, 'id'))
        ..addOutput(
          'region',
          .literal('us-central1'),
          description: 'Region.',
          sensitive: true,
        );

      expect(stack.synth().tfJson['output'], {
        'topic_id': {'value': r'${google_pubsub_topic.orders.id}'},
        'region': {
          'value': 'us-central1',
          'sensitive': true,
          'description': 'Region.',
        },
      });
    });

    test('emits no output block and no Dart file by default', () {
      final result = _plainStack().synth();
      expect(result.tfJson.containsKey('output'), isFalse);
      expect(result.dartSource, isNull);
    });

    test('rejects a name that is not a Terraform identifier', () {
      expect(
        () => _plainStack().addOutput('1x', .literal('v')),
        throwsArgumentError,
      );
    });

    test('rejects a duplicate name', () {
      final stack = _plainStack()..addOutput('x', .literal('v'));
      expect(
        () => stack.addOutput('x', .literal('w')),
        _argumentError('already registered'),
      );
    });

    test('requires sensitive: true for a sensitive field', () {
      final stack = _plainStack();
      final version = stack.add(FakeSecretVersion('s', argMap: const {}));
      final ref = TfRef.attribute<String>(version, 'secret_data');
      expect(
        () => stack.addOutput('pw', ref),
        _argumentError('sensitive: true'),
      );
      stack.addOutput('pw', ref, sensitive: true);
      expect(stack.outputs.keys, ['pw']);
    });

    test('requires sensitive: true for a data source sensitive field', () {
      final stack = _plainStack();
      final secret = stack.add(FakeSecretData('s', argMap: const {}));
      final ref = TfRef.data<String>(secret, 'plaintext');
      expect(
        () => stack.addOutput('pw', ref),
        _argumentError('sensitive: true'),
      );
      expect(
        () => stack.addOutput(
          'pw2',
          TfRef.attribute<String>(secret, 'plaintext'),
        ),
        _argumentError('sensitive: true'),
      );
    });

    test('synth rejects an undeclared variable in an output', () {
      final stack = _plainStack()
        ..addOutput('x', TfArg.variable<String>('nope'));
      expect(stack.synth, throwsA(anything));
    });
  });
}
