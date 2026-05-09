import 'package:terradart_core/src/backends.dart';
import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/synth/json_encoder.dart';
import 'package:terradart_core/src/synth/output_emitter.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';
import 'package:test/test.dart';

import '../helpers/fake_resources.dart';

void main() {
  group('JsonEncoder.terraformBlock', () {
    test('default required_version is >= 1.11.0', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      final block = JsonEncoder.terraformBlock(stack);
      expect(
        block,
        equals({
          'required_version': '>= 1.11.0',
          'required_providers': {
            'google': {
              'source': 'hashicorp/google',
              'version': '~> 7.0',
            },
          },
        }),
      );
    });

    test('Stack-level required_version override is honoured', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      )..setRequiredVersion('>= 1.6.0');
      final block = JsonEncoder.terraformBlock(stack);
      expect(block['required_version'], equals('>= 1.6.0'));
    });

    test('GCS backend is included when configured', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
        backend: const GcsBackend(
          bucket: 'tfstate-orders',
          prefix: 'envs/prod',
        ),
      );
      final block = JsonEncoder.terraformBlock(stack);
      expect(
        block['backend'],
        equals({
          'gcs': {
            'bucket': 'tfstate-orders',
            'prefix': 'envs/prod',
          },
        }),
      );
    });

    test('GCS backend without prefix omits the field', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
        backend: const GcsBackend(bucket: 'tfstate-orders'),
      );
      final block = JsonEncoder.terraformBlock(stack);
      expect(
        block['backend'],
        equals({
          'gcs': {'bucket': 'tfstate-orders'},
        }),
      );
    });

    test('throws when no providers registered', () {
      final stack = TestStack();
      expect(
        () => JsonEncoder.terraformBlock(stack),
        throwsA(isA<StateError>()),
      );
    });
  });

  group('JsonEncoder.providerBlock', () {
    test('emits google provider with project and region', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
            configArgs: {
              'project': 'orders-prod-1234',
              'region': 'us-central1',
            },
          ),
        ],
      );
      final block = JsonEncoder.providerBlock(stack);
      expect(
        block,
        equals({
          'google': {
            'project': 'orders-prod-1234',
            'region': 'us-central1',
          },
        }),
      );
    });

    test('omits provider block entirely if no configArgs', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      final block = JsonEncoder.providerBlock(stack);
      expect(block, isNull);
    });
  });

  group('JsonEncoder.encodeArg', () {
    test('literal scalar pass-through', () {
      expect(
        JsonEncoder.encodeArg(const TfArgLiteral<String>('orders-prod')),
        equals('orders-prod'),
      );
      expect(
        JsonEncoder.encodeArg(const TfArgLiteral<int>(7)),
        equals(7),
      );
      expect(
        JsonEncoder.encodeArg(const TfArgLiteral<bool>(true)),
        isTrue,
      );
    });

    test('TfArgRef -> interpolation string', () {
      final ref = TfRef.attribute<String>(
        const AddressStub('data.google_project.this'),
        'project_id',
      );
      expect(
        JsonEncoder.encodeArg(TfArgRef<String>(ref)),
        equals(r'${data.google_project.this.project_id}'),
      );
    });

    test('literal Map is recursively encoded', () {
      final arg = TfArgLiteral<Map<String, dynamic>>({
        'env': 'prod',
        'team': 'platform',
      });
      expect(
        JsonEncoder.encodeArg(arg),
        equals({'env': 'prod', 'team': 'platform'}),
      );
    });

    test('literal List<TfArg> is recursively encoded', () {
      final arg = TfArgLiteral<List<dynamic>>([
        const TfArgLiteral<String>('a'),
        TfArgRef<String>(
          TfRef.attribute<String>(
            const AddressStub('google_pubsub_topic.x'),
            'name',
          ),
        ),
      ]);
      expect(
        JsonEncoder.encodeArg(arg),
        equals(['a', r'${google_pubsub_topic.x.name}']),
      );
    });

    test('encodeArgMap drops null entries (optional fields not set)', () {
      final m = <String, TfArg<dynamic>?>{
        'name': const TfArgLiteral<String>('x'),
        'labels': null,
      };
      expect(JsonEncoder.encodeArgMap(m), equals({'name': 'x'}));
    });

    test('encodeArgMap drops literal-null values', () {
      final m = <String, TfArg<dynamic>?>{
        'name': const TfArgLiteral<String>('x'),
        'labels': const TfArgLiteral<Map<String, dynamic>?>(null),
      };
      expect(JsonEncoder.encodeArgMap(m), equals({'name': 'x'}));
    });
  });

  group('JsonEncoder.encodeBareAddress', () {
    test('attribute ref returns owner.tfAddress + attr (no \${})', () {
      final ref = TfRef.attribute<String>(
        const AddressStub('google_pubsub_topic.orders'),
        'name',
      );
      expect(
        JsonEncoder.encodeBareAddress(ref),
        equals('google_pubsub_topic.orders.name'),
      );
    });

    test('data ref returns owner.tfAddress + attr (no \${})', () {
      final ref = TfRef.data<String>(
        const AddressStub('data.google_project.this'),
        'project_id',
      );
      expect(
        JsonEncoder.encodeBareAddress(ref),
        equals('data.google_project.this.project_id'),
      );
    });
  });

  group('JsonEncoder sensitive masking', () {
    test('replaces sensitive field literal with empty string', () {
      final argMap = <String, TfArg<dynamic>?>{
        'name': const TfArgLiteral<String>('orders-secret'),
        'secret_data': const TfArgLiteral<String>('SUPER-SECRET'),
      };
      const sensitiveFields = {'secret_data'};

      final out = JsonEncoder.encodeArgMapWithSensitive(
        argMap: argMap,
        sensitiveFields: sensitiveFields,
      );
      expect(
        out,
        equals({
          'name': 'orders-secret',
          'secret_data': '',
        }),
      );
    });

    test('preserves sensitive field that is a ref (no masking needed)', () {
      final argMap = <String, TfArg<dynamic>?>{
        'secret_data': TfArgRef<String>(
          TfRef.attribute<String>(
            const AddressStub('data.external.vault'),
            'value',
          ),
        ),
      };
      final out = JsonEncoder.encodeArgMapWithSensitive(
        argMap: argMap,
        sensitiveFields: const {'secret_data'},
      );
      expect(
        out,
        equals({'secret_data': r'${data.external.vault.value}'}),
      );
    });
  });

  group('JsonEncoder.lifecycleBlock', () {
    test('returns null for empty lifecycle', () {
      expect(JsonEncoder.lifecycleBlock(const LifecycleOptions()), isNull);
    });

    test('emits create_before_destroy', () {
      final out = JsonEncoder.lifecycleBlock(
        const LifecycleOptions(createBeforeDestroy: true),
      );
      expect(out, equals({'create_before_destroy': true}));
    });

    test('emits prevent_destroy and ignore_changes', () {
      final out = JsonEncoder.lifecycleBlock(
        const LifecycleOptions(
          preventDestroy: true,
          ignoreChanges: ['labels', 'description'],
        ),
      );
      expect(
        out,
        equals({
          'prevent_destroy': true,
          'ignore_changes': ['labels', 'description'],
        }),
      );
    });

    test('replace_triggered_by accepts attribute refs (no \${})', () {
      final ref = TfRef.attribute<dynamic>(
        const AddressStub('google_pubsub_topic.orders'),
        'id',
      );
      final out = JsonEncoder.lifecycleBlock(
        LifecycleOptions(replaceTriggeredBy: [ref]),
      );
      expect(
        out,
        equals({
          'replace_triggered_by': ['google_pubsub_topic.orders.id'],
        }),
      );
      // Critical: NOT '${google_pubsub_topic.orders.id}'.
      final entries = out!['replace_triggered_by']! as List<dynamic>;
      expect(entries.first, isNot(startsWith(r'${')));
    });
  });

  group('JsonEncoder.dependsOn', () {
    test('null when no dependencies', () {
      expect(JsonEncoder.dependsOn(const []), isNull);
    });

    test('emits bare addresses for ResourceDependency', () {
      final deps = <DependencyTarget>[
        const ResourceDependency(AddressStub('google_pubsub_topic.orders')),
        const ResourceDependency(
          AddressStub('google_storage_bucket.archive'),
        ),
      ];
      expect(
        JsonEncoder.dependsOn(deps),
        equals([
          'google_pubsub_topic.orders',
          'google_storage_bucket.archive',
        ]),
      );
    });

    test('emits bare addresses for RefDependency (attribute ref)', () {
      final ref = TfRef.attribute<String>(
        const AddressStub('google_pubsub_topic.orders'),
        'id',
      );
      final deps = <DependencyTarget>[RefDependency(ref)];
      expect(
        JsonEncoder.dependsOn(deps),
        equals(['google_pubsub_topic.orders.id']),
      );
    });
  });

  group('JsonEncoder.resourceBlock', () {
    test('emits literal-only resource', () {
      final r = FakePubsubTopic(
        localName: 'orders',
        argMap: const {'name': TfArgLiteral<String>('orders-prod')},
      );
      final out = JsonEncoder.resourceBlock(r);
      expect(out, equals({'name': 'orders-prod'}));
    });

    test('combines lifecycle + depends_on', () {
      final r = FakePubsubTopic.withMeta(
        localName: 'orders',
        argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        lifecycle: const LifecycleOptions(preventDestroy: true),
        dependsOn: <DependencyTarget>[
          const ResourceDependency(
            AddressStub('google_storage_bucket.archive'),
          ),
        ],
      );
      final out = JsonEncoder.resourceBlock(r);
      expect(
        out,
        equals({
          'name': 'orders-prod',
          'depends_on': ['google_storage_bucket.archive'],
          'lifecycle': {'prevent_destroy': true},
        }),
      );
    });

    test('sensitiveFields metadata masks literals', () {
      final r = FakeSecretVersion(
        localName: 'api_key',
        argMap: const {
          'secret': TfArgLiteral<String>('projects/x/secrets/api-key'),
          'secret_data': TfArgLiteral<String>('PLAINTEXT'),
        },
      );
      final out = JsonEncoder.resourceBlock(r);
      expect(
        out,
        equals({
          'secret': 'projects/x/secrets/api-key',
          'secret_data': '',
        }),
      );
    });
  });

  group('JsonEncoder.resourcesGroup / dataGroup', () {
    test('groups by terraform type', () {
      final stack = TestStack();
      stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );
      stack.add(
        FakePubsubTopic(
          localName: 'audit',
          argMap: const {'name': TfArgLiteral<String>('audit-prod')},
        ),
      );

      final group = JsonEncoder.resourcesGroup(stack);
      expect(
        group,
        equals({
          'google_pubsub_topic': {
            'orders': {'name': 'orders-prod'},
            'audit': {'name': 'audit-prod'},
          },
        }),
      );
    });

    test('returns null for empty stack', () {
      expect(JsonEncoder.resourcesGroup(TestStack()), isNull);
    });

    test('dataGroup separates from resources', () {
      final stack = TestStack();
      stack.addData(
        FakeProjectData(
          localName: 'this',
          argMap: const {
            'project_id': TfArgLiteral<String>('orders-prod'),
          },
        ),
      );
      final group = JsonEncoder.dataGroup(stack);
      expect(
        group,
        equals({
          'google_project': {
            'this': {'project_id': 'orders-prod'},
          },
        }),
      );
    });

    test('dataGroup returns null for empty stack', () {
      expect(JsonEncoder.dataGroup(TestStack()), isNull);
    });
  });

  group('JsonEncoder.outputBlock', () {
    test('returns null for empty list', () {
      expect(JsonEncoder.outputBlock(const []), isNull);
    });

    test('serialises minimal output', () {
      final out = JsonEncoder.outputBlock(const [
        TerraformOutputSpec(
          name: 'topicName',
          value: r'${google_pubsub_topic.orders.name}',
          sensitive: false,
        ),
      ]);
      expect(
        out,
        equals({
          'topicName': {
            'value': r'${google_pubsub_topic.orders.name}',
          },
        }),
      );
    });

    test('serialises sensitive + description', () {
      final out = JsonEncoder.outputBlock(const [
        TerraformOutputSpec(
          name: 'apiKey',
          value: r'${google_secret_manager_secret_version.api.secret_data}',
          sensitive: true,
          description: 'API key (sensitive)',
        ),
      ]);
      expect(
        out,
        equals({
          'apiKey': {
            'value': r'${google_secret_manager_secret_version.api.secret_data}',
            'sensitive': true,
            'description': 'API key (sensitive)',
          },
        }),
      );
    });
  });
}
