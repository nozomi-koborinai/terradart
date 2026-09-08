import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/module_call.dart';
import 'package:terradart_core/src/synth/json_encoder.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';
import 'package:terradart_core/src/tf_variable.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';

void main() {
  const google = FakeStackProvider(
    providerName: 'google',
    source: 'hashicorp/google',
    versionConstraint: '~> 7.0',
  );
  const googleEu = FakeStackProvider(
    providerName: 'google',
    source: 'hashicorp/google',
    versionConstraint: '~> 7.0',
    alias: 'eu',
  );

  group('ModuleCall', () {
    test('addresses itself as module.<localName>', () {
      final call = ModuleCall(localName: 'sa_bff', source: './modules/sa');
      expect(call.tfAddress, equals('module.sa_bff'));
      expect(call.toString(), contains('sa_bff'));
    });

    test('output() is a TfRef to module.<name>.<output>', () {
      final call = ModuleCall(localName: 'sa_bff', source: './modules/sa');
      final ref = call.output<String>('member');
      expect(ref.bareAddress, equals('module.sa_bff.member'));
      expect(ref.interpolation, equals(r'${module.sa_bff.member}'));
    });

    test('inputs and providers are unmodifiable views', () {
      final inputs = <String, TfArg<dynamic>?>{
        'account_id': const TfArgLiteral<String>('a'),
      };
      final call = ModuleCall(
        localName: 'sa',
        source: './m',
        inputs: inputs,
        providers: const {'google': 'google.eu'},
      );
      inputs['account_id'] = const TfArgLiteral<String>('b');
      expect(
        (call.inputs['account_id']! as TfArgLiteral).value,
        equals('a'),
      );
      expect(
        () => call.providers['google'] = 'google',
        throwsUnsupportedError,
      );
    });

    test('an empty localName or source is refused', () {
      expect(
        () => ModuleCall(localName: '  ', source: './m'),
        throwsA(isA<ArgumentError>()),
      );
      expect(
        () => ModuleCall(localName: 'm', source: ''),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('an input named like a meta-argument is refused', () {
      for (final name in ModuleCall.reservedInputNames) {
        expect(
          () => ModuleCall(
            localName: 'm',
            source: './m',
            inputs: {name: const TfArgLiteral<String>('x')},
          ),
          throwsA(isA<ArgumentError>()),
          reason: name,
        );
      }
    });
  });

  group('Stack.addModule', () {
    test('registers in order and returns the same instance', () {
      final stack = TestStack(providers: const [google]);
      final a = stack.addModule(
        ModuleCall(localName: 'a', source: './a'),
      );
      final b = stack.addModule(
        ModuleCall(localName: 'b', source: './b'),
      );
      expect(stack.modules, equals([a, b]));
      expect(identical(stack.modules.first, a), isTrue);
    });

    test('a repeated local name throws DuplicateModuleError', () {
      final stack = TestStack(providers: const [google])
        ..addModule(ModuleCall(localName: 'a', source: './a'));
      expect(
        () => stack.addModule(ModuleCall(localName: 'a', source: './other')),
        throwsA(isA<DuplicateModuleError>()),
      );
    });
  });

  group('TfJsonEncoder.moduleGroup', () {
    test('returns null when the stack registers no call', () {
      expect(TfJsonEncoder.moduleGroup(TestStack()), isNull);
    });

    test('source and version lead, then the inputs', () {
      final stack = TestStack(providers: const [google])
        ..addModule(
          ModuleCall(
            localName: 'network',
            source: 'terraform-google-modules/network/google',
            version: '~> 9.0',
            inputs: const {
              'project_id': TfArgLiteral<String>('demo'),
              'subnets': TfArgLiteral<List<String>>(['a', 'b']),
              'unset': null,
            },
          ),
        );
      expect(
        TfJsonEncoder.moduleGroup(stack),
        equals({
          'network': {
            'source': 'terraform-google-modules/network/google',
            'version': '~> 9.0',
            'project_id': 'demo',
            'subnets': ['a', 'b'],
          },
        }),
      );
    });

    test('refs, variables and expressions travel as interpolations', () {
      final topic = FakePubsubTopic(
        localName: 'orders',
        argMap: const {'name': TfArgLiteral<String>('orders')},
      );
      final stack = TestStack(providers: const [google])
        ..add(topic)
        ..addVariable('env', const TfVariable(type: 'string'))
        ..addExternalVariable('region')
        ..addModule(
          ModuleCall(
            localName: 'events',
            source: './modules/events',
            inputs: {
              'topic': TfArg.ref(TfRef.attribute<String>(topic, 'id')),
              'env': TfArg.variable<String>('env'),
              'where': TfArg.expression<String>(r'${var.region}-a'),
            },
          ),
        );
      expect(
        TfJsonEncoder.moduleGroup(stack)!['events'],
        equals({
          'source': './modules/events',
          'topic': r'${google_pubsub_topic.orders.id}',
          'env': r'${var.env}',
          'where': r'${var.region}-a',
        }),
      );
    });

    test('meta-arguments follow the inputs', () {
      final topic = FakePubsubTopic(
        localName: 'orders',
        argMap: const {'name': TfArgLiteral<String>('orders')},
      );
      final stack = TestStack(providers: const [google, googleEu])
        ..add(topic)
        ..addModule(
          ModuleCall(
            localName: 'events',
            source: './modules/events',
            providers: const {'google': 'google.eu'},
            count: const TfArgLiteral<num>(2),
            dependsOn: [ResourceDependency(topic)],
          ),
        );
      expect(
        TfJsonEncoder.moduleGroup(stack)!['events'],
        equals({
          'source': './modules/events',
          'providers': {'google': 'google.eu'},
          'count': 2,
          'depends_on': ['google_pubsub_topic.orders'],
        }),
      );
    });

    test('for_each carries an expression', () {
      final stack = TestStack(providers: const [google])
        ..addModule(
          ModuleCall(
            localName: 'events',
            source: './modules/events',
            forEach: TfArg.expression<Object?>(r'${toset(["a", "b"])}'),
          ),
        );
      expect(
        TfJsonEncoder.moduleGroup(stack)!['events'],
        equals({
          'source': './modules/events',
          'for_each': r'${toset(["a", "b"])}',
        }),
      );
    });
  });

  group('synth', () {
    test('the module group sits between data and moved', () {
      final topic = FakePubsubTopic(
        localName: 'orders',
        argMap: const {'name': TfArgLiteral<String>('orders')},
      );
      final stack = TestStack(providers: const [google])
        ..add(topic)
        ..addModule(
          ModuleCall(localName: 'events', source: './modules/events'),
        )
        ..addMoved(
          'google_pubsub_topic.legacy',
          'google_pubsub_topic.orders',
        );
      expect(
        stack.synth().tfJson.keys.toList(),
        equals(['terraform', 'resource', 'module', 'moved']),
      );
    });

    test('a providers value with no registered provider is refused', () {
      final stack = TestStack(providers: const [google])
        ..addModule(
          ModuleCall(
            localName: 'events',
            source: './modules/events',
            providers: const {'google': 'google.eu'},
          ),
        );
      expect(
        () => stack.synth(),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            allOf(contains('google.eu'), contains('providers.google')),
          ),
        ),
      );
    });

    test('an undeclared variable in a module input is refused', () {
      final stack = TestStack(providers: const [google])
        ..addModule(
          ModuleCall(
            localName: 'events',
            source: './modules/events',
            inputs: {'env': TfArg.variable<String>('env')},
          ),
        );
      expect(
        () => stack.synth(),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            allOf(contains('"env"'), contains('module.events')),
          ),
        ),
      );
    });

    test('a Stack that only calls modules needs no provider', () {
      final stack = TestStack()
        ..addModule(
          ModuleCall(
            localName: 'events',
            source: './modules/events',
            inputs: const {'env': TfArgLiteral<String>('dev')},
          ),
        );
      final json = stack.synth().tfJson;
      // The child modules pin what they use, so there is nothing to require.
      expect(json['terraform'], equals({'required_version': '>= 1.11.0'}));
      expect(json.containsKey('provider'), isFalse);
      expect(
        json['module'],
        equals({
          'events': {'source': './modules/events', 'env': 'dev'},
        }),
      );
    });

    test('a resource still needs a provider, module calls or not', () {
      final stack = TestStack()
        ..add(
          FakePubsubTopic(
            localName: 'orders',
            argMap: const {'name': TfArgLiteral<String>('orders')},
          ),
        )
        ..addModule(
          ModuleCall(localName: 'events', source: './modules/events'),
        );
      expect(
        () => stack.synth(),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            contains('no providers registered'),
          ),
        ),
      );
    });

    test('a declared variable in a module input passes', () {
      final stack = TestStack(providers: const [google])
        ..addVariable('env', const TfVariable(type: 'string'))
        ..addModule(
          ModuleCall(
            localName: 'events',
            source: './modules/events',
            inputs: {'env': TfArg.variable<String>('env')},
          ),
        );
      expect(
        (stack.synth().tfJson['module']! as Map)['events'],
        equals({'source': './modules/events', 'env': r'${var.env}'}),
      );
    });
  });
}
