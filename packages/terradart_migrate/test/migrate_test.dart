import 'dart:convert';
import 'dart:io';

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
    'google': {'source': 'hashicorp/google', 'version': '~> 7.0'},
  },
};

void main() {
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
      expect(src, contains('topic: TfArg.ref(orders.id)'));
      expect(src, contains('TfArg.literal(PubsubSchemaType.protocolBuffer)'));
      expect(src, contains('pushConfig: PubsubSubscriptionPushConfig('));
      expect(src, contains('ackDeadlineSeconds: TfArg.literal(60)'));
      expect(
        src,
        contains(
          'members: TfArg.literal([ordersPublisher.iamMember.interpolation])',
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
      final r = _migrateJson(module({'name': 'x'}, type: 'aws_s3_bucket'));
      expect(reasonOf(r, 'aws_s3_bucket.x'), contains('no curated factory'));
      expect(r.stackSource, isNot(contains('aws_s3_bucket')));
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
        contains(r"ackDeadlineSeconds: TfArg.expression(r'${var.n * 2}')"),
      );
      expect(
        src,
        contains(
          "enableMessageOrdering: TfArg.expression(r'\${var.env == \"prod\"}')",
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
        contains(r"type: TfArg.expression(r'${upper(var.schema_type)}')"),
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
          r"password: TfArg.expression(r'${var.pw_prefix}-${random_id.suffix.hex}')",
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
    google = { source = "hashicorp/google", version = "~> 7.0" }
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
      final r = _migrateJson(module({'name': 'x', 'provider': 'aws'}));
      expect(
        reasonOf(r, 'google_pubsub_topic.x'),
        contains('provider "aws" has no TerraDart factory'),
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
        contains(
          r"name: TfArg.expression(r'${google_pubsub_topic.x.name}-copy')",
        ),
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

  group('module-level blocks', () {
    test(
      'providers come from required_providers, configured from provider blocks',
      () {
        final r = _migrateJson({
          'terraform': {
            'required_version': '>= 1.11.0',
            'required_providers': {
              'google': {'source': 'hashicorp/google', 'version': '~> 7.0'},
              'cloudflare': {
                'source': 'cloudflare/cloudflare',
                'version': '5.23.0',
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
      final partial = _migrateJson({
        'terraform': {
          ..._google,
          'backend': {'gcs': <String, Object?>{}},
        },
      });
      expect(partial.report.kept.single.address, 'terraform.backend');
      expect(partial.report.kept.single.reason, contains('partial'));
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
      expect(r.stackSource, contains("name: TfArg.variable(r'project')"));
      expect(
        r.stackSource,
        contains(r"labels: TfArg.literal({r'k': r'${var.other}'})"),
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

    test('locals, module calls and moved blocks stay in Terraform', () {
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
        unorderedEquals(['local.prefix', 'module.net', 'moved']),
      );
      expect(
        r.report.kept.singleWhere((k) => k.address == 'moved').reason,
        contains('"a.c" stays in Terraform'),
      );
    });
  });

  group('count / for_each unrolling', () {
    test('a literal count becomes one resource per instance, state moved', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
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
          "GooglePubsubTopic(localName: r't_0', name: TfArg.literal(r't-0'), "
          "labels: TfArg.literal({r'index': r'0'}))",
        ),
      );
      expect(src, contains("localName: r't_1', name: TfArg.literal(r't-1')"));
      expect(src, contains('topic: TfArg.ref(t1.nameRef)'));
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
          "GooglePubsubTopic(localName: r't_eu', name: TfArg.literal(r'eu-topic'), "
          "labels: TfArg.literal({r'region': r'europe-west1'}), "
          "messageRetentionDuration: TfArg.expression(r'\${1 * 60}s'))",
        ),
      );
      expect(
        src,
        contains(
          "localName: r't_us-east', name: TfArg.literal(r'us-east-topic')",
        ),
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
          "GooglePubsubTopic(localName: r'plain_a', name: TfArg.literal(r'a'))",
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
    google = { source = "hashicorp/google", version = "~> 7.0" }
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
          r"messageStoragePolicy: TfArg.literal({r'allowed_persistence_regions': r'${[google_pubsub_topic.t_0, google_pubsub_topic.t_1][*].name}'})",
        ),
      );
      // Outputs that are not one attribute stay in outputs.tf, rewritten.
      final outputs = r.sidecar!.files[outputsFileName]!;
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
          "addData(GoogleProject(localName: r'p_0', projectId: TfArg.literal(r'proj-0')))",
        ),
      );
      expect(src, contains('project: TfArg.ref(p1.projectIdRef)'));
      expect(src, isNot(contains('addMoved')));
    });

    test("the module's own moved blocks follow their targets", () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
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
        r.sidecar!.files[leftoverFileName],
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
    });

    test('an instance that cannot become Dart rolls the block back', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
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
        contains(
          r"topic: TfArg.expression(r'${google_pubsub_topic.t[0].name}')",
        ),
      );
      expect(
        r.sidecar!.files[leftoverFileName],
        contains('resource "google_pubsub_topic" "t" {\n  count       = 2'),
      );
    });
  });

  group('HCL input', () {
    test('nested blocks, repeated blocks, depends_on and lifecycle', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
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
      expect(src, contains('topic: TfArg.ref(t.id)'));
      expect(
        src,
        contains(
          "oidcToken: PubsubSubscriptionOidcToken(serviceAccountEmail: TfArg.literal(r'sa@x'))",
        ),
      );
      expect(src, contains('dependsOn: [ResourceDependency(t)]'));
    });

    test('a literal containing an escape survives', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
  }
}
resource "google_pubsub_topic" "t" {
  name = "a-\$\${b}-%%{c}"
}
''');
      expect(r.stackSource, contains(r"name: TfArg.literal(r'a-$${b}-%%{c}')"));
    });
  });

  group('ordering and providers', () {
    test('a depends_on reference declares its target first', () {
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
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
    google = { source = "hashicorp/google", version = "~> 7.0" }
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
        contains(
          "GooglePubsubTopic(localName: r'y', name: TfArg.literal(r'y'))",
        ),
      );
    });

    test('an alias only the provider declares is registered too', () {
      // `provider "google" { alias = "west" }` with no resource selecting
      // it: registered like the default configuration, so a later `provider
      // = google.west` in Dart just works and nothing stays in Terraform.
      final r = _migrateHcl('''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
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
              'version': '~> 7.0',
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
          "GoogleApiGatewayApi(localName: r'api', apiId: TfArg.literal(r'api'))",
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
      expect(r.report.packages, ['terradart_google']);
      final src = r.stackSource;
      expect(src, contains('providers: [const TimeProvider()]'));
      expect(src, isNot(contains('GoogleProvider(')));
      expect(src, contains("import 'package:terradart_google/time.dart';"));
      expect(
        src,
        contains(
          "TimeSleep(localName: r'wait', createDuration: TfArg.literal(r'30s'))",
        ),
      );
    });
  });
}
