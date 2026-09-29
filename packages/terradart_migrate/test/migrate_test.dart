import 'dart:convert';
import 'dart:io';

import 'package:terradart_aws/provider.dart' show kAwsProviderVersionConstraint;
import 'package:terradart_cloudflare/provider.dart'
    show kCloudflareProviderVersionConstraint;
import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

// The emitter writes one statement per line; `format: false` keeps that
// shape so the substring checks below stay readable. The round-trip gate
// (tool/migrate_roundtrip_gates.dart) covers the formatted output.
MigrationResult _migrateJson(
  Map<String, Object?> json, {
  String name = 'demo',
}) => migrateModule(
  TfModule.fromTfJson(jsonEncode(json), fileName: 'main.tf.json'),
  name: name,
  format: false,
);

MigrationResult _migrateHcl(String hcl, {String name = 'demo'}) =>
    migrateModule(
      TfModule.fromHcl(hcl, fileName: 'main.tf'),
      name: name,
      format: false,
    );

const _google = {
  'required_version': '>= 1.11.0',
  'required_providers': {
    'google': {'source': 'hashicorp/google', 'version': '~> 8.0'},
  },
};

void main() {
  group('passthrough slots', () {
    // The two passthrough parameter shapes a catalog carries: a
    // `TfArg<Map<String, dynamic>>` (an IAM `condition`) and a bare
    // `Map<String, Object?>` spread into its block (`advancedExtra` on a
    // hand-written helper). The manifest's `wrapped` flag tells them apart;
    // emitting `TfArg.literal` for the bare one produced a Stack that did
    // not compile, found on a real Cloud SQL module.
    test('a bare Map parameter takes the collection itself', () {
      const manifest = MigrateManifest(
        package: 'terradart_google',
        entries: [
          MigrateEntry(
            tfType: 'google_x_instance',
            className: 'GoogleXInstance',
            barrel: 'instance',
            kind: CatalogKind.resource,
            slots: [
              MigrateSlot(
                tfName: 'settings',
                dartName: 'settings',
                kind: MigrateSlotKind.helper,
                required: true,
                wrapped: false,
                helper: 'XInstanceSettings',
              ),
            ],
            getters: [],
          ),
        ],
        helpers: {
          'XInstanceSettings': MigrateHelper(
            className: 'XInstanceSettings',
            slots: [
              MigrateSlot(
                tfName: 'tier',
                dartName: 'tier',
                kind: MigrateSlotKind.scalar,
                required: true,
                dartType: 'String',
              ),
              MigrateSlot(
                tfName: '',
                dartName: 'advancedExtra',
                kind: MigrateSlotKind.passthrough,
                required: false,
                wrapped: false,
                merged: true,
                dartType: 'Map<String, Object?>',
              ),
            ],
          ),
        },
        enums: {},
      );
      final r = migrateModule(
        TfModule.fromTfJson(
          jsonEncode({
            'terraform': _google,
            'resource': {
              'google_x_instance': {
                'primary': {
                  'settings': [
                    {
                      'tier': 'db-f1-micro',
                      'insights_config': [
                        {
                          'query_insights_enabled': true,
                          'query_string_length': 1024,
                        },
                      ],
                    },
                  ],
                },
              },
            },
          }),
          fileName: 'main.tf.json',
        ),
        name: 'demo',
        format: false,
        manifests: const [manifest],
      );
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(
        r.stackSource,
        contains(
          "advancedExtra: {r'insights_config': [{r'query_insights_enabled': "
          "true, r'query_string_length': 1024}]}",
        ),
      );
      expect(r.stackSource, isNot(contains('advancedExtra: .literal(')));
    });

    test('a TfArg<Map> parameter keeps TfArg.literal, from tf.json and HCL', () {
      const expected =
          "condition: .literal({r'title': r'expires', r'expression': r'true'})";
      final json = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic_iam_member': {
            'viewer': {
              'topic': 'orders',
              'role': 'roles/pubsub.viewer',
              'member': 'user:a@example.com',
              'condition': {'title': 'expires', 'expression': 'true'},
            },
          },
        },
      });
      expect(json.report.isComplete, isTrue, reason: json.report.renderText());
      expect(json.stackSource, contains(expected));

      // The block form: written once, it reads as one object, not a list.
      final hcl = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 8.0" }
  }
}

