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
        contains("PubsubQuickstartStack().writeTo('tf-out')"),
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
          _migrateJson(module({'name': 'x', 'count': 2})),
          'google_pubsub_topic.x',
        ),
        contains('count'),
      );
      expect(
        reasonOf(
          _migrateJson(module({'name': 'x', 'for_each': r'${toset(["a"])}'})),
          'google_pubsub_topic.x',
        ),
        contains('for_each'),
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

    test('an expression on a non-string argument', () {
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
            },
          },
        },
      });
      expect(
        reasonOf(r2, 'google_pubsub_subscription.s'),
        contains('needs TfArg.expression'),
      );
    });

    test('a provider alias', () {
      final r = _migrateJson(module({'name': 'x', 'provider': 'google.eu'}));
      expect(reasonOf(r, 'google_pubsub_topic.x'), contains('alias'));
    });

    test('depends_on a resource that is kept', () {
      final r = _migrateJson({
        'terraform': _google,
        'resource': {
          'google_pubsub_topic': {
            'x': {'name': 'x', 'count': 1},
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
            'x': {'name': 'x', 'count': 1},
            'y': {'name': r'${google_pubsub_topic.x.name}-copy'},
          },
        },
      });
      expect(r.report.kept.map((k) => k.address), ['google_pubsub_topic.x']);
      expect(
        r.stackSource,
        contains(r"name: TfArg.literal(r'${google_pubsub_topic.x.name}-copy')"),
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
      expect(r.report.kept.map((k) => k.address), [
        'local.prefix',
        'module.net',
        'moved',
      ]);
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
}
