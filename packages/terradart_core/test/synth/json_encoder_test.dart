import 'package:terradart_core/src/backends.dart';
import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/synth/json_encoder.dart';
import 'package:terradart_core/src/synth/stack_validator.dart';
import 'package:terradart_core/src/synth/synth_issue.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:test/test.dart';

import '../helpers/fake_resources.dart';
import '../helpers/synth_issues.dart';

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
            'google': {'source': 'hashicorp/google', 'version': '~> 7.0'},
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
        requiredVersion: '>= 1.6.0',
      );
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
          'gcs': {'bucket': 'tfstate-orders', 'prefix': 'envs/prod'},
        }),
      );
    });

    test('S3 backend is included when configured', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
        backend: const S3Backend(
          bucket: 'tfstate-orders',
          key: 'envs/prod/terraform.tfstate',
          region: 'ap-northeast-1',
        ),
      );
      final block = TfJsonEncoder.terraformBlock(stack);
      expect(
        block['backend'],
        equals({
          's3': {
            'bucket': 'tfstate-orders',
            'key': 'envs/prod/terraform.tfstate',
            'region': 'ap-northeast-1',
          },
        }),
      );
    });

    test('S3 backend for R2 emits the endpoint and skip flags', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
        backend: S3Backend.r2(
          accountId: 'abc123',
          bucket: 'tfstate-orders',
          key: 'site/terraform.tfstate',
        ),
      );
      final backend =
          (TfJsonEncoder.terraformBlock(stack)['backend'] as Map)['s3'] as Map;
      expect(
        backend['endpoints'],
        equals({'s3': 'https://abc123.r2.cloudflarestorage.com'}),
      );
      expect(backend['region'], equals('auto'));
      expect(backend['use_path_style'], isTrue);
      expect(backend['skip_s3_checksum'], isTrue);
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

    test('a Stack with no provider is a NoProviders issue', () {
      final stack = TestStack()
        ..add(FakePubsubTopic('orders', argMap: const {}));
      expect(stack.validate(), [isA<NoProviders>()]);
      expect(() => stack.synth(), throwsSynthIssue<NoProviders>());
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
          'google': {'project': 'orders-prod-1234', 'region': 'us-central1'},
        }),
      );
    });

    test('aliases take the list form, one entry per configuration', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
            configArgs: {'project': 'demo', 'region': 'us-central1'},
          ),
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
            alias: 'eu',
            configArgs: {'project': 'demo', 'region': 'europe-west1'},
          ),
          FakeStackProvider(
            providerName: 'time',
            source: 'hashicorp/time',
            versionConstraint: '~> 0.12',
          ),
        ],
      );
      expect(
        TfJsonEncoder.providerBlock(stack),
        equals({
          'google': [
            {'project': 'demo', 'region': 'us-central1'},
            {'project': 'demo', 'region': 'europe-west1', 'alias': 'eu'},
          ],
        }),
      );
      // One required_providers entry per name, aliases included.
      expect(
        (TfJsonEncoder.terraformBlock(stack)['required_providers'] as Map).keys,
        equals(['google', 'time']),
      );
    });

    test('an alias next to an unconfigured default emits the alias alone', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
            alias: 'eu',
          ),
        ],
      );
      expect(
        TfJsonEncoder.providerBlock(stack),
        equals({
          'google': [
            {'alias': 'eu'},
          ],
        }),
      );
    });

    test('a resource selects an alias with the provider instance', () {
      const google = FakeStackProvider(
        providerName: 'google',
        source: 'hashicorp/google',
        versionConstraint: '~> 7.0',
      );
      const eu = FakeStackProvider(
        providerName: 'google',
        source: 'hashicorp/google',
        versionConstraint: '~> 7.0',
        alias: 'eu',
      );
      const us = FakeStackProvider(
        providerName: 'google',
        source: 'hashicorp/google',
        versionConstraint: '~> 7.0',
        alias: 'us',
      );
      TestStack stackWith(StackProvider? provider) =>
          TestStack(providers: const [google, eu])..add(
            FakePubsubTopic.withMeta(
              'orders',
              argMap: {'name': const TfArgLiteral<String>('orders')},
              provider: provider,
            ),
          );
      final json = stackWith(eu).synth().tfJson;
      expect(
        (json['resource'] as Map)['google_pubsub_topic']['orders']['provider'],
        equals('google.eu'),
      );
      // A data source selects an alias the same way, and synth keeps it.
      final withData = stackWith(eu)
        ..add(FakeProjectData('current', argMap: const {}, provider: eu));
      expect(
        (withData.synth().tfJson['data'] as Map)['google_project']['current'],
        equals({'provider': 'google.eu'}),
      );
      expect(
        () =>
            (TestStack(providers: stackWith(null).providers)..add(
                  FakeProjectData('current', argMap: const {}, provider: us),
                ))
                .synth(),
        throwsSynthIssue<MissingProvider>(
          allOf(
            startsWith('data.google_project.current: '),
            contains('"google.us"'),
          ),
        ),
      );
      expect(
        () => stackWith(us).synth(),
        throwsSynthIssue<MissingProvider>(
          allOf(
            startsWith('google_pubsub_topic.orders: '),
            contains('"google.us"'),
            contains('addProvider'),
          ),
        ),
      );
    });

    test('an equal-looking copy of a registered provider is refused', () {
      final stack =
          TestStack(
            providers: [
              FakeStackProvider(
                providerName: 'google',
                source: 'hashicorp/google',
                versionConstraint: '~> 7.0',
                configArgs: {'region': 'europe-west1'},
              ),
            ],
          )..add(
            FakePubsubTopic.withMeta(
              'orders',
              argMap: {'name': const TfArgLiteral<String>('orders')},
              provider: FakeStackProvider(
                providerName: 'google',
                source: 'hashicorp/google',
                versionConstraint: '~> 7.0',
                configArgs: {'region': 'us-central1'},
              ),
            ),
          );
      expect(stack.validate(), [
        isA<MissingProvider>().having(
          (i) => i.unregisteredInstance,
          'unregisteredInstance',
          isTrue,
        ),
      ]);
    });

    test('a configuration alias is declared, not configured', () {
      const google = FakeStackProvider(
        providerName: 'google',
        source: 'hashicorp/google',
        versionConstraint: '~> 8.0',
        configArgs: {'project': 'demo', 'region': 'us-central1'},
      );
      const eu = FakeStackProvider(
        providerName: 'google',
        source: 'hashicorp/google',
        versionConstraint: '~> 8.0',
        alias: 'eu',
      );
      final stack = TestStack(providers: const [google]);
      expect(stack.addConfigurationAlias(eu), same(eu));
      expect(stack.configurationAliases, [same(eu)]);
      expect(stack.isConfigurationAlias(eu), isTrue);
      expect(stack.isConfigurationAlias(google), isFalse);
      stack.add(
        FakePubsubTopic.withMeta(
          'orders',
          argMap: {'name': const TfArgLiteral<String>('orders')},
          provider: eu,
        ),
      );
      final json = stack.synth().tfJson;
      expect(
        (json['terraform'] as Map)['required_providers'],
        equals({
          'google': {
            'source': 'hashicorp/google',
            'version': '~> 8.0',
            'configuration_aliases': ['google.eu'],
          },
        }),
      );
      // The alias is not a provider block; the default configuration is.
      expect(
        json['provider'],
        equals({
          'google': {'project': 'demo', 'region': 'us-central1'},
        }),
      );
      expect(
        (json['resource'] as Map)['google_pubsub_topic']['orders']['provider'],
        equals('google.eu'),
      );
    });

    test('a configuration alias is the only google configuration', () {
      const eu = FakeStackProvider(
        providerName: 'google',
        source: 'hashicorp/google',
        versionConstraint: '~> 8.0',
        alias: 'eu',
      );
      final stack = TestStack(providers: const [])
        ..addConfigurationAlias(eu)
        ..add(
          FakePubsubTopic.withMeta(
            'orders',
            argMap: {'name': const TfArgLiteral<String>('orders')},
            provider: eu,
          ),
        );
      final json = stack.synth().tfJson;
      expect(json.containsKey('provider'), isFalse);
      expect(
        ((json['terraform'] as Map)['required_providers'] as Map)['google'],
        equals({
          'source': 'hashicorp/google',
          'version': '~> 8.0',
          'configuration_aliases': ['google.eu'],
        }),
      );
    });

    test('addConfigurationAlias rejects a default or a configured alias', () {
      const bare = FakeStackProvider(
        providerName: 'google',
        source: 'hashicorp/google',
        versionConstraint: '~> 8.0',
      );
      const configured = FakeStackProvider(
        providerName: 'google',
        source: 'hashicorp/google',
        versionConstraint: '~> 8.0',
        alias: 'eu',
        configArgs: {'region': 'europe-west1'},
      );
      final stack = TestStack(providers: const []);
      expect(() => stack.addConfigurationAlias(bare), throwsArgumentError);
      expect(
        () => stack.addConfigurationAlias(configured),
        throwsArgumentError,
      );
    });

    test('addProvider registers the provider and returns it', () {
      const eu = FakeStackProvider(
        providerName: 'google',
        source: 'hashicorp/google',
        versionConstraint: '~> 7.0',
        alias: 'eu',
      );
      final stack = TestStack(providers: const []);
      expect(stack.addProvider(eu), same(eu));
      expect(stack.providers, [same(eu)]);
      expect(() => stack.providers.add(eu), throwsUnsupportedError);
    });

    test('provider registrations Terraform would reject are refused', () {
      const base = FakeStackProvider(
        providerName: 'google',
        source: 'hashicorp/google',
        versionConstraint: '~> 7.0',
      );
      Matcher reports(String fragment) => contains(
        isA<ProviderConflict>().having(
          (i) => i.message,
          'message',
          contains(fragment),
        ),
      );
      expect(
        StackValidator.validate(TestStack(providers: const [base, base])),
        reports('registered twice without an alias'),
      );
      expect(
        StackValidator.validate(
          TestStack(
            providers: const [
              FakeStackProvider(
                providerName: 'google',
                source: 'hashicorp/google',
                versionConstraint: '~> 7.0',
                alias: 'eu',
              ),
              FakeStackProvider(
                providerName: 'google',
                source: 'hashicorp/google',
                versionConstraint: '~> 7.0',
                alias: 'eu',
              ),
            ],
          ),
        ),
        reports('"google.eu" is registered twice'),
      );
      expect(
        StackValidator.validate(
          TestStack(
            providers: const [
              FakeStackProvider(
                providerName: 'google',
                source: 'hashicorp/google',
                versionConstraint: '~> 7.0',
                alias: 'eu west',
              ),
            ],
          ),
        ),
        reports('not a Terraform identifier'),
      );
      expect(
        StackValidator.validate(
          TestStack(
            providers: const [
              base,
              FakeStackProvider(
                providerName: 'google',
                source: 'hashicorp/google',
                versionConstraint: '~> 6.0',
                alias: 'old',
              ),
            ],
          ),
        ),
        reports('different source / version constraints'),
      );
    });

    test('an external provider is selected and not configured', () {
      const eu = FakeStackProvider(
        providerName: 'google',
        source: 'hashicorp/google',
        versionConstraint: '~> 7.0',
        alias: 'eu',
        configArgs: {'region': 'europe-west1'},
      );
      final stack = TestStack(providers: const [])
        ..addExternalProvider(eu)
        ..add(
          FakePubsubTopic.withMeta(
            'orders',
            argMap: {'name': const TfArgLiteral<String>('orders')},
            provider: eu,
          ),
        );
      expect(stack.isExternalProvider(eu), isTrue);
      final json = stack.synth().tfJson;
      expect(json.containsKey('provider'), isFalse);
      expect(
        (json['resource'] as Map)['google_pubsub_topic']['orders']['provider'],
        equals('google.eu'),
      );
      final required = (json['terraform'] as Map)['required_providers'] as Map;
      expect(required['google'], isNot(contains('configuration_aliases')));
      expect((required['google'] as Map)['source'], 'hashicorp/google');
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
      expect(TfJsonEncoder.encodeArg(const TfArgLiteral<int>(7)), equals(7));
      expect(TfJsonEncoder.encodeArg(const TfArgLiteral<bool>(true)), isTrue);
    });

    test('TfArgExpression -> its template, verbatim', () {
      final arg = TfArg.expression<int>(r'${var.n * 2}');
      expect(TfJsonEncoder.encodeArg(arg), equals(r'${var.n * 2}'));
      expect(
        TfJsonEncoder.encodeArgMap({
          'count': arg,
          'labels': TfArg.literal({
            'k': TfArg.expression<String>(r'prefix-${var.env}'),
          }),
        }),
        equals({
          'count': r'${var.n * 2}',
          'labels': {'k': r'prefix-${var.env}'},
        }),
      );
    });

    test('TfRef -> interpolation string', () {
      final ref = TfRef.attribute<String>(
        const AddressStub('data.google_project.this'),
        'project_id',
      );
      expect(
        TfJsonEncoder.encodeArg(ref),
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
        TfRef.attribute<String>(
          const AddressStub('google_pubsub_topic.x'),
          'name',
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

  group('StackValidator.sensitiveLiteralFields (ref + variable)', () {
    test('a sensitive field set to a ref is no literal', () {
      final argMap = <String, TfArg<dynamic>?>{
        'secret_data': TfRef.attribute<String>(
          const AddressStub('data.external.vault'),
          'value',
        ),
      };
      expect(
        StackValidator.sensitiveLiteralFields(argMap, const {'secret_data'}),
        isEmpty,
      );
      expect(
        TfJsonEncoder.encodeArgMap(argMap),
        equals({'secret_data': r'${data.external.vault.value}'}),
      );
    });

    test('TG-5: a nested sensitive leaf holding a ref is no literal', () {
      final argMap = <String, TfArg<dynamic>?>{
        'customer_encryption': const TfArgLiteral<List<dynamic>>([
          {
            'encryption_algorithm': 'AES256',
            'encryption_key': r'${var.csek_key}',
          },
        ]),
      };
      expect(
        StackValidator.sensitiveLiteralFields(argMap, const {
          'customer_encryption.encryption_key',
        }),
        isEmpty,
      );
    });

    test('a * segment checks every entry of a map of blocks', () {
      Map<String, TfArg<dynamic>?> envVars(Object? secret) => {
        'env_vars': TfArgLiteral<Map<String, dynamic>>({
          'PUBLIC': {'type': 'plain_text', 'value': r'${var.public}'},
          'API_KEY': {'type': 'secret_text', 'value': secret},
        }),
      };
      const paths = {'env_vars.*.value'};
      expect(StackValidator.sensitiveLiteralFields(envVars('hunter2'), paths), [
        'env_vars.API_KEY.value',
      ]);
      expect(
        StackValidator.sensitiveLiteralFields(
          envVars(r'${var.api_key}'),
          paths,
        ),
        isEmpty,
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
          ignoreChanges: .of(['labels', 'description']),
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

    test('emits ignore_changes = all', () {
      final out = TfJsonEncoder.lifecycleBlock(
        const LifecycleOptions(ignoreChanges: .all),
      );
      expect(out, equals({'ignore_changes': 'all'}));
    });

    test('an explicit false is written', () {
      final out = TfJsonEncoder.lifecycleBlock(
        const LifecycleOptions(createBeforeDestroy: false),
      );
      expect(out, equals({'create_before_destroy': false}));
    });

    test('replace_triggered_by takes a whole resource', () {
      final out = TfJsonEncoder.lifecycleBlock(
        LifecycleOptions(
          replaceTriggeredBy: [FakePubsubTopic('a', argMap: const {})],
        ),
      );
      expect(
        out,
        equals({
          'replace_triggered_by': ['google_pubsub_topic.a'],
        }),
      );
    });

    test('emits precondition and postcondition blocks', () {
      final out = TfJsonEncoder.lifecycleBlock(
        LifecycleOptions(
          conditions: [
            .post(.expression(r'${self.state == "ACTIVE"}'), 'not active'),
            .pre(.expression(r'${var.size > 0}'), 'size must be positive'),
          ],
        ),
      );
      expect(
        out,
        equals({
          'precondition': [
            {
              'condition': r'${var.size > 0}',
              'error_message': 'size must be positive',
            },
          ],
          'postcondition': [
            {
              'condition': r'${self.state == "ACTIVE"}',
              'error_message': 'not active',
            },
          ],
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

    test('emits the bare address of each block', () {
      final deps = <TfAddressed>[
        const AddressStub('google_pubsub_topic.orders'),
        const AddressStub('data.google_project.current'),
        const AddressStub('module.network'),
      ];
      expect(
        TfJsonEncoder.dependsOn(deps),
        equals([
          'google_pubsub_topic.orders',
          'data.google_project.current',
          'module.network',
        ]),
      );
    });
  });

  group('TfJsonEncoder.resourceBlock', () {
    test('emits literal-only resource', () {
      final r = FakePubsubTopic(
        'orders',
        argMap: const {'name': TfArgLiteral<String>('orders-prod')},
      );
      final out = TfJsonEncoder.resourceBlock(r);
      expect(out, equals({'name': 'orders-prod'}));
    });

    test('combines lifecycle + depends_on', () {
      final r = FakePubsubTopic.withMeta(
        'orders',
        argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        lifecycle: const LifecycleOptions(preventDestroy: true),
        dependsOn: const [AddressStub('google_storage_bucket.archive')],
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

    test('emits provider meta-argument when set', () {
      final r = FakePubsubTopic.withMeta(
        'orders',
        argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        provider: const FakeStackProvider(
          providerName: 'google-beta',
          source: 'hashicorp/google-beta',
          versionConstraint: '~> 7.0',
        ),
      );
      final out = TfJsonEncoder.resourceBlock(r);
      expect(out, equals({'name': 'orders-prod', 'provider': 'google-beta'}));
    });

    test('a literal in a sensitiveFields field is a SensitiveLiteral', () {
      final stack = TestStack()
        ..add(
          FakeSecretVersion(
            'api_key',
            argMap: const {
              'secret': TfArgLiteral<String>('projects/x/secrets/api-key'),
              'secret_data': TfArgLiteral<String>('PLAINTEXT'),
            },
          ),
        );
      expect(
        stack.validate(),
        contains(
          isA<SensitiveLiteral>()
              .having(
                (i) => i.address,
                'address',
                'google_secret_manager_secret_version.api_key',
              )
              .having((i) => i.field, 'field', 'secret_data'),
        ),
      );
    });
  });

  group('TfJsonEncoder.movedBlock', () {
    FakePubsubTopic topic(String name) =>
        FakePubsubTopic(name, argMap: {'name': TfArgLiteral<String>(name)});

    test('returns null when the stack recorded no moved entry', () {
      expect(TfJsonEncoder.movedBlock(TestStack()..add(topic('a'))), isNull);
    });

    test('emits one {from, to} object per entry, in registration order', () {
      final stack = TestStack()
        ..add(topic('orders_0'))
        ..add(topic('orders_1'))
        ..addMoved(
          'google_pubsub_topic.orders[1]',
          'google_pubsub_topic.orders_1',
        )
        ..addMoved(
          'google_pubsub_topic.orders[0]',
          'google_pubsub_topic.orders_0',
        )
        ..addMoved(
          'module.legacy.google_pubsub_topic.x',
          'module.events.google_pubsub_topic.x',
        );
      expect(
        TfJsonEncoder.movedBlock(stack),
        equals([
          {
            'from': 'google_pubsub_topic.orders[1]',
            'to': 'google_pubsub_topic.orders_1',
          },
          {
            'from': 'google_pubsub_topic.orders[0]',
            'to': 'google_pubsub_topic.orders_0',
          },
          {
            'from': 'module.legacy.google_pubsub_topic.x',
            'to': 'module.events.google_pubsub_topic.x',
          },
        ]),
      );
    });

    test('synth places the moved list between data and output', () {
      final stack =
          TestStack(
              providers: const [
                FakeStackProvider(
                  providerName: 'google',
                  source: 'hashicorp/google',
                  versionConstraint: '~> 7.0',
                ),
              ],
            )
            ..add(topic('orders_0'))
            ..addMoved(
              'google_pubsub_topic.orders[0]',
              'google_pubsub_topic.orders_0',
            );
      final json = stack.synth().tfJson;
      expect(
        json['moved'],
        equals([
          {
            'from': 'google_pubsub_topic.orders[0]',
            'to': 'google_pubsub_topic.orders_0',
          },
        ]),
      );
      expect(json.keys.toList(), equals(['terraform', 'resource', 'moved']));
    });

    test('a target that is not a registered resource is refused', () {
      final stack = TestStack()
        ..add(topic('orders_0'))
        ..addMoved(
          'google_pubsub_topic.orders[0]',
          'google_pubsub_topic.orders_9',
        );
      expect(
        stack.validate(),
        contains(
          isA<InvalidMoveTarget>().having(
            (i) => i.message,
            'message',
            allOf(
              contains('"google_pubsub_topic.orders_9"'),
              contains('<type>.<localName>'),
            ),
          ),
        ),
      );
    });
  });

  group('TfJsonEncoder.resourcesGroup / dataGroup', () {
    test('groups by terraform type', () {
      final stack = TestStack();
      stack.add(
        FakePubsubTopic(
          'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );
      stack.add(
        FakePubsubTopic(
          'audit',
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
      stack.add(
        FakeProjectData(
          'this',
          argMap: const {'project_id': TfArgLiteral<String>('orders-prod')},
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

    test('dataGroup emits the provider meta-argument', () {
      final stack = TestStack();
      stack.add(
        FakeProjectData(
          'eu',
          argMap: const {'project_id': TfArgLiteral<String>('orders-prod')},
          provider: const FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
            alias: 'eu',
          ),
        ),
      );
      expect(
        TfJsonEncoder.dataGroup(stack),
        equals({
          'google_project': {
            'eu': {'project_id': 'orders-prod', 'provider': 'google.eu'},
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
      expect(block['backend'], equals({'local': <String, Object?>{}}));
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
        equals({
          'local': {'path': 'state/terraform.tfstate'},
        }),
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
      expect(out, equals({'password': r'${var.db_password}', 'name': 'alice'}));
    });
  });

  group('StackValidator.sensitiveLiteralFields (nested)', () {
    List<String> literals(
      Map<String, TfArg<dynamic>?> argMap,
      Set<String> sensitive,
    ) => StackValidator.sensitiveLiteralFields(argMap, sensitive);

    test('a nested literal at a sensitive leaf is reported by path', () {
      expect(
        literals(
          {
            'customer_encryption': const TfArgLiteral<List<dynamic>>([
              {
                'encryption_algorithm': 'AES256',
                'encryption_key': 'raw-base64-key',
              },
            ]),
          },
          const {'customer_encryption.encryption_key'},
        ),
        ['customer_encryption.encryption_key'],
      );
    });

    test('a nested expression leaf is no literal, wherever its `\${` sits', () {
      expect(
        literals(
          {
            'customer_encryption': TfArg<List<dynamic>>.literal([
              {
                'encryption_algorithm': 'AES256',
                'encryption_key': TfArg.expression<String>(
                  r'key-${var.suffix}',
                ),
              },
            ]),
          },
          const {'customer_encryption.encryption_key'},
        ),
        isEmpty,
      );
      // An escaped sequence is literal text, so it is still a plain literal.
      expect(
        literals(
          {
            'customer_encryption': const TfArgLiteral<List<dynamic>>([
              {'encryption_key': r'not-a-template-$${x}'},
            ]),
          },
          const {'customer_encryption.encryption_key'},
        ),
        ['customer_encryption.encryption_key'],
      );
    });

    test('every sibling sensitive literal is reported', () {
      expect(
        literals(
          {
            'block': const TfArgLiteral<List<dynamic>>([
              {'a': 'A-val', 'b': 'B-val', 'c': 'C-val'},
            ]),
          },
          const {'block.a', 'block.b'},
        ),
        unorderedEquals(['block.a', 'block.b']),
      );
    });
  });

  group('StackValidator.sensitiveLiteralFields (top-level)', () {
    const sensitive = {'secret_data'};

    test('a TfArgLiteral in a sensitive top-level field is reported', () {
      expect(
        StackValidator.sensitiveLiteralFields({
          'name': const TfArgLiteral<String>('orders-secret'),
          'secret_data': const TfArgLiteral<String>('SUPER-SECRET'),
        }, sensitive),
        ['secret_data'],
      );
    });

    test('a ref, an expression or a variable is no literal', () {
      for (final arg in <TfArg<String>>[
        TfRef.attribute<String>(
          const AddressStub('data.external.vault'),
          'value',
        ),
        TfArg.expression<String>(r'${base64decode(var.blob)}'),
        TfArgVariable<String>('db_secret'),
      ]) {
        expect(
          StackValidator.sensitiveLiteralFields({
            'secret_data': arg,
          }, sensitive),
          isEmpty,
          reason: '$arg',
        );
      }
    });
  });

  group('explicit provider meta-argument vs implied prefix', () {
    const betaProvider = FakeStackProvider(
      providerName: 'google-beta',
      source: 'hashicorp/google-beta',
      versionConstraint: '~> 7.0',
    );

    test('an explicit provider replaces the implied prefix provider '
        '(beta packages share the google_* type prefix)', () {
      final stack = TestStack(providers: const [betaProvider]);
      stack.add(
        FakePubsubTopic.withMeta(
          't',
          argMap: {'name': TfArg.literal('x')},
          provider: betaProvider,
        ),
      );
      expect(stack.validate(), isEmpty);
    });

    test('an explicit provider must still be registered', () {
      final stack = TestStack(providers: const [betaProvider]);
      stack.add(
        FakePubsubTopic.withMeta(
          't',
          argMap: {'name': TfArg.literal('x')},
          provider: const FakeStackProvider(
            providerName: 'google-beta',
            source: 'hashicorp/google-beta',
            versionConstraint: '~> 7.0',
            alias: 'nope',
          ),
        ),
      );
      expect(stack.validate(), [
        isA<MissingProvider>().having(
          (i) => i.provider,
          'provider',
          'google-beta.nope',
        ),
      ]);
    });

    test('a defaultProvider override is emitted and must be registered', () {
      final topic = _BetaTopic('t');
      expect(TfJsonEncoder.resourceBlock(topic)['provider'], 'google-beta');
      expect(
        TestStack(providers: const [betaProvider]).add(topic),
        same(topic),
      );
      expect(
        (TestStack(
          providers: const [betaProvider],
        )..add(_BetaTopic('u'))).validate(),
        isEmpty,
      );
      expect(
        (TestStack(
          providers: const [
            FakeStackProvider(
              providerName: 'google',
              source: 'hashicorp/google',
              versionConstraint: '~> 7.0',
            ),
          ],
        )..add(_BetaTopic('v'))).validate(),
        [
          isA<MissingProvider>().having(
            (i) => i.provider,
            'provider',
            'google-beta',
          ),
        ],
      );
    });

    test(
      'without an explicit provider the implied prefix is still required',
      () {
        final stack = TestStack(providers: const [betaProvider]);
        stack.add(FakePubsubTopic('t', argMap: {'name': TfArg.literal('x')}));
        expect(stack.validate(), [
          isA<MissingProvider>().having(
            (i) => i.provider,
            'provider',
            'google',
          ),
        ]);
      },
    );
  });
}

final class _BetaTopic extends Resource {
  _BetaTopic(super.localName)
    : super(
        terraformType: 'google_pubsub_topic',
        argMap: const <String, TfArg<dynamic>?>{},
      );

  @override
  Set<String> get sensitiveFields => const {};

  @override
  String get defaultProvider => 'google-beta';
}