resource "google_pubsub_topic_iam_member" "viewer" {
  topic  = "orders"
  role   = "roles/pubsub.viewer"
  member = "user:a@example.com"
  condition {
    title      = "expires"
    expression = "true"
  }
}
''');
      expect(hcl.report.isComplete, isTrue, reason: hcl.report.renderText());
      expect(hcl.stackSource, contains(expected));

      // The tf.json list form of a block written once fits a Map parameter.
      final listForm = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic_iam_member': {
            'viewer': {
              'topic': 'orders',
              'role': 'roles/pubsub.viewer',
              'member': 'user:a@example.com',
              'condition': [
                {'title': 'expires', 'expression': 'true'},
              ],
            },
          },
        },
      });
      expect(listForm.stackSource, contains(expected));
    });
  });

  group('pubsub_quickstart synth output', () {
    // The quickstart's synth output as of this package's last change; the
    // round-trip gate covers the live examples.
    final file = File('test/fixtures/pubsub_quickstart.tf.json');
    final result = migrateModule(
      TfModule.fromTfJson(file.readAsStringSync(), fileName: file.path),
      name: 'pubsub_quickstart',
      format: false,
    );
    final formatted = migrateModule(
      TfModule.fromTfJson(file.readAsStringSync(), fileName: file.path),
      name: 'pubsub_quickstart',
    );

    test('migrates every block', () {
      expect(
        result.report.isComplete,
        isTrue,
        reason: result.report.renderText(),
      );
      expect(
        result.report.migratedAddresses,
        containsAll([
          'provider.google',
          'terraform.required_version',
          'google_pubsub_topic.orders',
          'google_pubsub_subscription.orders_push',
          'data.google_project.current',
          'output.ORDERS_TOPIC_ID',
        ]),
      );
      expect(result.report.packages, ['terradart_google']);
      expect(result.report.warnings, isEmpty);
    });

    test('emits the quickstart shape', () {
      final src = result.stackSource;
      expect(result.stackClass, 'PubsubQuickstartStack');
      expect(src, contains("import 'package:terradart_google/pubsub.dart';"));
      expect(
        src,
        contains(
          "const GoogleProvider(project: r'ci-test-project-id', region: r'us-central1')",
        ),
      );
      expect(src, contains("setRequiredVersion(r'>= 1.11.0');"));
      // Typed references, enum members, nested helpers, dependencies.
      expect(src, contains('topic: orders.ref,'));
      expect(src, contains('.literal(.protocolBuffer)'));
      expect(src, contains('.pushConfig(PubsubSubscriptionPushConfig('));
      expect(src, contains('ackDeadlineSeconds: .literal(60)'));
      expect(
        src,
        contains(
          'members: .literal([ordersPublisher.iamMember.interpolation])',
        ),
      );
      expect(
        src,
        contains(
          'dependsOn: [ResourceDependency(ordersProto), ResourceDependency(ordersPublisher)]',
        ),
      );
      // A mixed template stays a verbatim expression.
      expect(
        src,
        contains(
          r"r'serviceAccount:service-${data.google_project.current.number}@gcp-sa-pubsub.iam.gserviceaccount.com'",
        ),
      );
      expect(src, contains("addData(GoogleProject(localName: r'current'))"));
      expect(
        src,
        contains("ResourceIdExport(orders.id, emitTerraformOutput: true)"),
      );
      expect(
        src,
        contains(
          "setAppExportsOutputPath(r'lib/generated/pubsub_quickstart_stack.app.dart')",
        ),
      );
      // Locals only where referenced.
      expect(src, isNot(contains('final ordersPush =')));
      expect(src, contains('final orders = add('));
    });

    test('formats the Stack and writes the package files', () {
      expect(formatted.stackSource, isNot(equals(result.stackSource)));
      expect(
        formatted.stackSource,
        contains('final class PubsubQuickstartStack extends Stack {'),
      );
      expect(
        result.files.keys,
        containsAll([
          'lib/pubsub_quickstart_stack.dart',
          'bin/infra.dart',
          'pubspec.yaml',
        ]),
      );
      expect(
        result.files['pubspec.yaml'],
        contains('terradart_google: ^$packageVersion'),
      );
      expect(
        result.files['bin/infra.dart'],
        contains("PubsubQuickstartStack().writeTo(r'tf-out')"),
      );
    });
  });

  group('kept in Terraform, with a reason', () {
    Map<String, Object?> module(
      Map<String, Object?> body, {
      String type = 'google_pubsub_topic',
    }) => {
      'terraform': _google,
      'resource': {
        type: {'x': body},
      },
    };

    String reasonOf(MigrationResult r, String address) =>
        r.report.kept.singleWhere((k) => k.address == address).reason;

    test('a type outside every catalog', () {
      final r = _migrateJson(
        module({'name': 'x'}, type: 'azurerm_resource_group'),
      );
      expect(
        reasonOf(r, 'azurerm_resource_group.x'),
        contains('no curated factory'),
      );
      expect(r.stackSource, isNot(contains('azurerm_resource_group')));
    });

    test('count / for_each / dynamic / provisioner', () {
      expect(
        reasonOf(
          _migrateJson(module({'name': 'x', 'count': r'${var.n}'})),
          'google_pubsub_topic.x',
        ),
        contains('count = var.n is not a literal number'),
      );
      expect(
        reasonOf(
          _migrateJson(
            module({'name': 'x', 'for_each': r'${toset(var.names)}'}),
          ),
          'google_pubsub_topic.x',
        ),
        contains('for_each = toset(var.names) is not a literal'),
      );
      expect(
        reasonOf(
          _migrateJson(
            module({
              'name': 'x',
              'provisioner': {
                'local-exec': {'command': 'true'},
              },
            }),
          ),
          'google_pubsub_topic.x',
        ),
        contains('provisioner'),
      );
    });

    test('an argument with no Dart parameter', () {
      final r = _migrateJson(module({'name': 'x', 'no_such_arg': 1}));
      expect(reasonOf(r, 'google_pubsub_topic.x'), contains('"no_such_arg"'));
    });

    test('a required argument that is missing', () {
      final r = _migrateJson(
        module({
          'labels': {'a': 'b'},
        }),
      );
      expect(
        reasonOf(r, 'google_pubsub_topic.x'),
        contains('required argument "name"'),
      );
    });

    test('an enum value the wrapper does not know', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_schema': {
            's': {'name': 's', 'type': 'YAML'},
          },
        },
      });
      expect(
        reasonOf(r, 'google_pubsub_schema.s'),
        contains('"YAML" is not a member of PubsubSchemaType'),
      );
    });

    group('an at-most-one sealed slot', () {
      // `deriveExactlyOne` seals mutually exclusive inputs the provider also
      // accepts none of into a nullable `...?slot?.argMap` slot: an optional
      // merged sealed slot in the manifest.
      const manifest = MigrateManifest(
        package: 'terradart_google',
        entries: [
          MigrateEntry(
            tfType: 'google_x_thing',
            className: 'GoogleXThing',
            barrel: 'thing',
            kind: CatalogKind.resource,
            slots: [
              MigrateSlot(
                tfName: 'name',
                dartName: 'name',
                kind: MigrateSlotKind.scalar,
                required: true,
                dartType: 'String',
              ),
              MigrateSlot(
                tfName: '',
                dartName: 'contentOrData',
                kind: MigrateSlotKind.sealed,
                required: false,
                wrapped: false,
                merged: true,
                variants: {
                  'content': 'XThingContentOption',
                  'data': 'XThingContentOrDataData',
                },
              ),
            ],
            getters: [],
          ),
        ],
        helpers: {
          'XThingContentOption': MigrateHelper(
            className: 'XThingContentOption',
            slots: [
              MigrateSlot(
                tfName: 'content',
                dartName: 'content',
                kind: MigrateSlotKind.scalar,
                required: true,
                dartType: 'String',
              ),
            ],
          ),
          'XThingContentOrDataData': MigrateHelper(
            className: 'XThingContentOrDataData',
            slots: [
              MigrateSlot(
                tfName: 'data',
                dartName: 'data',
                kind: MigrateSlotKind.scalar,
                required: true,
                positional: true,
                dartType: 'String',
              ),
            ],
            shorthand: 'data',
          ),
        },
        enums: {},
      );
      MigrationResult migrate(Map<String, Object?> body) => migrateModule(
        TfModule.fromTfJson(
          jsonEncode({
            'terraform': _google,
            'resource': {
              'google_x_thing': {'t': body},
            },
          }),
          fileName: 'main.tf.json',
        ),
        name: 'demo',
        format: false,
        manifests: const [manifest],
      );

      test('sets nothing when no member is set', () {
        final r = migrate({'name': 't'});
        expect(r.report.migratedAddresses, contains('google_x_thing.t'));
        expect(r.files['lib/demo_stack.dart'], isNot(contains('OrData')));
      });

      test('builds the variant of the member that is set by dot shorthand', () {
        final r = migrate({'name': 't', 'data': 'd'});
        expect(r.report.migratedAddresses, contains('google_x_thing.t'));
        expect(
          r.files['lib/demo_stack.dart'],
          contains("contentOrData: .data(.literal(r'd'))"),
        );
      });

      test('names a variant class its sealed type has no factory for', () {
        final r = migrate({'name': 't', 'content': 'c'});
        expect(
          r.files['lib/demo_stack.dart'],
          contains(
            "contentOrData: XThingContentOption(content: .literal(r'c'))",
          ),
        );
      });

      test('keeps a block that sets more than one in Terraform', () {
        final r = migrate({'name': 't', 'content': 'c', 'data': 'd'});
        expect(
          reasonOf(r, 'google_x_thing.t'),
          contains('more than one of "content", "data" is set'),
        );
      });
    });

    test('a helper variant whose block has a scalar of the same name', () {
      const manifest = MigrateManifest(
        package: 'terradart_google',
        entries: [
          MigrateEntry(
            tfType: 'google_x_job',
            className: 'GoogleXJob',
            barrel: 'job',
            kind: CatalogKind.resource,
            slots: [
              MigrateSlot(
                tfName: '',
                dartName: 'configuration',
                kind: MigrateSlotKind.sealed,
                required: true,
                wrapped: false,
                merged: true,
                variants: {'query': 'XJobConfigurationQuery'},
              ),
            ],
            getters: [],
          ),
        ],
        helpers: {
          'XJobConfigurationQuery': MigrateHelper(
            className: 'XJobConfigurationQuery',
            slots: [
              MigrateSlot(
                tfName: 'query',
                dartName: 'query',
                kind: MigrateSlotKind.helper,
                required: true,
                wrapped: false,
                positional: true,
                helper: 'XJobQuery',
              ),
            ],
            shorthand: 'query',
          ),
          'XJobQuery': MigrateHelper(
            className: 'XJobQuery',
            slots: [
              MigrateSlot(
                tfName: 'query',
                dartName: 'query',
                kind: MigrateSlotKind.scalar,
                required: true,
                dartType: 'String',
              ),
            ],
          ),
        },
        enums: {},
      );
      final r = migrateModule(
        TfModule.fromTfJson(
          jsonEncode({
            'terraform': _google,
            'resource': {
              'google_x_job': {
                'j': {
                  'query': {'query': 'SELECT 1'},
                },
              },
            },
          }),
          fileName: 'main.tf.json',
        ),
        name: 'demo',
        format: false,
        manifests: const [manifest],
      );
      expect(r.report.migratedAddresses, contains('google_x_job.j'));
      expect(
        r.files['lib/demo_stack.dart'],
        contains(
          "configuration: .query(XJobQuery(query: .literal(r'SELECT 1')))",
        ),
      );
    });

    group('an enum value that differs from a member only in case', () {
      const module = {
        'terraform': _google,
        'resource': {
          'google_pubsub_schema': {
            's': {'name': 's', 'type': 'avro'},
          },
        },
      };
      MigrationResult migrate({required bool caseInsensitive}) => migrateModule(
        TfModule.fromTfJson(jsonEncode(module), fileName: 'main.tf.json'),
        name: 'demo',
        format: false,
        manifests: [
          MigrateManifest(
            package: googleMigrateManifest.package,
            entries: googleMigrateManifest.entries,
            helpers: googleMigrateManifest.helpers,
            enums: googleMigrateManifest.enums,
            caseInsensitiveEnums: caseInsensitive,
          ),
        ],
      );

      test('stays in Terraform for a case-sensitive provider', () {
        expect(
          reasonOf(migrate(caseInsensitive: false), 'google_pubsub_schema.s'),
          contains('"avro" is not a member of PubsubSchemaType'),
        );
      });

      test('names the canonical member, with a warning, otherwise', () {
        final r = migrate(caseInsensitive: true);
        expect(r.report.migratedAddresses, contains('google_pubsub_schema.s'));
        expect(
          r.files['lib/demo_stack.dart'],
          contains('type: .literal(.avro)'),
        );
        expect(
          r.report.warnings.single,
          contains(
            '"avro" becomes PubsubSchemaType.avro, which synthesizes '
            'as "AVRO"',
          ),
        );
      });
    });

    group('a list of enum values', () {
      // `selected_regions` is a bare `List<MonitoringUptimeCheckRegion>`:
      // one member per element, and no single reference fits it.
      MigrationResult migrate(Object regions) => _migrateJson({
        'terraform': _google,
        'resource': {
          'google_monitoring_uptime_check_config': {
            'u': {
              'display_name': 'u',
              'timeout': '10s',
              'monitored_resource': [
                {
                  'type': 'uptime_url',
                  'labels': {'host': 'example.com'},
                },
              ],
              'selected_regions': regions,
            },
          },
        },
      });

      test('names one member per element', () {
        final r = migrate(['USA', 'EUROPE']);
        expect(
          r.report.migratedAddresses,
          contains('google_monitoring_uptime_check_config.u'),
        );
        expect(
          r.files['lib/demo_stack.dart'],
          contains('selectedRegions: [.usa, .europe]'),
        );
      });

      test('a reference to a whole list stays in Terraform', () {
        final r = _migrateJson({
          'terraform': _google,
          'variable': {
            'regions': {'type': 'list(string)'},
          },
          'resource': {
            'google_monitoring_uptime_check_config': {
              'u': {
                'display_name': 'u',
                'timeout': '10s',
                'monitored_resource': [
                  {
                    'type': 'uptime_url',
                    'labels': {'host': 'example.com'},
                  },
                ],
                'selected_regions': r'${var.regions}',
              },
            },
          },
        });
        expect(
          reasonOf(r, 'google_monitoring_uptime_check_config.u'),
          contains(
            'argument "selected_regions" takes a list of '
            'MonitoringUptimeCheckRegion values, not a reference to a '
            'whole list',
          ),
        );
      });
    });

    test('an expression on a non-string argument is TfArg.expression', () {
      final r = _migrateJson(
        module({
          'name': 'x',
          'message_retention_duration': 'ok',
          'labels': r'${var.labels}',
        }),
      );
      // `${var.labels}` is a variable reference, which is fine...
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      final r2 = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_subscription': {
            's': {
              'name': 's',
              'topic': 't',
              'ack_deadline_seconds': r'${var.n * 2}',
              'enable_message_ordering': r'${var.env == "prod"}',
            },
          },
        },
      });
      expect(r2.report.isComplete, isTrue, reason: r2.report.renderText());
      final src = r2.stackSource;
      expect(
        src,
        contains(r"ackDeadlineSeconds: .expression(r'${var.n * 2}')"),
      );
      expect(
        src,
        contains(
          "enableMessageOrdering: .expression(r'\${var.env == \"prod\"}')",
        ),
      );
      // The variables inside the expressions are declared, like references.
      expect(src, contains("addExternalVariable(r'n');"));
      expect(src, contains("addExternalVariable(r'env');"));
    });

    test('an expression on an enum argument is TfArg.expression', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_schema': {
            's': {
              'name': 's',
              'type': r'${upper(var.schema_type)}',
              'definition': 'x',
            },
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(
        r.stackSource,
        contains(r"type: .expression(r'${upper(var.schema_type)}')"),
      );
    });

    test('an expression on a sensitive argument is TfArg.expression', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_sql_user': {
            'u': {
              'name': 'u',
              'instance': 'db',
              'password': r'${var.pw_prefix}-${random_id.suffix.hex}',
            },
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(
        r.stackSource,
        contains(
          r"password: .expression(r'${var.pw_prefix}-${random_id.suffix.hex}')",
        ),
      );
    });

    test('an expression inside a typed collection stays a blocker', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic': {
            'x': {
              'name': 'x',
              'message_storage_policy': {
                'allowed_persistence_regions': ['us-central1', r'${var.r}'],
              },
            },
          },
        },
      });
      // A `List<String>` element may be a raw `${...}` string.
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(r.stackSource, contains(r"[r'us-central1', r'${var.r}']"));
    });

    test('a provider alias the module does not configure', () {
      final r = _migrateJson(module({'name': 'x', 'provider': 'google.eu'}));
      expect(
        reasonOf(r, 'google_pubsub_topic.x'),
        contains('no provider "google" block with alias = "eu"'),
      );
    });

    test('a provider alias inside a child module', () {
      final r = migrateModule(
        TfModule.fromHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 8.0" }
  }
}

resource "google_pubsub_topic" "x" {
  name     = "x"
  provider = google.eu
}
''', fileName: 'main.tf'),
        name: 'demo',
        format: false,
        childModule: true,
      );
      expect(
        reasonOf(r, 'google_pubsub_topic.x'),
        contains('configuration_aliases'),
      );
    });

    test('a provider with no TerraDart factory', () {
      final r = _migrateJson(module({'name': 'x', 'provider': 'azurerm'}));
      expect(
        reasonOf(r, 'google_pubsub_topic.x'),
        contains('provider "azurerm" has no TerraDart factory'),
      );
    });

    test('depends_on a resource that is kept', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic': {
            'x': {'name': 'x', 'count': r'${var.n}'},
            'y': {
              'name': 'y',
              'depends_on': ['google_pubsub_topic.x'],
            },
          },
        },
      });
      expect(reasonOf(r, 'google_pubsub_topic.x'), contains('count'));
      expect(
        reasonOf(r, 'google_pubsub_topic.y'),
        contains('depends_on target "google_pubsub_topic.x" is not migrated'),
      );
    });

    test('a reference to a kept resource stays a verbatim expression', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic': {
            'x': {'name': 'x', 'no_such_arg': 1},
            'y': {'name': r'${google_pubsub_topic.x.name}-copy'},
          },
        },
      });
      expect(r.report.kept.map((k) => k.address), ['google_pubsub_topic.x']);
      expect(
        r.stackSource,
        contains(r"name: .expression(r'${google_pubsub_topic.x.name}-copy')"),
      );
    });

    test('a sensitive literal is never copied', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_sql_user': {
            'u': {'name': 'u', 'instance': 'i', 'password': 'hunter2'},
          },
        },
      });
      expect(reasonOf(r, 'google_sql_user.u'), contains('sensitive'));
      expect(r.stackSource, isNot(contains('hunter2')));
    });
  });

  group('a map of blocks (nesting_mode map)', () {
    const cloudflare = {
      'required_version': '>= 1.11.0',
      'required_providers': {
        'cloudflare': {
          'source': 'cloudflare/cloudflare',
          'version': kCloudflareProviderVersionConstraint,
        },
      },
    };

    test('becomes a Dart map of helpers, one per key', () {
      final r = _migrateJson({
        'terraform': cloudflare,
        'resource': {
          'cloudflare_zero_trust_risk_behavior': {
            'rb': {
              'account_id': 'acct',
              'behaviors': {
                'imp_travel': {'enabled': true, 'risk_level': 'high'},
                'high_dlp': {'enabled': false, 'risk_level': 'low'},
              },
            },
          },
        },
      });
      expect(
        r.report.migratedAddresses,
        contains('cloudflare_zero_trust_risk_behavior.rb'),
      );
      expect(
        r.stackSource,
        contains(
          "behaviors: {r'imp_travel': ZeroTrustRiskBehaviorBehaviors("
          'enabled: .literal(true), riskLevel: '
          '.literal(.high)), '
          "r'high_dlp': ZeroTrustRiskBehaviorBehaviors(",
        ),
      );
    });

    MigrationResult pages(Object secret) => _migrateJson({
      'terraform': cloudflare,
      'resource': {
        'cloudflare_pages_project': {
          'site': {
            'account_id': 'acct',
            'name': 'site',
            'production_branch': 'main',
            'deployment_configs': {
              'preview': {
                'env_vars': {
                  'API_KEY': {'type': 'secret_text', 'value': secret},
                },
              },
            },
          },
        },
      },
    });

    test('a sensitive field under a key stays out of Dart', () {
      final r = pages('hunter2');
      expect(
        r.report.kept
            .singleWhere((k) => k.address == 'cloudflare_pages_project.site')
            .reason,
        contains('sensitive'),
      );
      expect(r.stackSource, isNot(contains('hunter2')));
    });

    test('a sensitive field under a key takes a variable', () {
      final r = pages(r'${var.api_key}');
      expect(
        r.report.migratedAddresses,
        contains('cloudflare_pages_project.site'),
      );
      expect(r.stackSource, contains("envVars: {r'API_KEY': "));
      expect(r.stackSource, contains("value: .variable(r'api_key')"));
    });
  });

  group('module-level blocks', () {
    test(
      'providers come from required_providers, configured from provider blocks',
      () {
        final r = _migrateJson({
          'terraform': {
            'required_version': '>= 1.11.0',
            'required_providers': {
              'google': {'source': 'hashicorp/google', 'version': '~> 8.0'},
              'cloudflare': {
                'source': 'cloudflare/cloudflare',
                'version': kCloudflareProviderVersionConstraint,
              },
            },
          },
          'provider': {
            'google': {'project': 'p', 'region': 'r', 'zone': 'z'},
          },
        });
        expect(
          r.stackSource,
          contains(
            "const GoogleProvider(project: r'p', region: r'r', zone: r'z')",
          ),
        );
        expect(r.stackSource, contains('const CloudflareProvider()'));
        expect(r.report.packages, ['terradart_cloudflare', 'terradart_google']);
      },
    );

    test('aws nested provider blocks translate, credentials never do', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "$kAwsProviderVersionConstraint" }
  }
}
provider "aws" {
  region              = "eu-west-1"
  access_key          = "AKIAEXAMPLE"
  secret_key          = "wJalrEXAMPLE"
  allowed_account_ids = ["111111111111"]
  default_tags {
    tags = { env = "prod", team = "platform" }
  }
  assume_role {
    role_arn     = "arn:aws:iam::111111111111:role/deploy"
    session_name = "ci"
    tags         = { via = "terradart" }
  }
  assume_role {
    role_arn = "arn:aws:iam::222222222222:role/chain"
  }
  ignore_tags {
    key_prefixes = ["kube:"]
  }
  endpoints {
    s3 = "http://localhost:4566"
  }
}
resource "aws_cloudwatch_log_group" "fn" {
  name = "/aws/lambda/hello"
}
''');
      expect(
        r.stackSource,
        contains(
          "const AwsProvider(region: r'eu-west-1', "
          "allowedAccountIds: [r'111111111111'], "
          "defaultTags: {r'env': r'prod', r'team': r'platform'}, "
          "assumeRole: [AwsAssumeRole(roleArn: "
          "r'arn:aws:iam::111111111111:role/deploy', sessionName: r'ci', "
          "tags: {r'via': r'terradart'}), AwsAssumeRole(roleArn: "
          "r'arn:aws:iam::222222222222:role/chain')], "
          "ignoreTags: AwsIgnoreTags(keyPrefixes: [r'kube:']), "
          "endpoints: {r's3': r'http://localhost:4566'})",
        ),
      );
      expect(r.stackSource, isNot(contains('AKIAEXAMPLE')));
      expect(r.stackSource, isNot(contains('wJalrEXAMPLE')));
      expect(r.report.warnings, hasLength(2));
      expect(r.report.warnings.join('\n'), contains('"access_key"'));
      expect(r.report.warnings.join('\n'), contains('"secret_key"'));
    });

    test('repeated aws endpoints blocks merge into one map', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "$kAwsProviderVersionConstraint" }
  }
}
provider "aws" {
  endpoints {
    s3 = "http://localhost:4566"
  }
  endpoints {
    dynamodb = "http://localhost:4566"
    s3       = "http://localhost:4566"
  }
}
resource "aws_cloudwatch_log_group" "fn" {
  name = "/aws/lambda/hello"
}
''');
      expect(
        r.stackSource,
        contains(
          "const AwsProvider(endpoints: {r's3': r'http://localhost:4566', "
          "r'dynamodb': r'http://localhost:4566'})",
        ),
      );
      expect(r.report.warnings, isEmpty);
    });

    test('aws endpoints blocks that disagree on a key are dropped', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "$kAwsProviderVersionConstraint" }
  }
}
provider "aws" {
  endpoints {
    s3 = "http://localhost:4566"
  }
  endpoints {
    s3 = "http://localhost:9000"
  }
}
resource "aws_cloudwatch_log_group" "fn" {
  name = "/aws/lambda/hello"
}
''');
      expect(r.stackSource, contains('const AwsProvider()'));
      expect(r.report.warnings.single, contains('"endpoints"'));
    });

    test('an unknown provider argument is dropped with a warning', () {
      final r = _migrateJson({
        'terraform': _google,
        'provider': {
          'google': {'project': 'p', 'impersonate_service_account': 'sa@x'},
        },
      });
      expect(r.stackSource, contains("const GoogleProvider(project: r'p')"));
      expect(
        r.report.warnings.single,
        contains('"impersonate_service_account"'),
      );
    });

    test('a pin that differs from the package is a warning', () {
      final r = _migrateJson({
        'terraform': {
          'required_providers': {
            'google': {'source': 'hashicorp/google', 'version': '~> 6.0'},
          },
        },
      });
      expect(r.report.warnings.single, contains('"~> 6.0"'));
    });

    test('backends: gcs, local, s3, partial, unknown', () {
      String backend(Map<String, Object?> b) => _migrateJson({
        'terraform': {..._google, 'backend': b},
      }).stackSource;
      expect(
        backend({
          'gcs': {'bucket': 'b', 'prefix': 'p'},
        }),
        contains("backend: const GcsBackend(bucket: r'b', prefix: r'p')"),
      );
      expect(
        backend({
          'local': {'path': 'x.tfstate'},
        }),
        contains("backend: const LocalBackend(path: r'x.tfstate')"),
      );
      expect(
        backend({
          's3': {
            'bucket': 'b',
            'key': 'k',
            'region': 'auto',
            'use_path_style': true,
          },
        }),
        contains(
          "backend: const S3Backend(bucket: r'b', key: r'k', region: r'auto', usePathStyle: true)",
        ),
      );
      // A partial configuration (`terraform init -backend-config=...`) is
      // the block with those keys left out (#671).
      final partial = _migrateJson({
        'terraform': {
          ..._google,
          'backend': {'gcs': <String, Object?>{}},
        },
      });
      expect(partial.report.kept, isEmpty);
      expect(partial.stackSource, contains('backend: const GcsBackend()'));
      expect(
        backend({
          's3': {'key': 'k', 'region': 'auto'},
        }),
        contains("backend: const S3Backend(key: r'k', region: r'auto')"),
      );
      final unknown = _migrateJson({
        'terraform': {
          ..._google,
          'backend': {
            'azurerm': {'key': 'k'},
          },
        },
      });
      expect(unknown.report.kept.single.reason, contains('backend "azurerm"'));
    });

    test('variables become addVariable; validation keeps them external', () {
      final r = _migrateJson({
        'terraform': _google,
        'variable': {
          'project': {
            'type': 'string',
            'description': 'd',
            'default': 'p',
            'sensitive': false,
          },
          'checked': {
            'type': 'number',
            'validation': {
              'condition': r'${var.checked > 0}',
              'error_message': 'positive',
            },
          },
        },
        'resource': {
          'google_pubsub_topic': {
            'x': {
              'name': r'${var.project}',
              'labels': {'k': r'${var.other}'},
            },
          },
        },
      });
      expect(
        r.stackSource,
        contains(
          "addVariable(r'project', const TfVariable(type: r'string', description: r'd', defaultValue: r'p', sensitive: false));",
        ),
      );
      expect(r.stackSource, contains("addExternalVariable(r'checked');"));
      expect(r.stackSource, contains("addExternalVariable(r'other');"));
      expect(r.stackSource, contains("name: .variable(r'project')"));
      expect(
        r.stackSource,
        contains(r"labels: .literal({r'k': r'${var.other}'})"),
      );
      expect(r.report.kept.single.address, 'variable.checked');
      expect(r.report.warnings.single, contains('"other"'));
    });

    test('outputs: one attribute becomes an export, anything else is kept', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic': {
            'x': {'name': 'x'},
          },
        },
        'output': {
          'topic-id': {
            'value': r'${google_pubsub_topic.x.id}',
            'description': 'the id',
            'sensitive': true,
          },
          'labels': {'value': r'${google_pubsub_topic.x.labels}'},
          'literal': {'value': 'plain'},
        },
      });
      expect(
        r.stackSource,
        contains(
          "addExport(r'topicId', ResourceIdExport(x.id, emitTerraformOutput: true, description: r'the id', sensitive: true, terraformOutputName: r'topic-id'));",
        ),
      );
      expect(
        r.stackSource,
        contains(
          "addExport(r'labels', ResourceIdExport(TfRef.attribute<String>(x, r'labels'), emitTerraformOutput: true));",
        ),
      );
      expect(r.report.kept.single.address, 'output.literal');
    });

    test('locals and unresolvable moved blocks stay in Terraform', () {
      final r = _migrateJson({
        'terraform': _google,
        'locals': {'prefix': 'p'},
        'module': {
          'net': {'source': './net'},
        },
        'moved': {'from': 'a.b', 'to': 'a.c'},
      });
      expect(
        r.report.kept.map((k) => k.address),
        unorderedEquals(['local.prefix', 'moved']),
      );
      expect(
        r.report.kept.singleWhere((k) => k.address == 'moved').reason,
        contains('"a.c" stays in Terraform'),
      );
      // The module call itself became Dart, with no local directory to type.
      expect(
        r.stackSource,
        contains("addModule(ModuleCall(localName: r'net', source: r'./net'))"),
      );
    });
  });

  group('count / for_each unrolling', () {
    test('a literal count becomes one resource per instance, state moved', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 8.0" }
  }
}

resource "google_pubsub_topic" "t" {
  count  = 2
  name   = "t-\${count.index}"
  labels = { index = "\${count.index}" }
}

resource "google_pubsub_subscription" "s" {
  name       = "s"
  topic      = google_pubsub_topic.t[1].name
  depends_on = [google_pubsub_topic.t]
}

output "first" {
  value = google_pubsub_topic.t[0].id
}
''');
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(
        r.report.migratedAddresses,
        containsAll([
          'google_pubsub_topic.t_0',
          'google_pubsub_topic.t_1',
          'google_pubsub_subscription.s',
          'output.first',
        ]),
      );
      expect(
        r.report.migratedAddresses,
        isNot(contains('google_pubsub_topic.t')),
      );
      final e = r.report.expanded.single;
      expect(e.address, 'google_pubsub_topic.t');
      expect(e.isForEach, isFalse);
      expect(
        [for (final i in e.instances) (i.key, i.from, i.to)],
        [
          (0, 'google_pubsub_topic.t[0]', 'google_pubsub_topic.t_0'),
          (1, 'google_pubsub_topic.t[1]', 'google_pubsub_topic.t_1'),
        ],
      );
      final src = r.stackSource;
      expect(
        src,
        contains(
          "GooglePubsubTopic(localName: r't_0', name: .literal(r't-0'), "
          "labels: .literal({r'index': r'0'}))",
        ),
      );
      expect(src, contains("localName: r't_1', name: .literal(r't-1')"));
      expect(src, contains("topic: t1.ref.pinned(r'name')"));
      expect(
        src,
        contains('dependsOn: [ResourceDependency(t0), ResourceDependency(t1)]'),
      );
      expect(
        src,
        contains(
          "addMoved(r'google_pubsub_topic.t[0]', r'google_pubsub_topic.t_0');",
        ),
      );
      expect(
        src,
        contains(
          "addMoved(r'google_pubsub_topic.t[1]', r'google_pubsub_topic.t_1');",
        ),
      );
      expect(src, contains("addExport(r'first', ResourceIdExport(t0.id"));
      expect(r.report.renderText(), contains('Unrolled (1):'));
    });

    test('a literal for_each substitutes each.key and each.value', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic': {
            't': {
              'for_each': {
                'eu': {'region': 'europe-west1', 'tier': 1},
                'us-east': {'region': 'us-east1', 'tier': 2},
              },
              'name': r'${each.key}-topic',
              'labels': {'region': r'${each.value.region}'},
              'message_retention_duration': r'${each.value.tier * 60}s',
            },
            'plain': {
              'for_each': r'${toset(["a", "b"])}',
              'name': r'${each.value}',
            },
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      final src = r.stackSource;
      expect(
        src,
        contains(
          "GooglePubsubTopic(localName: r't_eu', name: .literal(r'eu-topic'), "
          "labels: .literal({r'region': r'europe-west1'}), "
          "messageRetentionDuration: .expression(r'\${1 * 60}s'))",
        ),
      );
      expect(
        src,
        contains("localName: r't_us-east', name: .literal(r'us-east-topic')"),
      );
      expect(
        src,
        contains(
          'addMoved(r\'google_pubsub_topic.t["eu"]\', r\'google_pubsub_topic.t_eu\');',
        ),
      );
      expect(
        src,
        contains(
          "GooglePubsubTopic(localName: r'plain_a', name: .literal(r'a'))",
        ),
      );
      expect(
        src,
        contains(
          'addMoved(r\'google_pubsub_topic.plain["b"]\', r\'google_pubsub_topic.plain_b\');',
        ),
      );
      final keys = {
        for (final e in r.report.expanded)
          e.address: [for (final i in e.instances) i.key],
      };
      expect(keys, {
        'google_pubsub_topic.t': ['eu', 'us-east'],
        'google_pubsub_topic.plain': ['a', 'b'],
      });
    });

    test('splats and bare references become the instance collection', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 8.0" }
  }
}

