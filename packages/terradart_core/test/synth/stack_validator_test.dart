import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

import '../helpers/fake_resources.dart';
import '../helpers/synth_issues.dart';

const _google = FakeStackProvider(
  providerName: 'google',
  source: 'hashicorp/google',
  versionConstraint: '~> 7.0',
);

FakePubsubTopic _topic(String localName) =>
    FakePubsubTopic(localName, argMap: {'name': TfArg.literal(localName)});

FakePubsubTopic _reader(String localName, TfArg<String> name) =>
    FakePubsubTopic(localName, argMap: {'name': name});

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
            'a',
            argMap: {
              'name': TfArg.expression<String>(
                r'${upper(google_pubsub_topic.gone.name)}',
              ),
              'labels': TfArg.literal({
                'x': TfRef.attribute<String>(
                  FakeProjectData('p', argMap: const {}),
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
            'a',
            argMap: const {},
            dependsOn: [orphan],
            lifecycle: LifecycleOptions(
              replaceTriggeredBy: [TfRef.attribute<String>(orphan, 'id')],
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

    test('a lifecycle Terraform rejects is an InvalidLifecycle', () {
      final project = FakeProjectData('p', argMap: const {});
      final stack = TestStack(providers: const [_google])
        ..add(project)
        ..add(
          FakePubsubTopic.withMeta(
            'a',
            argMap: const {},
            lifecycle: LifecycleOptions(
              ignoreChanges: const .of(['labels', 'all']),
              replaceTriggeredBy: [
                project,
                TfRef.attribute<String>(project, 'number'),
                TfRef.attribute<String>(project, 'id'),
              ],
              conditions: [.pre(.expression(r'${true}'), ' ')],
            ),
          ),
        );
      expect(stack.validate(), [
        for (var i = 0; i < 5; i++)
          isA<InvalidLifecycle>().having(
            (i) => i.address,
            'address',
            'google_pubsub_topic.a',
          ),
      ]);
    });

    test('lifecycle conditions are checked for references too', () {
      final orphan = _topic('orphan');
      final stack = TestStack(providers: const [_google])
        ..add(
          FakePubsubTopic.withMeta(
            'a',
            argMap: const {},
            lifecycle: LifecycleOptions(
              conditions: [
                .pre(.variable('enabled'), 'disabled'),
                .post(TfRef.attribute<bool>(orphan, 'ready'), 'not ready'),
              ],
            ),
          ),
        );
      expect(stack.validate(), [
        isA<UndeclaredVariable>().having((i) => i.name, 'name', 'enabled'),
        isA<UnregisteredReference>().having(
          (i) => i.target,
          'target',
          'google_pubsub_topic.orphan',
        ),
      ]);
    });

    test('a resource and its attributes are replace triggers', () {
      final template = _topic('template');
      final stack = TestStack(providers: const [_google])
        ..add(template)
        ..add(
          FakePubsubTopic.withMeta(
            'a',
            argMap: const {},
            lifecycle: LifecycleOptions(
              ignoreChanges: .all,
              replaceTriggeredBy: [
                template,
                TfRef.attribute<String>(template, 'id'),
              ],
            ),
          ),
        );
      expect(stack.validate(), isEmpty);
    });

    test('outputs and module inputs are checked too', () {
      final orphan = _topic('orphan');
      final stack = TestStack(providers: const [_google])
        ..addModule(
          ModuleCall(
            'm',
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
        ..externalVariable<String>('topics')
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
        ..externalVariable<String>('x');
      expect(stack.validate().map((i) => (i as UnregisteredReference).target), [
        'data.http.ip',
      ]);
    });

    test('a for-expression variable named like a block root is not one', () {
      final stack = TestStack(providers: const [_google])
        ..externalVariable<String>('mods')
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
        ..externalVariable<String>('mods')
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

    test('strips index brackets when checking dependsOn targets', () {
      final stack = TestStack(providers: const [_google])
        ..add(_topic('orders'))
        ..add(
          FakePubsubTopic.withMeta(
            'consumer',
            argMap: const {},
            dependsOn: const [AddressStub('google_pubsub_topic.orders[0]')],
          ),
        );
      expect(stack.validate(), isEmpty);
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
        () => stack.add(FakeProjectData('1st', argMap: const {})),
        throwsArgumentError,
      );
      expect(
        () => stack.addModule(ModuleCall('a.b', source: './m')),
        throwsArgumentError,
      );
    });

    test('a variable name that is not a Terraform identifier is refused', () {
      final stack = TestStack(providers: const [_google]);
      expect(() => stack.variable<String>('db password'), throwsArgumentError);
      expect(
        () => stack.externalVariable<String>('9lives'),
        throwsArgumentError,
      );
    });
  });

  group('SensitiveLiteral', () {
    test('names the Dart parameter and the variable fix', () {
      final stack = TestStack(providers: const [_google])
        ..add(
          FakeSecretVersion(
            'v1',
            argMap: const {'secret_data': TfArgLiteral<String>('hunter2')},
          ),
        );
      expect(
        () => stack.synth(),
        throwsSynthIssue<SensitiveLiteral>(
          allOf(
            startsWith('google_secret_manager_secret_version.v1: '),
            contains('"secret_data"'),
            contains("final secretData = variable<String>('secret_data'"),
            contains('secret_data_wo'),
          ),
        ),
      );
    });

    test('detects literals along multi-level concrete sensitive paths', () {
      final bad = TestStack(providers: const [_google])
        ..add(
          _NestedSecretResource(
            'svc',
            argMap: const {
              'auth': TfArgLiteral<Map<String, Object?>>({
                'tls': {'private_key': 'pem-literal'},
              }),
            },
          ),
        );
      expect(
        () => bad.synth(),
        throwsSynthIssue<SensitiveLiteral>(contains('"auth.tls.private_key"')),
      );

      final missingBranch = TestStack(providers: const [_google])
        ..add(
          _NestedSecretResource(
            'svc',
            argMap: const {
              'auth': TfArgLiteral<Map<String, Object?>>({
                'other': {'private_key': 'not-sensitive'},
              }),
            },
          ),
        );
      expect(missingBranch.validate(), isEmpty);
    });

    test('a sensitive input of a data source set to a literal', () {
      final stack = TestStack(providers: const [_google])
        ..add(
          FakeSecretData(
            'key',
            argMap: const {'plaintext': TfArgLiteral<String>('hunter2')},
          ),
        );
      expect(stack.validate(), [
        isA<SensitiveLiteral>()
            .having((i) => i.address, 'address', 'data.google_kms_secret.key')
            .having((i) => i.field, 'field', 'plaintext'),
      ]);
    });
  });

  group('a literal string is a Terraform template', () {
    test('its var.<name> must be declared', () {
      final stack = TestStack(providers: const [_google])
        ..add(_reader('a', .literal(r'orders-${var.suffix}')))
        ..add(
          FakePubsubTopic(
            'b',
            argMap: {
              'labels': TfArg.literal({'env': r'${var.env}'}),
            },
          ),
        );
      expect(stack.validate(), [
        isA<UndeclaredVariable>()
            .having((i) => i.address, 'address', 'google_pubsub_topic.a')
            .having((i) => i.name, 'name', 'suffix'),
        isA<UndeclaredVariable>()
            .having((i) => i.address, 'address', 'google_pubsub_topic.b')
            .having((i) => i.name, 'name', 'env'),
      ]);
    });

    test(r'$${ is the text itself, not a reference', () {
      final stack = TestStack(providers: const [_google])
        ..add(_reader('a', .literal(r'orders-$${var.suffix}')));
      expect(stack.validate(), isEmpty);
    });
  });

  group('SensitiveOutput', () {
    test('an output of a sensitive variable must be sensitive', () {
      final stack = TestStack(providers: const [_google]);
      final password = stack.variable<String>('db_password', sensitive: true);
      stack
        ..addOutput('handle', password)
        ..addOutput(
          'url',
          TfArg.expression<String>(r'postgres://app:${var.db_password}@db'),
        )
        ..addOutput('marked', password, sensitive: true);
      expect(stack.validate(), [
        isA<SensitiveOutput>()
            .having((i) => i.address, 'address', 'output.handle')
            .having((i) => i.reads, 'reads', 'var.db_password'),
        isA<SensitiveOutput>()
            .having((i) => i.address, 'address', 'output.url')
            .having((i) => i.reads, 'reads', 'var.db_password'),
      ]);
    });

    test('an expression reading a sensitive field must be sensitive', () {
      final stack = TestStack(providers: const [_google])
        ..addOutput(
          'secret',
          TfArg.expression<String>(
            r'${google_secret_manager_secret_version.v.secret_data}',
          ),
        )
        ..add(FakeSecretVersion('v', argMap: const {}));
      expect(stack.validate(), [
        isA<SensitiveOutput>().having(
          (i) => i.reads,
          'reads',
          'google_secret_manager_secret_version.v.secret_data',
        ),
      ]);
    });

    test('a variable declared after the output counts', () {
      final stack = TestStack(providers: const [_google])
        ..addOutput('pw', TfArg.variable<String>('db_password'))
        ..variable<String>('db_password', sensitive: true);
      expect(stack.validate(), [isA<SensitiveOutput>()]);
    });

    test('a dart-define output never carries a sensitive value', () {
      final stack = TestStack(providers: const [_google]);
      final token = stack.variable<String>('api_token', sensitive: true);
      stack
        ..addOutput('api_token', token)
        ..addDartDefineOutput();
      expect(
        stack.synth,
        throwsSynthIssue<SensitiveOutput>(contains('output.api_token')),
      );
    });
  });

  group('references to blocks of any provider', () {
    test('an attribute of a block never added', () {
      final orphan = FakeResource('orphan', name: const TfArgLiteral('o'));
      final stack = TestStack(providers: const [_google])
        ..add(_reader('copy', TfRef.attribute(orphan, 'name')))
        ..add(
          FakePubsubTopic(
            'list',
            argMap: {
              'ids': TfArg<List<Object?>>.literal([
                TfRef.attribute<String>(orphan, 'id'),
              ]),
            },
          ),
        );
      expect(stack.validate(), [
        isA<UnregisteredReference>()
            .having((i) => i.address, 'address', 'google_pubsub_topic.copy')
            .having((i) => i.target, 'target', 'fake_thing.orphan'),
        isA<UnregisteredReference>()
            .having((i) => i.address, 'address', 'google_pubsub_topic.list')
            .having((i) => i.target, 'target', 'fake_thing.orphan'),
      ]);
    });
  });

  group('InvalidLifecycle', () {
    test('a module output is no replace trigger', () {
      final stack = TestStack(providers: const [_google]);
      final sa = stack.addModule(ModuleCall('sa', source: './sa'));
      stack.add(
        FakePubsubTopic.withMeta(
          't',
          argMap: const {},
          lifecycle: LifecycleOptions(
            replaceTriggeredBy: [sa.output<String>('member')],
          ),
        ),
      );
      expect(stack.validate(), [
        isA<InvalidLifecycle>().having(
          (i) => i.message,
          'message',
          contains('module output "module.sa.member"'),
        ),
      ]);
    });
  });

  group('SynthIssue', () {
    test('a switch handles the issues it knows and needs no other case', () {
      final stack = TestStack(providers: const [_google])
        ..add(_reader('a', .variable('missing')))
        ..addMoved('google_pubsub_topic.old', 'google_pubsub_topic.nope');
      final names = <String>[];
      for (final issue in stack.validate()) {
        switch (issue) {
          case UndeclaredVariable(:final name):
            names.add(name);
        }
      }
      expect(names, ['missing']);
    });
  });
}

final class _NestedSecretResource extends Resource {
  _NestedSecretResource(super.localName, {required super.argMap})
    : super(terraformType: 'google_secret_manager_secret_version');

  @override
  Set<String> get sensitiveFields => const {'auth.tls.private_key'};
}
