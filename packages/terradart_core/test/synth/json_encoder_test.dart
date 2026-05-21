import 'package:terradart_core/src/backends.dart';
import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/synth/json_encoder.dart';
import 'package:terradart_core/src/synth/output_emitter.dart';
import 'package:terradart_core/src/synth/sensitive_literal_error.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';
import 'package:test/test.dart';

import '../helpers/fake_resources.dart';

void main() {
  group('TfJsonEncoder.terraformBlock', () {
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
      final block = TfJsonEncoder.terraformBlock(stack);
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
      final block = TfJsonEncoder.terraformBlock(stack);
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
      final block = TfJsonEncoder.terraformBlock(stack);
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
      final block = TfJsonEncoder.terraformBlock(stack);
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
        () => TfJsonEncoder.terraformBlock(stack),
        throwsA(isA<StateError>()),
      );
    });
  });

  group('TfJsonEncoder.providerBlock', () {
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
      final block = TfJsonEncoder.providerBlock(stack);
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
      final block = TfJsonEncoder.providerBlock(stack);
      expect(block, isNull);
    });
  });

  group('TfJsonEncoder.encodeArg', () {
    test('literal scalar pass-through', () {
      expect(
        TfJsonEncoder.encodeArg(const TfArgLiteral<String>('orders-prod')),
        equals('orders-prod'),
      );
      expect(
        TfJsonEncoder.encodeArg(const TfArgLiteral<int>(7)),
        equals(7),
      );
      expect(
        TfJsonEncoder.encodeArg(const TfArgLiteral<bool>(true)),
        isTrue,
      );
    });

    test('TfArgRef -> interpolation string', () {
      final ref = TfRef.attribute<String>(
        const AddressStub('data.google_project.this'),
        'project_id',
      );
      expect(
        TfJsonEncoder.encodeArg(TfArgRef<String>(ref)),
        equals(r'${data.google_project.this.project_id}'),
      );
    });

    test('literal Map is recursively encoded', () {
      final arg = TfArgLiteral<Map<String, dynamic>>({
        'env': 'prod',
        'team': 'platform',
      });
      expect(
        TfJsonEncoder.encodeArg(arg),
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
        TfJsonEncoder.encodeArg(arg),
        equals(['a', r'${google_pubsub_topic.x.name}']),
      );
    });

    test('encodeArgMap drops null entries (optional fields not set)', () {
      final m = <String, TfArg<dynamic>?>{
        'name': const TfArgLiteral<String>('x'),
        'labels': null,
      };
      expect(TfJsonEncoder.encodeArgMap(m), equals({'name': 'x'}));
    });

    test('encodeArgMap drops literal-null values', () {
      final m = <String, TfArg<dynamic>?>{
        'name': const TfArgLiteral<String>('x'),
        'labels': const TfArgLiteral<Map<String, dynamic>?>(null),
      };
      expect(TfJsonEncoder.encodeArgMap(m), equals({'name': 'x'}));
    });
  });

  group('TfJsonEncoder.encodeBareAddress', () {
    test('attribute ref returns owner.tfAddress + attr (no \${})', () {
      final ref = TfRef.attribute<String>(
        const AddressStub('google_pubsub_topic.orders'),
        'name',
      );
      expect(
        TfJsonEncoder.encodeBareAddress(ref),
        equals('google_pubsub_topic.orders.name'),
      );
    });

    test('data ref returns owner.tfAddress + attr (no \${})', () {
      final ref = TfRef.data<String>(
        const AddressStub('data.google_project.this'),
        'project_id',
      );
      expect(
        TfJsonEncoder.encodeBareAddress(ref),
        equals('data.google_project.this.project_id'),
      );
    });
  });

  group('TfJsonEncoder sensitive masking', () {
    test('replaces sensitive field literal with empty string', () {
      final argMap = <String, TfArg<dynamic>?>{
        'name': const TfArgLiteral<String>('orders-secret'),
        'secret_data': const TfArgLiteral<String>('SUPER-SECRET'),
      };
      const sensitiveFields = {'secret_data'};

      final out = TfJsonEncoder.encodeArgMapWithSensitive(
        argMap: argMap,
        sensitiveFields: sensitiveFields,
        resourceAddress: 'google_secret_manager_secret_version.legacy',
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
      final out = TfJsonEncoder.encodeArgMapWithSensitive(
        argMap: argMap,
        sensitiveFields: const {'secret_data'},
        resourceAddress: 'google_secret_manager_secret_version.legacy',
      );
      expect(
        out,
        equals({'secret_data': r'${data.external.vault.value}'}),
      );
    });

    test('TG-5: nested-path sensitive masks literal leaf at depth-2', () {
      // Mirrors GoogleStorageBucketObject's CustomerEncryption helper —
      // the top-level `customer_encryption` slot is `TfArg.literal([{...}])`
      // (single-element list of a Dart Map). The sensitive set carries
      // the dotted path `customer_encryption.encryption_key`; the masker
      // must walk through the list wrap and the map to reach the leaf.
      final argMap = <String, TfArg<dynamic>?>{
        'customer_encryption': const TfArgLiteral<List<dynamic>>([
          {
            'encryption_algorithm': 'AES256',
            'encryption_key': 'raw-base64-key',
          },
        ]),
      };
      final out = TfJsonEncoder.encodeArgMapWithSensitive(
        argMap: argMap,
        sensitiveFields: const {'customer_encryption.encryption_key'},
        resourceAddress: 'google_storage_bucket_object.legacy',
      );
      expect(
        out,
        equals({
          'customer_encryption': [
            {'encryption_algorithm': 'AES256', 'encryption_key': ''},
          ],
        }),
      );
    });

    test('TG-5: nested-path sensitive preserves ref interpolation at leaf', () {
      // If the leaf is a ref string (`${...}`), Terraform sees only the
      // interpolation — zeroing it would break the wiring.
      final argMap = <String, TfArg<dynamic>?>{
        'customer_encryption': const TfArgLiteral<List<dynamic>>([
          {
            'encryption_algorithm': 'AES256',
            'encryption_key': r'${var.csek_key}',
          },
        ]),
      };
      final out = TfJsonEncoder.encodeArgMapWithSensitive(
        argMap: argMap,
        sensitiveFields: const {'customer_encryption.encryption_key'},
        resourceAddress: 'google_storage_bucket_object.legacy',
      );
      expect(
        out,
        equals({
          'customer_encryption': [
            {
              'encryption_algorithm': 'AES256',
              'encryption_key': r'${var.csek_key}',
            },
          ],
        }),
      );
    });

    test('TG-5: multiple sibling nested paths under the same parent', () {
      // Both `block.a` and `block.b` should mask within one pass.
      final argMap = <String, TfArg<dynamic>?>{
        'block': const TfArgLiteral<List<dynamic>>([
          {'a': 'A-val', 'b': 'B-val', 'c': 'C-val'},
        ]),
      };
      final out = TfJsonEncoder.encodeArgMapWithSensitive(
        argMap: argMap,
        sensitiveFields: const {'block.a', 'block.b'},
        resourceAddress: 'fake_thing.legacy',
      );
      expect(
        out,
        equals({
          'block': [
            {'a': '', 'b': '', 'c': 'C-val'},
          ],
        }),
      );
    });
  });

  group('TfJsonEncoder.lifecycleBlock', () {
    test('returns null for empty lifecycle', () {
      expect(TfJsonEncoder.lifecycleBlock(const LifecycleOptions()), isNull);
    });

    test('emits create_before_destroy', () {
      final out = TfJsonEncoder.lifecycleBlock(
        const LifecycleOptions(createBeforeDestroy: true),
      );
      expect(out, equals({'create_before_destroy': true}));
    });

    test('emits prevent_destroy and ignore_changes', () {
      final out = TfJsonEncoder.lifecycleBlock(
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
      final out = TfJsonEncoder.lifecycleBlock(
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

  group('TfJsonEncoder.dependsOn', () {
    test('null when no dependencies', () {
      expect(TfJsonEncoder.dependsOn(const []), isNull);
    });

    test('emits bare addresses for ResourceDependency', () {
      final deps = <DependencyTarget>[
        const ResourceDependency(AddressStub('google_pubsub_topic.orders')),
        const ResourceDependency(
          AddressStub('google_storage_bucket.archive'),
        ),
      ];
      expect(
        TfJsonEncoder.dependsOn(deps),
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
        TfJsonEncoder.dependsOn(deps),
        equals(['google_pubsub_topic.orders.id']),
      );
    });
  });

  group('TfJsonEncoder.resourceBlock', () {
    test('emits literal-only resource', () {
      final r = FakePubsubTopic(
        localName: 'orders',
        argMap: const {'name': TfArgLiteral<String>('orders-prod')},
      );
      final out = TfJsonEncoder.resourceBlock(r);
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
      final out = TfJsonEncoder.resourceBlock(r);
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
      final out = TfJsonEncoder.resourceBlock(r);
      expect(
        out,
        equals({
          'secret': 'projects/x/secrets/api-key',
          'secret_data': '',
        }),
      );
    });
  });

  group('TfJsonEncoder.resourcesGroup / dataGroup', () {
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

      final group = TfJsonEncoder.resourcesGroup(stack);
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
      expect(TfJsonEncoder.resourcesGroup(TestStack()), isNull);
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
      final group = TfJsonEncoder.dataGroup(stack);
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
      expect(TfJsonEncoder.dataGroup(TestStack()), isNull);
    });
  });

  group('TfJsonEncoder.outputBlock', () {
    test('returns null for empty list', () {
      expect(TfJsonEncoder.outputBlock(const []), isNull);
    });

    test('serialises minimal output', () {
      final out = TfJsonEncoder.outputBlock(const [
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
      final out = TfJsonEncoder.outputBlock(const [
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

  group('TfJsonEncoder.terraformBlock — LocalBackend', () {
    test('LocalBackend() with no path emits {"local": {}}', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
        backend: const LocalBackend(),
      );
      final block = TfJsonEncoder.terraformBlock(stack);
      expect(
        block['backend'],
        equals({'local': <String, Object?>{}}),
      );
    });

    test('LocalBackend(path:) emits {"local": {"path": "..."}}', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
        backend: const LocalBackend(path: 'state/terraform.tfstate'),
      );
      final block = TfJsonEncoder.terraformBlock(stack);
      expect(
        block['backend'],
        equals({'local': {'path': 'state/terraform.tfstate'}}),
      );
    });
  });

  group('TfJsonEncoder.encodeArg variable routing', () {
    test('TfArgVariable returns the interpolation string verbatim', () {
      final arg = TfArgVariable<String>('db_password');
      final out = TfJsonEncoder.encodeArg(arg);
      expect(out, equals(r'${var.db_password}'));
    });

    test('TfArgVariable inside an argMap encodes without recursion', () {
      final argMap = <String, TfArg<dynamic>?>{
        'password': TfArgVariable<String>('db_password'),
        'name': const TfArgLiteral<String>('alice'),
      };
      final out = TfJsonEncoder.encodeArgMap(argMap);
      expect(
        out,
        equals({
          'password': r'${var.db_password}',
          'name': 'alice',
        }),
      );
    });
  });

  group('TfJsonEncoder sensitive throw (nested)', () {
    test('throws SensitiveLiteralError on nested literal-on-sensitive', () {
      final argMap = <String, TfArg<dynamic>?>{
        'customer_encryption': const TfArgLiteral<List<dynamic>>([
          {
            'encryption_algorithm': 'AES256',
            'encryption_key': 'raw-base64-key',
          },
        ]),
      };
      expect(
        () => TfJsonEncoder.encodeArgMapWithSensitive(
          argMap: argMap,
          sensitiveFields: const {'customer_encryption.encryption_key'},
          resourceAddress: 'google_storage_bucket_object.assets',
        ),
        throwsA(
          isA<SensitiveLiteralError>().having(
            (e) => e.fieldPath,
            'fieldPath',
            equals('customer_encryption.encryption_key'),
          ),
        ),
      );
    });

    test('nested ref interpolation at sensitive leaf passes through', () {
      final argMap = <String, TfArg<dynamic>?>{
        'customer_encryption': const TfArgLiteral<List<dynamic>>([
          {
            'encryption_algorithm': 'AES256',
            'encryption_key': r'${var.csek_key}',
          },
        ]),
      };
      final out = TfJsonEncoder.encodeArgMapWithSensitive(
        argMap: argMap,
        sensitiveFields: const {'customer_encryption.encryption_key'},
        resourceAddress: 'google_storage_bucket_object.assets',
      );
      expect(
        out,
        equals({
          'customer_encryption': [
            {
              'encryption_algorithm': 'AES256',
              'encryption_key': r'${var.csek_key}',
            },
          ],
        }),
      );
    });

    test('nested: multiple sibling sensitive paths — first literal throws',
        () {
      final argMap = <String, TfArg<dynamic>?>{
        'block': const TfArgLiteral<List<dynamic>>([
          {'a': 'A-val', 'b': 'B-val', 'c': 'C-val'},
        ]),
      };
      expect(
        () => TfJsonEncoder.encodeArgMapWithSensitive(
          argMap: argMap,
          sensitiveFields: const {'block.a', 'block.b'},
          resourceAddress: 'fake.r',
        ),
        throwsA(isA<SensitiveLiteralError>()),
      );
    });
  });

  group('TfJsonEncoder sensitive throw (top-level)', () {
    test('throws SensitiveLiteralError on TfArgLiteral assigned to '
        'sensitive top-level field', () {
      final argMap = <String, TfArg<dynamic>?>{
        'name': const TfArgLiteral<String>('orders-secret'),
        'secret_data': const TfArgLiteral<String>('SUPER-SECRET'),
      };
      expect(
        () => TfJsonEncoder.encodeArgMapWithSensitive(
          argMap: argMap,
          sensitiveFields: const {'secret_data'},
          resourceAddress: 'google_secret_manager_secret_version.v1',
        ),
        throwsA(
          isA<SensitiveLiteralError>()
              .having((e) => e.fieldPath, 'fieldPath', equals('secret_data'))
              .having(
                (e) => e.resourceAddress,
                'resourceAddress',
                equals('google_secret_manager_secret_version.v1'),
              ),
        ),
      );
    });

    test('TfArgRef on sensitive top-level passes through (no throw)', () {
      final argMap = <String, TfArg<dynamic>?>{
        'secret_data': TfArgRef<String>(
          TfRef.attribute<String>(
            const AddressStub('data.external.vault'),
            'value',
          ),
        ),
      };
      final out = TfJsonEncoder.encodeArgMapWithSensitive(
        argMap: argMap,
        sensitiveFields: const {'secret_data'},
        resourceAddress: 'google_secret_manager_secret_version.v1',
      );
      expect(out, equals({'secret_data': r'${data.external.vault.value}'}));
    });

    test('TfArgVariable on sensitive top-level passes through (no throw)',
        () {
      final argMap = <String, TfArg<dynamic>?>{
        'secret_data': TfArgVariable<String>('db_secret'),
      };
      final out = TfJsonEncoder.encodeArgMapWithSensitive(
        argMap: argMap,
        sensitiveFields: const {'secret_data'},
        resourceAddress: 'google_secret_manager_secret_version.v1',
      );
      expect(out, equals({'secret_data': r'${var.db_secret}'}));
    });
  });
}