resource "google_pubsub_topic" "t" {
  count = 2
  name  = "t-\${count.index}"
}

resource "google_pubsub_topic" "mirror" {
  name = "mirror"
  message_storage_policy {
    allowed_persistence_regions = google_pubsub_topic.t[*].name
  }
}

output "ids" {
  value = google_pubsub_topic.t[*].id
}

output "count" {
  value = length(google_pubsub_topic.t)
}
''');
      final src = r.stackSource;
      expect(
        src,
        contains(
          r"messageStoragePolicy: PubsubTopicMessageStoragePolicy(allowedPersistenceRegions: .expression(r'${[google_pubsub_topic.t_0, google_pubsub_topic.t_1][*].name}'))",
        ),
      );
      // Outputs that are not one attribute stay in outputs.tf, rewritten.
      final outputs = r.sidecar.files[outputsFileName]!;
      expect(
        outputs,
        contains(
          'value = [google_pubsub_topic.t_0, google_pubsub_topic.t_1][*].id',
        ),
      );
      expect(
        outputs,
        contains(
          'value = length([google_pubsub_topic.t_0, google_pubsub_topic.t_1])',
        ),
      );
      expect(outputs, contains('point at the new addresses'));
    });

    test('a data source with count is unrolled without moved entries', () {
      final r = _migrateJson({
        'terraform': _google,
        'data': {
          'google_project': {
            'p': {'count': 2, 'project_id': r'proj-${count.index}'},
          },
        },
        'resource': {
          'google_pubsub_topic': {
            't': {
              'name': 't',
              'project': r'${data.google_project.p[1].project_id}',
            },
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      final src = r.stackSource;
      expect(
        src,
        contains(
          "addData(GoogleProject(localName: r'p_0', projectId: .literal(r'proj-0')))",
        ),
      );
      expect(src, contains('project: .ref(p1.projectIdRef)'));
      expect(src, isNot(contains('addMoved')));
    });

    test("the module's own moved blocks follow their targets", () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 8.0" }
  }
}

resource "google_pubsub_topic" "t" {
  name = "t"
}

resource "google_pubsub_topic" "many" {
  count = 2
  name  = "many-\${count.index}"
}

moved {
  from = google_pubsub_topic.old
  to   = google_pubsub_topic.t
}

moved {
  from = google_pubsub_topic.legacy
  to   = google_pubsub_topic.many
}

moved {
  from = google_pubsub_topic.elsewhere
  to   = google_pubsub_topic.kept
}

resource "google_pubsub_topic" "kept" {
  name        = "kept"
  no_such_arg = 1
}
''');
      final src = r.stackSource;
      expect(
        src,
        contains(
          "addMoved(r'google_pubsub_topic.old', r'google_pubsub_topic.t');",
        ),
      );
      // A move onto an unrolled block is one move per instance.
      expect(
        src,
        contains(
          "addMoved(r'google_pubsub_topic.legacy[0]', r'google_pubsub_topic.many_0');",
        ),
      );
      expect(
        src,
        contains(
          "addMoved(r'google_pubsub_topic.legacy[1]', r'google_pubsub_topic.many_1');",
        ),
      );
      expect(
        r.report.migratedAddresses,
        containsAll([
          'moved.google_pubsub_topic.old',
          'moved.google_pubsub_topic.legacy[0]',
        ]),
      );
      expect(
        r.report.kept.map((k) => k.address),
        unorderedEquals(['google_pubsub_topic.kept', 'moved']),
      );
      expect(
        r.report.kept.singleWhere((k) => k.address == 'moved').reason,
        contains('"google_pubsub_topic.kept" stays in Terraform'),
      );
      expect(
        r.sidecar.files[leftoverFileName],
        contains('moved {\n  from = google_pubsub_topic.elsewhere'),
      );
    });

    test('blockers: no instance, a tuple, a name collision, a bad index', () {
      String reason(Map<String, Object?> resources, String address) {
        final r = _migrateJson({'terraform': _google, 'resource': resources});
        return r.report.kept.singleWhere((k) => k.address == address).reason;
      }

      expect(
        reason({
          'google_pubsub_topic': {
            'x': {'name': 'x', 'count': 0},
          },
        }, 'google_pubsub_topic.x'),
        contains('count = 0 declares no instance'),
      );
      expect(
        reason({
          'google_pubsub_topic': {
            'x': {
              'name': 'x',
              'for_each': ['a'],
            },
          },
        }, 'google_pubsub_topic.x'),
        contains('is not a literal map or toset([...])'),
      );
      expect(
        reason({
          'google_pubsub_topic': {
            'x': {'name': 'x', 'count': 1},
            'x_0': {'name': 'x0'},
          },
        }, 'google_pubsub_topic.x'),
        contains('collides with another resource'),
      );
      expect(
        reason({
          'google_pubsub_topic': {
            'x': {'name': 'x', 'count': 2},
            'y': {'name': r'${google_pubsub_topic.x[5].name}'},
          },
        }, 'google_pubsub_topic.y'),
        contains(
          'refers to an instance "google_pubsub_topic.x" does not declare',
        ),
      );
      // Two unrolled blocks may not produce the same instance name either:
      // `svc["api/0"]` and `svc_api[0]` would both be `svc_api_0`.
      final crossBlock = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic': {
            'svc': {'for_each': r'${toset(["api/0"])}', 'name': 'svc'},
            'svc_api': {'count': 1, 'name': 'svc-api'},
          },
        },
      });
      expect(crossBlock.report.kept.map((k) => k.address), [
        'google_pubsub_topic.svc_api',
      ]);
      expect(
        crossBlock.report.kept.single.reason,
        contains('"svc_api_0", which collides'),
      );
      expect(
        crossBlock.report.migratedAddresses,
        contains('google_pubsub_topic.svc_api_0'),
      );
    });

    test('a resource named like a Stack member does not shadow addMoved', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic': {
            'add_moved': {'name': 'am'},
            't': {'count': 1, 'name': 't'},
          },
          'google_pubsub_subscription': {
            's': {
              'name': 's',
              'topic': r'${google_pubsub_topic.add_moved.name}',
            },
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(r.stackSource, contains('final addMovedPubsubTopic = add('));
      expect(
        r.stackSource,
        contains(
          "addMoved(r'google_pubsub_topic.t[0]', r'google_pubsub_topic.t_0');",
        ),
      );
    });

    test('an instance that cannot become Dart rolls the block back', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 8.0" }
  }
}

