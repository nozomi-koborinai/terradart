import 'dart:convert';

import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

MigrationResult _hcl(
  String hcl, {
  bool childModule = false,
  bool allowTodo = false,
}) => migrateModule(
  TfModule.fromHcl(hcl, fileName: 'main.tf'),
  name: 'demo',
  format: false,
  childModule: childModule,
  allowTodo: allowTodo,
);

void main() {
  group('HCL input', () {
    final r = _hcl(r'''
terraform {
  required_version = ">= 1.11.0"
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
    aws    = { source = "hashicorp/aws", version = "~> 5.0" }
  }
  backend "azurerm" {
    container_name = "tfstate"
  }
}

provider "google" {
  project = "p"
}

provider "google" {
  alias  = "west"
  region = "us-west1"
}

variable "name" {
  type = string
}

variable "checked" {
  type = string
  validation {
    condition     = length(var.checked) > 0
    error_message = "must not be empty"
  }
}

locals {
  prefix = "app"
  suffix = "x"
}

# The topic every subscription needs.
resource "google_pubsub_topic" "t" {
  name = var.name
}

# Fan-out subscriptions.
resource "google_pubsub_subscription" "many" {
  count = 2
  name  = "s-${count.index}"
  topic = google_pubsub_topic.t.name
} # trailing

resource "aws_s3_bucket" "logs" {
  bucket = "logs"
}

moved {
  from = google_pubsub_topic.old
  to   = google_pubsub_topic.t
}

output "topic" {
  value = google_pubsub_topic.t.id
}

output "label" {
  value = "${local.prefix}-${google_pubsub_topic.t.name}"
}
''');
    final sidecar = r.sidecar!;

    test('splits the kept blocks into the conventional files', () {
      expect(
        sidecar.files.keys,
        unorderedEquals([
          leftoverFileName,
          backendFileName,
          variablesFileName,
          localsFileName,
          outputsFileName,
        ]),
      );
      expect(
        r.files.keys,
        containsAll([
          'tf-out/$leftoverFileName',
          'tf-out/$backendFileName',
          'tf-out/$variablesFileName',
          'tf-out/$localsFileName',
          'tf-out/$outputsFileName',
        ]),
      );
    });

    test('resource-level blocks are copied verbatim, comments included', () {
      final leftover = sidecar.files[leftoverFileName]!;
      expect(
        leftover,
        contains(
          '# terradart-migrate: count is not supported yet (addresses cannot '
          'be preserved, #663)\n'
          '# Fan-out subscriptions.\n'
          'resource "google_pubsub_subscription" "many" {\n'
          '  count = 2\n'
          '  name  = "s-\${count.index}"\n'
          '  topic = google_pubsub_topic.t.name\n'
          '} # trailing',
        ),
      );
      expect(leftover, contains('resource "aws_s3_bucket" "logs" {'));
      expect(leftover, contains('moved {\n  from = google_pubsub_topic.old'));
      expect(leftover, contains('provider "google" {\n  alias  = "west"'));
      expect(leftover, isNot(contains('resource "google_pubsub_topic" "t"')));
      expect(leftover, isNot(contains('project = "p"')));
      expect(leftover, startsWith('# Kept in Terraform by terradart-migrate'));
      expect(
        sidecar.placements['google_pubsub_subscription.many'],
        leftoverFileName,
      );
      expect(sidecar.placements['moved'], leftoverFileName);
      expect(sidecar.placements['provider.google.west'], leftoverFileName);
    });

    test('terraform settings the Stack does not own go to backend.tf', () {
      final backend = sidecar.files[backendFileName]!;
      expect(
        backend,
        contains(
          'terraform {\n'
          '  # terradart-migrate: backend "azurerm" has no TerraDart type; it '
          'stays in backend.tf\n'
          '  backend "azurerm" {\n'
          '    container_name = "tfstate"\n'
          '  }\n'
          '\n'
          '  required_providers {\n'
          '    # terradart-migrate: provider "aws" has no TerraDart factory\n'
          '    aws    = { source = "hashicorp/aws", version = "~> 5.0" }\n'
          '  }\n'
          '}',
        ),
      );
      expect(backend, isNot(contains('google = {')));
      expect(backend, isNot(contains('required_version')));
      expect(sidecar.placements['terraform.backend'], backendFileName);
      expect(
        sidecar.placements['terraform.required_providers.aws'],
        backendFileName,
      );
      expect(sidecar.placements['provider.aws'], backendFileName);
      for (final k in r.report.kept) {
        expect(
          sidecar.placements[k.address],
          isNotNull,
          reason: '${k.address} has no sidecar file',
        );
      }
      expect(r.stackSource, contains("setRequiredVersion(r'>= 1.11.0');"));
    });

    test('variables, locals and outputs keep only what the Stack left', () {
      expect(
        sidecar.files[variablesFileName],
        contains('variable "checked" {'),
      );
      expect(
        sidecar.files[variablesFileName],
        isNot(contains('variable "name"')),
      );
      expect(r.stackSource, contains("addExternalVariable(r'checked');"));
      expect(
        sidecar.files[localsFileName],
        contains('locals {\n  prefix = "app"\n  suffix = "x"\n}'),
      );
      expect(sidecar.placements['local.prefix'], localsFileName);
      expect(sidecar.placements['local.suffix'], localsFileName);
      expect(sidecar.files[outputsFileName], contains('output "label" {'));
      expect(sidecar.files[outputsFileName], isNot(contains('output "topic"')));
      expect(r.stackSource, contains("addExport(r'topic'"));
    });
  });

  test('tf.json blocks are rendered back to HCL', () {
    final r = migrateModule(
      TfModule.fromTfJson(
        jsonEncode({
          'terraform': {
            'required_providers': {
              'google': {'source': 'hashicorp/google', 'version': '~> 7.0'},
            },
            'backend': {
              'azurerm': {'container_name': 'tfstate'},
            },
          },
          'resource': {
            'google_pubsub_topic': {
              't': {'name': 't', 'count': 2},
            },
          },
          'locals': {'prefix': 'app'},
        }),
        fileName: 'main.tf.json',
      ),
      name: 'demo',
      format: false,
    );
    final sidecar = r.sidecar!;
    expect(
      sidecar.files[leftoverFileName],
      contains(
        'resource "google_pubsub_topic" "t" {\n  name = "t"\n  count = 2\n}',
      ),
    );
    expect(
      sidecar.files[backendFileName],
      contains('  backend "azurerm" {\n    container_name = "tfstate"\n  }'),
    );
    expect(
      sidecar.files[localsFileName],
      contains('locals {\n  prefix = "app"\n}'),
    );
  });

  test('child-module mode keeps provider configurations and the backend', () {
    final r = _hcl(r'''
terraform {
  backend "gcs" { bucket = "b" }
}

provider "google" {
  project = "p"
}

resource "google_pubsub_topic" "t" {
  name = "t"
}

output "id" {
  value = google_pubsub_topic.t.id
}
''', childModule: true);
    expect(r.stackSource, contains('providers: [const GoogleProvider()]'));
    expect(r.stackSource, isNot(contains('GcsBackend')));
    expect(r.stackSource, contains("addExport(r'id'"));
    expect(
      r.report.kept.map((k) => k.address),
      unorderedEquals(['provider.google', 'terraform.backend']),
    );
    expect(r.report.providers, ['google']);
    expect(
      r.sidecar!.files[leftoverFileName],
      contains('provider "google" {\n  project = "p"\n}'),
    );
    expect(
      r.sidecar!.files[backendFileName],
      contains('  backend "gcs" { bucket = "b" }'),
    );
  });

  test('allowTodo writes TODOs into the Stack and no sidecar', () {
    final r = _hcl(r'''
resource "google_pubsub_topic" "ok" {
  name = "ok"
}

resource "google_pubsub_topic" "t" {
  name  = "t"
  count = 2
}
''', allowTodo: true);
    expect(r.hasStack, isTrue);
    expect(r.stackSource, contains("localName: r'ok'"));
    expect(r.sidecar, isNull);
    expect(r.files.keys.where((k) => k.startsWith('tf-out/')), isEmpty);
    expect(
      r.stackSource,
      contains(
        '// TODO(terradart-migrate): google_pubsub_topic.t: count is not '
        'supported yet',
      ),
    );
  });

  test('a directory where nothing translates gets no Stack', () {
    const hcl = r'''
terraform {
  required_version = ">= 1.5.0"
  backend "gcs" { bucket = "b" }
}

variable "name" {
  type = string
}

resource "aws_s3_bucket" "logs" {
  bucket = var.name
}

output "arn" {
  value = aws_s3_bucket.logs.arn
}
''';
    for (final allowTodo in [false, true]) {
      final r = _hcl(hcl, allowTodo: allowTodo);
      expect(r.hasStack, isFalse, reason: 'allowTodo: $allowTodo');
      expect(r.stackSource, isEmpty);
      expect(r.files.keys.where((k) => k.startsWith('lib/')), isEmpty);
      expect(r.files['bin/infra.dart'], contains('nothing yet'));
      expect(r.report.migrated, isEmpty);
      expect(
        r.report.kept.map((k) => k.address),
        unorderedEquals([
          'terraform.required_version',
          'terraform.backend',
          'variable.name',
          'aws_s3_bucket.logs',
          'output.arn',
        ]),
      );
      final sidecar = r.sidecar!;
      expect(sidecar.files[backendFileName], contains('backend "gcs"'));
      expect(sidecar.files[backendFileName], contains('required_version'));
      expect(sidecar.files[variablesFileName], contains('variable "name"'));
      expect(sidecar.files[outputsFileName], contains('output "arn"'));
      for (final k in r.report.kept) {
        expect(sidecar.placements[k.address], isNotNull, reason: k.address);
      }
    }
  });

  test('a sensitive literal never reaches the Dart output', () {
    final r = _hcl(r'''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
  }
}

resource "google_sql_user" "app" {
  name     = "app"
  instance = "db"
  password = "hunter2-secret"
}
''');
    expect(r.stackSource, isNot(contains('hunter2-secret')));
    expect(r.files['bin/infra.dart'], isNot(contains('hunter2-secret')));
    expect(r.report.kept.single.address, 'google_sql_user.app');
    expect(r.sidecar!.files[leftoverFileName], contains('hunter2-secret'));
  });
}
