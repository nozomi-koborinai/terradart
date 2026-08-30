import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_variable.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';

void main() {
  group('TfVariable.toTfJson', () {
    test('an unconfigured variable emits an empty block', () {
      const variable = TfVariable();
      expect(variable.toTfJson(), equals(<String, Object?>{}));
    });

    test('every set field maps to its Terraform key', () {
      const variable = TfVariable(
        type: 'string',
        description: 'Database password.',
        defaultValue: 'changeme',
        sensitive: true,
        nullable: false,
      );
      expect(
        variable.toTfJson(),
        equals(<String, Object?>{
          'type': 'string',
          'description': 'Database password.',
          'default': 'changeme',
          'sensitive': true,
          'nullable': false,
        }),
      );
    });

    test('an unset default emits no default key', () {
      const variable = TfVariable(type: 'string');
      expect(variable.toTfJson().containsKey('default'), isFalse);
    });
  });

  group('Stack.addExternalVariable', () {
    test('rejects an empty name', () {
      final stack = TestStack();
      expect(
        () => stack.addExternalVariable(''),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('rejects a duplicate', () {
      final stack = TestStack()..addExternalVariable('db_password');
      expect(
        () => stack.addExternalVariable('db_password'),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('rejects a name already declared with addVariable', () {
      final stack = TestStack()..addVariable('db_password', const TfVariable());
      expect(
        () => stack.addExternalVariable('db_password'),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('the exposed set is read-only', () {
      final stack = TestStack()..addExternalVariable('db_password');
      expect(
        () => stack.externalVariables.add('other'),
        throwsUnsupportedError,
      );
    });
  });

  group('Stack.addVariable', () {
    test('registers a variable and exposes it in insertion order', () {
      final stack = TestStack()
        ..addVariable('b', const TfVariable(type: 'string'))
        ..addVariable('a', const TfVariable(type: 'number'));
      expect(stack.variables.keys, equals(['b', 'a']));
      expect(stack.variables['a']!.type, equals('number'));
    });

    test('rejects a duplicate name', () {
      final stack = TestStack()
        ..addVariable('db_password', const TfVariable(type: 'string'));
      expect(
        () => stack.addVariable('db_password', const TfVariable()),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('rejects an empty name', () {
      final stack = TestStack();
      expect(
        () => stack.addVariable('', const TfVariable()),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('rejects a name already registered as external', () {
      final stack = TestStack()..addExternalVariable('db_password');
      expect(
        () => stack.addVariable('db_password', const TfVariable()),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('the exposed map is read-only', () {
      final stack = TestStack()..addVariable('db_password', const TfVariable());
      expect(
        () => stack.variables['other'] = const TfVariable(),
        throwsUnsupportedError,
      );
    });
  });

  group('synth emission', () {
    TestStack stackWith({
      Map<String, TfVariable> variables = const {},
      Map<String, TfArg<dynamic>?> topicArgs = const {},
    }) {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      variables.forEach(stack.addVariable);
      stack.addExternalVariable('declared_elsewhere');
      stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: {
            'name': TfArg.literal('orders'),
            ...topicArgs,
          },
        ),
      );
      return stack;
    }

    test('no declared variables means no variable block', () {
      final json = stackWith().synth().tfJson;
      expect(json.containsKey('variable'), isFalse);
    });

    test('declared variables are emitted under the variable key', () {
      final json = stackWith(
        variables: {
          'db_password': const TfVariable(type: 'string', sensitive: true),
        },
        topicArgs: {'labels': TfArg.variable('db_password')},
      ).synth().tfJson;
      expect(
        json['variable'],
        equals({
          'db_password': {'type': 'string', 'sensitive': true},
        }),
      );
    });

    test('a declared but unused variable is still emitted', () {
      final json = stackWith(
        variables: {'unused': const TfVariable(type: 'string')},
      ).synth().tfJson;
      expect(
        json['variable'],
        equals({
          'unused': {'type': 'string'},
        }),
      );
    });

    test('an undeclared reference throws at synth time', () {
      expect(
        () => stackWith(
          topicArgs: {'labels': TfArg.variable('db_password')},
        ).synth(),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            allOf(
              contains('db_password'),
              contains('google_pubsub_topic.orders'),
              contains('addVariable'),
            ),
          ),
        ),
      );
    });

    test('an external declaration satisfies the reference check', () {
      final json = stackWith(
        topicArgs: {'labels': TfArg.variable<String>('declared_elsewhere')},
      ).synth().tfJson;
      expect(json.containsKey('variable'), isFalse);
    });

    test('an external declaration emits no block of its own', () {
      final stack = stackWith(
        variables: {'in_dart': const TfVariable(type: 'string')},
        topicArgs: {'labels': TfArg.variable<String>('declared_elsewhere')},
      );
      expect(
        (stack.synth().tfJson['variable'] as Map).keys,
        equals(['in_dart']),
      );
    });

    test('an undeclared reference nested in a literal is caught', () {
      expect(
        () => stackWith(
          topicArgs: {
            'labels': TfArg.literal({
              'env': TfArg.literal('prod'),
              'token': TfArg.variable<String>('api_token'),
            }),
          },
        ).synth(),
        throwsA(
          isA<StateError>()
              .having((e) => e.message, 'message', contains('api_token')),
        ),
      );
    });

    test('an undeclared reference on a data source is caught', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      )..addData(
          FakeProjectData(
            localName: 'current',
            argMap: {'project_id': TfArg.variable<String>('project_id')},
          ),
        );
      expect(
        () => stack.synth(),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            contains('data.google_project.current'),
          ),
        ),
      );
    });

    test('every undeclared name is reported, not just the first', () {
      expect(
        () => stackWith(
          topicArgs: {
            'labels': TfArg.variable('one'),
            'schema_settings': TfArg.variable('two'),
          },
        ).synth(),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            allOf(contains('one'), contains('two')),
          ),
        ),
      );
    });
  });
}