resource "google_pubsub_topic" "t" {
  count       = 2
  name        = "t-\${count.index}"
  no_such_arg = count.index
}

resource "google_pubsub_subscription" "s" {
  name  = "s"
  topic = google_pubsub_topic.t[0].name
}
''');
      final kept = {for (final k in r.report.kept) k.address: k.reason};
      expect(kept.keys, unorderedEquals(['google_pubsub_topic.t']));
      expect(
        kept['google_pubsub_topic.t'],
        allOf(
          contains('instance google_pubsub_topic.t[0]:'),
          contains('"no_such_arg"'),
        ),
      );
      expect(r.report.expanded, isEmpty);
      // The subscription still references the block as written.
      expect(
        r.stackSource,
        contains(r"topic: .expression(r'${google_pubsub_topic.t[0].name}')"),
      );
      expect(
        r.sidecar.files[leftoverFileName],
        contains('resource "google_pubsub_topic" "t" {\n  count       = 2'),
      );
    });
  });

  group('HCL input', () {
    test('nested blocks, repeated blocks, depends_on and lifecycle', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 8.0" }
  }
}

provider "google" {
  project = "p"
}

resource "google_pubsub_topic" "t" {
  name = "t"
  lifecycle {
    prevent_destroy = true
    ignore_changes  = [labels]
  }
}

resource "google_pubsub_subscription" "s" {
  name  = "s"
  topic = google_pubsub_topic.t.id
  push_config {
    push_endpoint = "https://x"
    oidc_token {
      service_account_email = "sa@x"
    }
  }
  depends_on = [google_pubsub_topic.t]
}
''');
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      final src = r.stackSource;
      expect(
        src,
        contains(
          "lifecycle: LifecycleOptions(preventDestroy: true, ignoreChanges: [r'labels'])",
        ),
      );
      expect(src, contains('topic: t.ref'));
      expect(
        src,
        contains(
          "delivery: .pushConfig(PubsubSubscriptionPushConfig(pushEndpoint: .literal(r'https://x'), "
          "oidcToken: PubsubSubscriptionPushConfigOidcToken(serviceAccountEmail: .literal(r'sa@x'))))",
        ),
      );
      expect(src, contains('dependsOn: [ResourceDependency(t)]'));
    });

    test('a literal containing an escape survives', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 8.0" }
  }
}
resource "google_pubsub_topic" "t" {
  name = "a-\$\${b}-%%{c}"
}
''');
      expect(r.stackSource, contains(r"name: .literal(r'a-$${b}-%%{c}')"));
    });
  });

  group('ordering and providers', () {
    test('a depends_on reference declares its target first', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 8.0" }
  }
}

resource "google_pubsub_subscription" "s" {
  name       = "s"
  topic      = "t"
  depends_on = [google_pubsub_topic.t]
}

resource "google_pubsub_topic" "t" {
  name = "t"
}
''');
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      final src = r.stackSource;
      expect(src, contains('dependsOn: [ResourceDependency(t)]'));
      expect(src, contains('final t = add('));
      expect(
        src.indexOf('final t = add('),
        lessThan(src.indexOf("localName: r's'")),
      );
    });

    test('a replace_triggered_by address declares its target first', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_subscription': {
            's': {
              'name': 's',
              'topic': 't',
              'lifecycle': {
                'replace_triggered_by': ['google_pubsub_topic.t'],
              },
            },
          },
          'google_pubsub_topic': {
            't': {'name': 't'},
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      final src = r.stackSource;
      expect(src, contains('replaceTriggeredBy: [TfRef.resource(t)]'));
      expect(src, contains('final t = add('));
      expect(
        src.indexOf('final t = add('),
        lessThan(src.indexOf("localName: r's'")),
      );
    });

    test('provider = <the default provider> is migrated', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic': {
            'x': {'name': 'x', 'provider': 'google'},
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
    });

    test('a provider alias is registered and selected', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 8.0" }
  }
}

