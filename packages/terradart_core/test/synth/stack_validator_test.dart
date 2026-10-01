import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

import '../helpers/fake_resources.dart';
import '../helpers/synth_issues.dart';

const _google = FakeStackProvider(
  providerName: 'google',
  source: 'hashicorp/google',
  versionConstraint: '~> 7.0',
);

FakePubsubTopic _topic(String localName) => FakePubsubTopic(
  localName: localName,
  argMap: {'name': TfArg.literal(localName)},
);

FakePubsubTopic _reader(String localName, TfArg<String> name) =>
    FakePubsubTopic(localName: localName, argMap: {'name': name});

void main() {
  group('Stack.validate', () {
    test('a valid Stack has no issue', () {
      final stack = TestStack(providers: const [_google]);
      final topic = stack.add(_topic('orders'));
      stack.add(_reader('copy', TfRef.attribute(topic, 'name')));
      expect(stack.validate(), isEmpty);
    });

    test('reports every issue at once, in Stack order', () {
      final stack = TestStack()
        ..add(_reader('a', .variable('missing')))
        ..addMoved('google_pubsub_topic.old', 'google_pubsub_topic.nope');
      expect(stack.validate(), [
        isA<NoProviders>(),
        isA<UndeclaredVariable>(),
        isA<InvalidMoveTarget>(),
      ]);
      expect(
        () => stack.synth(),
        throwsA(
          isA<SynthException>()
              .having((e) => e.stack, 'stack', 'TestStack')
              .having((e) => e.issues, 'issues', hasLength(3))
              .having(
                (e) => e.toString(),
                'toString',
                startsWith(
                  'SynthException: TestStack cannot be synthesized '
                  '(3 issues):\n  - terraform: the Stack registers no '
                  'provider.',
                ),
              ),
        ),
      );
    });
  });

  group('UnregisteredReference', () {
    test('a reference to a resource never added', () {
      final stack = TestStack(providers: const [_google]);
      final orphan = _topic('orphan');
      stack.add(_reader('copy', TfRef.attribute(orphan, 'name')));
      expect(stack.validate(), [
        isA<UnregisteredReference>()
            .having((i) => i.address, 'address', 'google_pubsub_topic.copy')
            .having((i) => i.target, 'target', 'google_pubsub_topic.orphan'),
      ]);
      expect(
        () => stack.synth(),
        throwsSynthIssue<UnregisteredReference>(
          contains('Pass it to add(...)'),
        ),
      );
    });

    test('a reference inside an expression or a nested literal', () {
      final stack = TestStack(providers: const [_google])
        ..add(
          FakePubsubTopic(
            localName: 'a',
            argMap: {
              'name': TfArg.expression<String>(
                r'${upper(google_pubsub_topic.gone.name)}',
              ),
              'labels': TfArg.literal({
                'x': TfRef.data<String>(
                  FakeProjectData(localName: 'p', argMap: const {}),
                  'project_id',
                ),
              }),
            },
          ),
        );
      expect(stack.validate().map((i) => (i as UnregisteredReference).target), [
        'google_pubsub_topic.gone',
        'data.google_project.p',
      ]);
    });

    test('depends_on and replace_triggered_by name registered blocks', () {
      final orphan = _topic('orphan');
      final stack = TestStack(providers: const [_google])
        ..add(
          FakePubsubTopic.withMeta(
            localName: 'a',
            argMap: const {},
            dependsOn: [orphan],
            lifecycle: LifecycleOptions(
              replaceTriggeredBy: [TfRef.attribute(orphan, 'id')],
            ),
          ),
        );
      expect(stack.validate(), [
        isA<UnregisteredReference>().having(
          (i) => i.target,
          'target',
          'google_pubsub_topic.orphan',
        ),
      ], reason: 'one issue per target and block');
    });

    test('outputs and module inputs are checked too', () {
      final orphan = _topic('orphan');
      final stack = TestStack(providers: const [_google])
        ..addModule(
          ModuleCall(
            localName: 'm',
            source: './m',
            inputs: {'topic': TfRef.attribute(orphan, 'id')},
          ),
        )
        ..addOutput('id', .expression<String>(r'${module.other.id}'));
      expect(stack.validate().map((i) => i.toString().split(':').first), [
        'module.m',
        'output.id',
      ]);
    });

    test('for-expression variables and functions are not references', () {
      final stack = TestStack(providers: const [_google])
        ..addExternalVariable('topics')
        ..add(
          _reader(
            'a',
            .expression(r'${join(",", [for t in var.topics : t.name])}'),
          ),
        )
        ..add(_reader('b', .expression(r'${each_value.x}')));
      expect(stack.validate(), isEmpty);
    });

    test('a type without an underscore is a block of its provider', () {
      const http = FakeStackProvider(
        providerName: 'http',
        source: 'hashicorp/http',
        versionConstraint: '~> 3.0',
      );
      const local = FakeStackProvider(
        providerName: 'local',
        source: 'hashicorp/local',
        versionConstraint: '~> 2.0',
      );
      final stack = TestStack(providers: const [_google, http, local])
        ..add(_reader('a', .expression(r'${data.http.ip.response_body}')))
        ..add(_reader('b', .expression(r'${local.name}-${var.x}')))
        ..addExternalVariable('x');
      expect(stack.validate().map((i) => (i as UnregisteredReference).target), [
        'data.http.ip',
      ]);
    });

    test('a for-expression variable named like a block root is not one', () {
      final stack = TestStack(providers: const [_google])
        ..addExternalVariable('mods')
        ..add(
          _reader(
            'a',
            .expression(
              r'${join(",", [for module in var.mods : module.name])}',
            ),
          ),
        )
        ..add(
          _reader(
            'b',
            .expression(
              r'${join(",", [for k, google_x in var.mods : google_x.id])}',
            ),
          ),
        );
      expect(stack.validate(), isEmpty);
    });

    test('a loop variable stays one inside a nested or directive sequence', () {
      final stack = TestStack(providers: const [_google])
        ..addExternalVariable('mods')
        ..add(
          _reader(
            'a',
            .expression(
              r'${join(",", [for google_x in var.mods : "${google_x.id}"])}',
            ),
          ),
        )
        ..add(
          _reader(
            'b',
            .expression(
              r'%{ for module in var.mods }${module.name}%{ endfor }',
            ),
          ),
        );
      expect(stack.validate(), isEmpty);
    });

    test('addExternalBlock accepts a block a hand-written file holds', () {
      final stack = TestStack(providers: const [_google])
        ..addExternalBlock('google_pubsub_topic.legacy')
        ..addExternalBlock('data.google_project.current')
        ..addExternalBlock('module.network')
        ..add(
          _reader(
            'a',
            .expression(
              r'${google_pubsub_topic.legacy.id}-'
              r'${data.google_project.current.number}-${module.network.id}',
            ),
          ),
        );
      expect(stack.validate(), isEmpty);
      expect(
        stack.externalBlocks,
        unorderedEquals([
          'google_pubsub_topic.legacy',
          'data.google_project.current',
          'module.network',
        ]),
      );
    });

    test('addExternalBlock refuses a non-address and a repeat', () {
      final stack = TestStack(providers: const [_google])
        ..addExternalBlock('google_pubsub_topic.legacy');
      for (final bad in ['legacy', 'google_pubsub_topic.legacy.id', 'data.x']) {
        expect(
          () => stack.addExternalBlock(bad),
          throwsArgumentError,
          reason: bad,
        );
      }
      expect(
        () => stack.addExternalBlock('google_pubsub_topic.legacy'),
        throwsArgumentError,
      );
    });
  });

  group('registration names', () {
    test('a localName that is not a Terraform identifier is refused', () {
      final stack = TestStack(providers: const [_google]);
      expect(
        () => stack.add(_topic('orders topic')),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            contains('google_pubsub_topic.orders topic'),
          ),
        ),
      );
      expect(
        () => stack.add(FakeProjectData(localName: '1st', argMap: const {})),
        throwsArgumentError,
      );
      expect(
        () => stack.addModule(ModuleCall(localName: 'a.b', source: './m')),
        throwsArgumentError,
      );
    });

    test('a variable name that is not a Terraform identifier is refused', () {
      final stack = TestStack(providers: const [_google]);
      expect(
        () => stack.addVariable('db password', const TfVariable()),
        throwsArgumentError,
      );
      expect(() => stack.addExternalVariable('9lives'), throwsArgumentError);
    });
  });

  group('SensitiveLiteral', () {
    test('names the Dart parameter and the variable fix', () {
      final stack = TestStack(providers: const [_google])
        ..add(
          FakeSecretVersion(
            localName: 'v1',
            argMap: const {'secret_data': TfArgLiteral<String>('hunter2')},
          ),
        );
      expect(
        () => stack.synth(),
        throwsSynthIssue<SensitiveLiteral>(
          allOf(
            startsWith('google_secret_manager_secret_version.v1: '),
            contains('"secret_data"'),
            contains("secretData: .variable('<name>')"),
            contains('secret_data_wo'),
          ),
        ),
      );
    });
  });
}
