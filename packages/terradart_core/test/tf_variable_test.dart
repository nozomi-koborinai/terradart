import 'dart:convert';

import 'package:terradart_core/src/synth/synth_issue.dart';
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
        type: TfType.string,
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
      const variable = TfVariable(type: TfType.string);
      expect(variable.toTfJson().containsKey('default'), isFalse);
    });
  });

  group('TfType', () {
    test('writes each constraint as Terraform does', () {
      const cases = <TfType, String>{
        TfType.string: 'string',
        TfType.number: 'number',
        TfType.bool: 'bool',
        TfType.any: 'any',
        TfType.list(TfType.string): 'list(string)',
        TfType.set(TfType.number): 'set(number)',
        TfType.map(TfType.list(TfType.bool)): 'map(list(bool))',
        TfType.tuple([TfType.string, TfType.number]): 'tuple([string, number])',
        TfType.object({}): 'object({})',
        TfType.object({
          'name': TfType.string,
          'port': TfType.optional(TfType.number, 8080),
          'tags': TfType.optional(TfType.list(TfType.string)),
          'my.key': TfType.string,
        }): 'object({ name = string, port = optional(number, 8080), '
            'tags = optional(list(string)), "my.key" = string })',
      };
      cases.forEach((type, expression) {
        expect(type.expression, expression);
      });
    });

    test('derives the constraint from a Dart type', () {
      const cases = <String, String?>{
        'String': 'string',
        'String?': 'string',
        'int': 'number',
        'double': 'number',
        'num': 'number',
        'bool': 'bool',
        'List<String>': 'list(string)',
        'Set<int>': 'set(number)',
        'Map<String, List<bool>>': 'map(list(bool))',
        'List<Object?>': 'list(any)',
        'Object?': null,
        'dynamic': null,
      };
      cases.forEach((dart, expression) {
        expect(TfType.fromDartTypeName(dart)?.expression, expression);
      });
    });

    test('a Dart type with no Terraform counterpart throws', () {
      for (final dart in ['DateTime', 'Map<int, String>', 'List<Duration>']) {
        expect(() => TfType.fromDartTypeName(dart), throwsFormatException);
      }
    });
  });

  group('Stack.externalVariable', () {
    test('returns the handle', () {
      final stack = TestStack();
      final handle = stack.externalVariable<String>('db_password');
      expect(handle.toTfJson(), r'${var.db_password}');
      expect(stack.externalVariables, {'db_password'});
    });

    test('rejects an empty name', () {
      final stack = TestStack();
      expect(
        () => stack.externalVariable<String>(''),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('rejects a duplicate', () {
      final stack = TestStack()..externalVariable<String>('db_password');
      expect(
        () => stack.externalVariable<String>('db_password'),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('rejects a name already declared with variable', () {
      final stack = TestStack()..variable<String>('db_password');
      expect(
        () => stack.externalVariable<String>('db_password'),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('the exposed set is read-only', () {
      final stack = TestStack()..externalVariable<String>('db_password');
      expect(
        () => stack.externalVariables.add('other'),
        throwsUnsupportedError,
      );
    });
  });

  group('Stack.variable', () {
    test('returns the handle an argument takes', () {
      final stack = TestStack();
      final TfArg<String> password = stack.variable<String>(
        'db_password',
        sensitive: true,
      );
      expect(password.toTfJson(), r'${var.db_password}');
      expect((password as TfArgVariable).interpolation, r'${var.db_password}');
    });

    test('registers a variable and exposes it in insertion order', () {
      final stack = TestStack()
        ..variable<String>('b')
        ..variable<int>('a', defaultValue: 3, description: 'd');
      expect(stack.variables.keys, equals(['b', 'a']));
      expect(stack.variables['a']!.toTfJson(), {
        'type': 'number',
        'description': 'd',
        'default': 3,
      });
    });

    test('a Set default is written as a JSON list', () {
      final stack = TestStack()
        ..variable<Set<String>>('zones', defaultValue: {'a', 'b'})
        ..variable<Object?>(
          'cfg',
          type: const .object({
            'tags': .optional(.set(.string), {'x'}),
          }),
        );
      expect(stack.variables['zones']!.toTfJson()['default'], ['a', 'b']);
      expect(
        jsonEncode(stack.variables['cfg']!.toTfJson()),
        contains(r'optional(set(string), [\"x\"])'),
      );
    });

    test('derives the type from T, and an explicit type wins', () {
      final stack = TestStack()
        ..variable<List<String>>('zones')
        ..variable<Map<String, String>>('labels')
        ..variable<Object?>('anything')
        ..variable<Object?>(
          'service',
          type: const .object({'name': .string, 'port': .optional(.number)}),
        )
        ..variable<List<String>>('ids', type: const .set(.string));
      expect(
        {
          for (final MapEntry(:key, :value) in stack.variables.entries)
            key: value.type?.expression,
        },
        {
          'zones': 'list(string)',
          'labels': 'map(string)',
          'anything': null,
          'service': 'object({ name = string, port = optional(number) })',
          'ids': 'set(string)',
        },
      );
    });

    test('a T with no Terraform type needs an explicit type', () {
      final stack = TestStack();
      expect(
        () => stack.variable<DateTime>('when'),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            contains('pass type:'),
          ),
        ),
      );
      expect(
        stack.variable<DateTime>('when', type: .string).toTfJson(),
        r'${var.when}',
      );
    });

    test('rejects a duplicate name', () {
      final stack = TestStack()..variable<String>('db_password');
      expect(
        () => stack.variable<String>('db_password'),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('rejects an empty name', () {
      final stack = TestStack();
      expect(() => stack.variable<String>(''), throwsA(isA<ArgumentError>()));
    });

    test('rejects a name already registered as external', () {
      final stack = TestStack()..externalVariable<String>('db_password');
      expect(
        () => stack.variable<String>('db_password'),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('the exposed map is read-only', () {
      final stack = TestStack()..variable<String>('db_password');
      expect(
        () => stack.variables['other'] = const TfVariable(),
        throwsUnsupportedError,
      );
    });
  });

  group('synth emission', () {
    TestStack stackWith({
      List<String> variables = const [],
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
      for (final name in variables) {
        stack.variable<String>(
          name,
          sensitive: name == 'db_password' ? true : null,
        );
      }
      stack.externalVariable<String>('declared_elsewhere');
      stack.add(
        FakePubsubTopic(
          'orders',
          argMap: {'name': TfArg.literal('orders'), ...topicArgs},
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
        variables: ['db_password'],
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
      final json = stackWith(variables: ['unused']).synth().tfJson;
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
          isA<SynthException>().having(
            (e) => e.toString(),
            'toString',
            allOf(
              contains('db_password'),
              contains('google_pubsub_topic.orders'),
              contains('variable<T>'),
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
        variables: ['in_dart'],
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
          isA<SynthException>().having(
            (e) => e.toString(),
            'toString',
            contains('api_token'),
          ),
        ),
      );
    });

    test('an undeclared reference on a data source is caught', () {
      final stack =
          TestStack(
            providers: const [
              FakeStackProvider(
                providerName: 'google',
                source: 'hashicorp/google',
                versionConstraint: '~> 7.0',
              ),
            ],
          )..add(
            FakeProjectData(
              'current',
              argMap: {'project_id': TfArg.variable<String>('project_id')},
            ),
          );
      expect(
        () => stack.synth(),
        throwsA(
          isA<SynthException>().having(
            (e) => e.toString(),
            'toString',
            contains('data.google_project.current'),
          ),
        ),
      );
    });

    test('an undeclared reference inside an expression is caught', () {
      expect(
        () => stackWith(
          variables: ['a'],
          topicArgs: {
            'labels': TfArg.expression<String>(r'${var.a}-${lower(var.b)}'),
          },
        ).synth(),
        throwsA(
          isA<SynthException>().having(
            (e) => e.toString(),
            'toString',
            allOf(contains('"b"'), isNot(contains('"a"'))),
          ),
        ),
      );
    });

    test('an expression whose variables are declared synthesizes', () {
      final stack = stackWith(
        variables: ['a'],
        topicArgs: {
          'labels': TfArg.expression<String>(r'${var.a}-${lower(var.b)}'),
        },
      )..externalVariable<String>('b');
      final json = stack.synth().tfJson;
      expect(
        (json['resource'] as Map)['google_pubsub_topic']['orders']['labels'],
        equals(r'${var.a}-${lower(var.b)}'),
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
          isA<SynthException>().having(
            (e) => e.toString(),
            'toString',
            allOf(contains('one'), contains('two')),
          ),
        ),
      );
    });
  });
}