provider "google" {
  project = "p"
}

provider "google" {
  alias  = "west"
  region = "us-west1"
}

resource "google_pubsub_topic" "x" {
  name     = "x"
  provider = google.west
}

resource "google_pubsub_topic" "y" {
  name = "y"
}
''');
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(
        r.report.migratedAddresses,
        unorderedEquals([
          'provider.google',
          'provider.google.west',
          'google_pubsub_topic.x',
          'google_pubsub_topic.y',
        ]),
      );
      expect(r.report.providers, ['google']);
      final src = r.stackSource;
      expect(
        src,
        contains(
          "providers: [const GoogleProvider(project: r'p'), "
          "const GoogleProvider(alias: r'west', region: r'us-west1')]",
        ),
      );
      expect(src, contains("provider: r'google.west'"));
      // The default configuration stays implicit on `y`.
      expect(
        src,
        contains("GooglePubsubTopic(localName: r'y', name: .literal(r'y'))"),
      );
    });

    test('an alias only the provider declares is registered too', () {
      // `provider "google" { alias = "west" }` with no resource selecting
      // it: registered like the default configuration, so a later `provider
      // = google.west` in Dart just works and nothing stays in Terraform.
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 8.0" }
  }
}

provider "google" {
  alias  = "west"
  region = "us-west1"
}

resource "google_pubsub_topic" "x" {
  name = "x"
}
''');
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(
        r.stackSource,
        contains(
          "providers: [const GoogleProvider(), "
          "const GoogleProvider(alias: r'west', region: r'us-west1')]",
        ),
      );
    });

    test('a data source selects an alias too', () {
      final r = _migrateJson({
        'terraform': _google,
        'provider': {
          'google': [
            {'project': 'p'},
            {'alias': 'eu', 'region': 'europe-west1'},
          ],
        },
        'data': {
          'google_project': {
            'current': {'provider': 'google.eu'},
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(
        r.stackSource,
        contains(
          "addData(GoogleProject(localName: r'current', provider: r'google.eu'))",
        ),
      );
      expect(
        r.stackSource,
        contains("const GoogleProvider(alias: r'eu', region: r'europe-west1')"),
      );
    });

    test('provider = google-beta on a GA type registers the beta provider', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic': {
            'x': {'name': 'x', 'provider': 'google-beta'},
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(r.report.providers, ['google', 'google-beta']);
      expect(
        r.report.packages,
        unorderedEquals(['terradart_google', 'terradart_google_beta']),
      );
      final src = r.stackSource;
      expect(
        src,
        contains(
          'providers: [const GoogleProvider(), const GoogleBetaProvider()]',
        ),
      );
      expect(src, contains("provider: r'google-beta'"));
    });

    test('a beta resource selects google-beta, not google', () {
      final r = _migrateJson({
        'terraform': {
          'required_providers': {
            'google-beta': {
              'source': 'hashicorp/google-beta',
              'version': '~> 8.0',
            },
          },
        },
        'provider': {
          'google-beta': {'project': 'p'},
        },
        'resource': {
          'google_api_gateway_api': {
            'api': {'api_id': 'api', 'provider': 'google-beta'},
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(r.report.packages, ['terradart_google_beta']);
      final src = r.stackSource;
      expect(
        src,
        contains("providers: [const GoogleBetaProvider(project: r'p')]"),
      );
      expect(src, isNot(contains('GoogleProvider(')));
      expect(
        src,
        contains(
          "GoogleApiGatewayApi(localName: r'api', apiId: .literal(r'api'))",
        ),
      );
    });

    test('time_sleep implies the time provider, not google', () {
      final r = _migrateJson({
        'terraform': {
          'required_providers': {
            'time': {'source': 'hashicorp/time', 'version': '~> 0.12'},
          },
        },
        'resource': {
          'time_sleep': {
            'wait': {'create_duration': '30s'},
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(r.report.packages, ['terradart_time']);
      final src = r.stackSource;
      expect(src, contains('providers: [const TimeProvider()]'));
      expect(src, isNot(contains('GoogleProvider(')));
      expect(
        src,
        contains("import 'package:terradart_time/terradart_time.dart';"),
      );
      expect(
        src,
        contains(
          "TimeSleep(localName: r'wait', createDuration: .literal(r'30s'))",
        ),
      );
    });
  });

  group('module calls (#665)', () {
    test('a call with no local directory becomes a bare ModuleCall', () {
      final r = _migrateJson({
        'terraform': _google,
        'module': {
          'network': {
            'source': 'terraform-google-modules/network/google',
            'version': '~> 9.0',
            'project_id': 'demo',
            'subnets': ['a', 'b'],
          },
        },
        'resource': {
          'google_pubsub_topic': {
            't': {'name': 'orders'},
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(
        r.stackSource,
        contains(
          "addModule(ModuleCall(localName: r'network', "
          "source: r'terraform-google-modules/network/google', "
          "version: r'~> 9.0', inputs: {r'project_id': "
          "TfArg.literal(r'demo'), r'subnets': "
          "TfArg.literal([r'a', r'b'])}))",
        ),
      );
      expect(
        r.report.migrated.map((m) => m.address),
        contains('module.network'),
      );
    });

    test('a resource reads a module output, and is emitted after it', () {
      final r = _migrateHcl(
        _hcl([
          'resource "google_pubsub_topic" "t" {',
          '  name = module.naming.topic',
          '}',
          '',
          'module "naming" {',
          '  source = "./modules/naming"',
          '  env    = "dev"',
          '}',
        ]),
      );
      final src = r.stackSource;
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(
        src,
        contains("name: .ref(TfRef.attribute<String>(naming, r'topic'))"),
      );
      expect(
        src.indexOf('addModule('),
        lessThan(src.indexOf('GooglePubsubTopic(')),
      );
    });

    test('depends_on and an output may name the call', () {
      final r = _migrateHcl(
        _hcl([
          'module "naming" {',
          '  source = "./modules/naming"',
          '}',
          '',
          'resource "google_pubsub_topic" "t" {',
          '  name       = "orders"',
          '  depends_on = [module.naming]',
          '}',
          '',
          'output "topic_prefix" {',
          '  value = module.naming.prefix',
          '}',
        ]),
      );
      final src = r.stackSource;
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(src, contains('dependsOn: [ResourceDependency(naming)]'));
      expect(
        src,
        contains(
          "addExport(r'topic_prefix', ResourceIdExport("
          "TfRef.attribute<String>(naming, r'prefix'), "
          'emitTerraformOutput: true))',
        ),
      );
    });

    test('providers = { ... } hands a registered alias down', () {
      final r = _migrateHcl(
        _hcl([
          'provider "google" {',
          '  project = "p"',
          '}',
          '',
          'provider "google" {',
          '  alias   = "eu"',
          '  project = "p"',
          '  region  = "europe-west1"',
          '}',
          '',
          'module "eu_bucket" {',
          '  source    = "./modules/bucket"',
          '  providers = { google = google.eu }',
          '}',
        ]),
      );
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(r.stackSource, contains("providers: {r'google': r'google.eu'}"));
      expect(r.report.providers, ['google']);
    });

    test('an alias the module does not configure keeps the call', () {
      final r = _migrateHcl(
        _hcl([
          'provider "google" {',
          '  project = "p"',
          '}',
          '',
          'resource "google_pubsub_topic" "t" {',
          '  name = "orders"',
          '}',
          '',
          'module "eu_bucket" {',
          '  source    = "./modules/bucket"',
          '  providers = { google = google.eu }',
          '}',
        ]),
      );
      expect(
        r.report.kept
            .singleWhere((k) => k.address == 'module.eu_bucket')
            .reason,
        contains('no provider "google" block with alias = "eu"'),
      );
    });

    test('"provider" on a module call is an input, not a meta-argument', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic': {
            't': {'name': 'orders'},
          },
        },
        'module': {
          'm': {'source': './m', 'provider': 'edge'},
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(
        r.stackSource,
        contains(
          "addModule(ModuleCall(localName: r'm', source: r'./m', "
          "inputs: {r'provider': TfArg.literal(r'edge')}))",
        ),
      );
    });

    test('a reference to an instance the unroll does not declare keeps the '
        'call', () {
      final r = _migrateHcl(
        _hcl([
          'resource "google_pubsub_topic" "t" {',
          '  count = 2',
          '  name  = "t-\${count.index}"',
          '}',
          '',
          'module "m" {',
          '  source = "./modules/m"',
          '  topic  = google_pubsub_topic.t[5].name',
          '}',
        ]),
      );
      // The body could not be pointed at t_0 / t_1, so emitting it would
      // leave a dangling `google_pubsub_topic.t[5]` reference in the Stack.
      final kept = r.report.kept.singleWhere((k) => k.address == 'module.m');
      expect(kept.reason, contains('does not declare'));
      expect(r.stackSource, isNot(contains('addModule(')));
    });

    for (final probe in _moduleBlockers) {
      test('${probe.label} keeps the call in Terraform', () {
        final r = _migrateJson({
          'terraform': _google,
          'resource': {
            'google_pubsub_topic': {
              't': {'name': 'orders'},
            },
          },
          'module': {'m': probe.body},
        });
        expect(
          r.report.kept.singleWhere((k) => k.address == 'module.m').reason,
          contains(probe.reason),
        );
      });
    }
  });

  group('local module wrappers (#665)', () {
    late Directory tmp;

    setUp(() => tmp = Directory.systemTemp.createTempSync('tdmw'));
    tearDown(() => tmp.deleteSync(recursive: true));

    MigratedProject build(Map<String, String> files) {
      for (final e in files.entries) {
        final f = File('${tmp.path}/${e.key}');
        f.parent.createSync(recursive: true);
        f.writeAsStringSync(e.value);
      }
      return migrateTree(scanModuleTree(tmp), name: 'infra', format: false);
    }

    test('variables become parameters and outputs become TfRef getters', () {
      final project = build({
        'main.tf': _hcl([
          'resource "google_pubsub_topic" "t" {',
          '  name = module.sa.member',
          '}',
          '',
          'module "sa" {',
          '  source     = "./modules/service_account"',
          '  account_id = "app-bff"',
          '}',
        ]),
        'modules/service_account/main.tf': _lines([
          'variable "account_id" {',
          '  type        = string',
          '  description = "The account id."',
          '}',
          '',
          'variable "disabled" {',
          '  type    = bool',
          '  default = false',
          '}',
          '',
          'resource "google_service_account" "this" {',
          '  account_id = var.account_id',
          '}',
          '',
          'output "member" {',
          '  value = google_service_account.this.member',
          '}',
        ]),
      });
      final wrapper = project.files['lib/service_account_module.dart']!;
      expect(
        wrapper,
        contains('final class ServiceAccountModule extends ModuleCall {'),
      );
      expect(wrapper, contains('required TfArg<String> accountId,'));
      expect(wrapper, contains('TfArg<bool>? disabled,'));
      expect(wrapper, contains('/// The account id.'));
      expect(
        wrapper,
        contains(
          'TfRef<String> get member => '
          "TfRef.attribute<String>(this, r'member');",
        ),
      );
      final root = project.files['lib/infra_stack.dart']!;
      expect(root, contains("import 'service_account_module.dart';"));
      expect(
        root,
        contains(
          "addModule(ServiceAccountModule(localName: r'sa', "
          "source: r'./modules/service_account', "
          "accountId: .literal(r'app-bff')))",
        ),
      );
      expect(root, contains('name: .ref(sa.member)'));
      expect(project.keptCount, 0, reason: project.renderMarkdown());
    });

    test('an input the module does not declare keeps the call', () {
      final project = build({
        'main.tf': _hcl([
          'resource "google_pubsub_topic" "t" {',
          '  name = "orders"',
          '}',
          '',
          'module "sa" {',
          '  source     = "./modules/service_account"',
          '  account_id = "app-bff"',
          '  typo       = true',
          '}',
        ]),
        'modules/service_account/main.tf':
            'variable "account_id" { type = string }\n',
      });
      final kept = project.modules
          .expand((m) => m.report.kept)
          .singleWhere((k) => k.address == 'module.sa');
      expect(kept.reason, contains('"typo"'));
    });

    test('a root that only calls modules still gets a Stack', () {
      final project = build({
        'main.tf': _lines([
          'module "sa" {',
          '  source     = "./modules/sa"',
          '  account_id = "app-bff"',
          '}',
        ]),
        'modules/sa/main.tf': _lines([
          'variable "account_id" { type = string }',
          '',
          'resource "google_service_account" "this" {',
          '  account_id = var.account_id',
          '}',
        ]),
      });
      // No provider of its own — the child module pins what it uses.
      expect(
        project.files['lib/infra_stack.dart'],
        contains('InfraStack() : super(providers: []) {'),
      );
      expect(project.keptCount, 0, reason: project.renderMarkdown());
    });

    test('a module with no variables and no outputs gets no wrapper', () {
      final project = build({
        'main.tf': _hcl([
          'resource "google_pubsub_topic" "t" {',
          '  name = "orders"',
          '}',
          '',
          'module "bare" {',
          '  source = "./modules/bare"',
          '}',
        ]),
        'modules/bare/main.tf':
            'resource "google_pubsub_topic" "inner" { name = "inner" }\n',
      });
      expect(project.files.containsKey('lib/bare_module.dart'), isFalse);
      expect(
        project.files['lib/infra_stack.dart'],
        contains(
          "addModule(ModuleCall(localName: r'bare', "
          "source: r'./modules/bare'))",
        ),
      );
    });
  });

  group('workspace, timeouts and partial backends (#671)', () {
    test('timeouts becomes a const TfTimeouts', () {
      final r = _migrateJson(
        _resource({
          'name': 'x',
          'timeouts': {'create': '30m', 'update': '1h30m', 'delete': '30m'},
        }),
      );
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(
        r.stackSource,
        contains(
          "timeouts: const TfTimeouts(create: r'30m', update: r'1h30m', "
          "delete: r'30m')",
        ),
      );
    });

    test('a data source may carry timeouts too', () {
      final r = _migrateJson({
        'terraform': _google,
        'data': {
          'google_project': {
            'current': {
              'project_id': 'demo',
              'timeouts': {'read': '5m'},
            },
          },
        },
      });
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(
        r.stackSource,
        contains("timeouts: const TfTimeouts(read: r'5m')"),
      );
    });

    for (final probe in _timeoutBlockers) {
      test('${probe.label} keeps the resource in Terraform', () {
        final r = _migrateJson(
          _resource({'name': 'x', 'timeouts': probe.body}),
        );
        expect(r.report.kept.single.reason, contains(probe.reason));
      });
    }

    test('terraform.workspace becomes the .workspace() shorthand', () {
      final r = _migrateJson(_resource({'name': r'${terraform.workspace}'}));
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(r.stackSource, contains('name: .workspace()'));
    });

    test('workspace inside a larger template stays an expression', () {
      final r = _migrateJson(
        _resource({'name': r'app-${terraform.workspace}'}),
      );
      expect(
        r.stackSource,
        contains(r"name: .expression(r'app-${terraform.workspace}')"),
      );
    });
  });

  group('localModuleOf', () {
    LocalModule of(String hcl) =>
        localModuleOf(TfModule.fromHcl(hcl, fileName: 'main.tf'), name: 'm');

    test('maps the scalar type constraints and leaves the rest untyped', () {
      final m = of(
        _lines([
          'variable "a" { type = string }',
          'variable "b" { type = number }',
          'variable "c" { type = bool }',
          'variable "d" { type = list(string) }',
          'variable "e" {}',
        ]),
      );
      expect(
        {for (final i in m.inputs) i.tfName: i.dartType},
        equals({
          'a': 'String',
          'b': 'num',
          'c': 'bool',
          'd': 'Object?',
          'e': 'Object?',
        }),
      );
      expect(m.inputs.every((i) => i.required), isTrue);
      expect(m.className, 'MModule');
      expect(m.fileStem, 'm_module');
    });

    test('a variable or output named like a member is renamed', () {
      final m = of(
        _lines([
          'variable "source" { type = string }',
          'variable "local_name" { type = string }',
          'output "tf_address" { value = "x" }',
        ]),
      );
      expect(m.input('source')!.dartName, 'sourceInput');
      expect(m.input('local_name')!.dartName, 'localNameInput');
      expect(m.output('tf_address')!.dartName, 'tfAddressOutput');
    });

    test('a module with neither variables nor outputs is empty', () {
      expect(of('resource "google_pubsub_topic" "t" {}\n').isEmpty, isTrue);
    });
  });

  group('lift-workspace (#668)', () {
    MigrationResult lift(String body, {bool liftWorkspace = true}) =>
        migrateModule(
          TfModule.fromHcl(_hcl([body]), fileName: 'main.tf'),
          name: 'demo',
          format: false,
          liftWorkspace: liftWorkspace,
        );

    test('terraform.workspace becomes the Stack parameter', () {
      final r = lift(
        'resource "google_pubsub_topic" "t" {\n'
        '  name = terraform.workspace\n'
        '}\n',
      );
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(r.stackSource, contains('DemoStack({required String workspace})'));
      expect(r.stackSource, contains('name: .literal(workspace)'));
      expect(r.stackSource, isNot(contains('.workspace()')));
    });

    test('without the flag it stays a Terraform expression', () {
      final r = lift(
        'resource "google_pubsub_topic" "t" {\n'
        '  name = terraform.workspace\n'
        '}\n',
        liftWorkspace: false,
      );
      expect(r.stackSource, contains('name: .workspace()'));
      expect(r.stackSource, contains('DemoStack() :'));
    });

    test('a template around it becomes Dart interpolation', () {
      final r = lift(
        'resource "google_pubsub_topic" "t" {\n'
        '  name = "orders-\${terraform.workspace}"\n'
        '}\n',
      );
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(r.stackSource, contains(r"name: .literal('orders-$workspace')"));
    });

    test('a name running on from the workspace is braced', () {
      // `'t-$workspace_v2'` would read the identifier `workspace_v2`.
      final r = lift(
        'resource "google_pubsub_topic" "t" {\n'
        '  name = "t-\${terraform.workspace}_v2"\n'
        '}\n',
      );
      expect(r.report.isComplete, isTrue, reason: r.report.renderText());
      expect(r.stackSource, contains(r"name: .literal('t-${workspace}_v2')"));
    });

    test('a workspace reference inside a map lifts too', () {
      final r = lift(
        'resource "google_pubsub_topic" "t" {\n'
        '  name   = "t"\n'
        '  labels = { env = terraform.workspace }\n'
        '}\n',
      );
      expect(r.stackSource, contains("labels: .literal({r'env': workspace})"));
    });

    test(
      'a template holding another reference is left alone, with a warning',
      () {
        final r = lift(
          'variable "suffix" {\n'
          '  type = string\n'
          '}\n'
          '\n'
          'resource "google_pubsub_topic" "t" {\n'
          '  name = "t-\${terraform.workspace}-\${var.suffix}"\n'
          '}\n',
        );
        expect(
          r.stackSource,
          contains(r".expression(r't-${terraform.workspace}-${var.suffix}')"),
        );
        expect(
          r.report.warnings.join('\n'),
          contains('mixes `terraform.workspace` with other references'),
        );
        expect(r.stackSource, isNot(contains('required String workspace')));
      },
    );

    test('bin/infra.dart takes --workspace', () {
      final r = lift(
        'resource "google_pubsub_topic" "t" {\n'
        '  name = terraform.workspace\n'
        '}\n',
      );
      final infra = r.files['bin/infra.dart']!;
      expect(
        infra,
        contains("final workspace = _option(args, '--workspace') ?? 'default'"),
      );
      expect(infra, contains('DemoStack(workspace: workspace)'));
      expect(infra, contains("if (args[i] == flag && i + 1 < args.length)"));
    });
  });
}

/// [lines] as one HCL source string.
String _lines(List<String> lines) => '${lines.join('\n')}\n';

/// [lines] under a `terraform { required_providers { google = ... } }` header.
String _hcl(List<String> lines) => _lines([
  'terraform {',
  '  required_providers {',
  '    google = { source = "hashicorp/google", version = "~> 8.0" }',
  '  }',
  '}',
  '',
  ...lines,
]);

/// Module-call bodies the emitter cannot express, with the reason it gives.
const _moduleBlockers =
    <({String label, Map<String, Object?> body, String reason})>[
      (
        label: 'count',
        body: {'source': './m', 'count': 2},
        reason: 'count on a module call',
      ),
      (
        label: 'for_each',
        body: {'source': './m', 'for_each': r'${toset(["a"])}'},
        reason: 'for_each on a module call',
      ),
      (
        label: 'a computed source',
        body: {'source': r'${var.module_source}'},
        reason: 'is not a literal',
      ),
      (
        label: 'no source',
        body: {'depends_on': <String>[]},
        reason: 'no "source"',
      ),
    ];

/// One resource of [type] named `x` with [body], under a google terraform
/// block — the top-level twin of the `module(...)` helper inside the
/// conversion-rule group.
Map<String, Object?> _resource(
  Map<String, Object?> body, {
  String type = 'google_pubsub_topic',
}) => {
  'terraform': _google,
  'resource': {
    type: {'x': body},
  },
};

/// `timeouts` blocks the emitter cannot express, with the reason it gives.
const _timeoutBlockers =
    <({String label, Map<String, Object?> body, String reason})>[
      (
        label: 'an unknown operation',
        body: {'plan': '30m'},
        reason: 'not a Terraform operation',
      ),
      (
        label: 'a value that is not a duration',
        body: {'create': '30 minutes'},
        reason: 'is not a Terraform duration string',
      ),
      (
        label: 'a reference',
        body: {'create': r'${var.t}'},
        reason: 'is not a duration string',
      ),
      (label: 'no operation', body: {}, reason: 'sets no operation'),
    ];
