import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

// `--merge-envs` (#668). Two environment roots go in, one Stack taking an
// `Env` enum comes out — or a refusal naming what stopped it. `format:
// false` keeps one statement per line so the substring checks stay readable;
// tool/migrate_fixture_gates.dart proves the merged Stack synthesizes, per
// environment, exactly what one Stack each did.

MergedEnvironment _merge(
  Map<String, String> envs, {
  bool liftWorkspace = false,
  Set<String> raw = const {},
}) => mergeEnvironments(
  group: 'envs',
  envs: [
    for (final e in envs.entries)
      EnvBinding(
        member: e.key,
        path: 'envs/${e.key}',
        module: TfModule.fromHcl(
          raw.contains(e.key) ? e.value : _hcl(e.value),
          fileName: '${e.key}/main.tf',
        ),
      ),
  ],
  stackClass: 'AppStack',
  stackFile: 'app_stack',
  envClass: 'Env',
  envFile: 'env',
  version: '0.0.0-test',
  liftWorkspace: liftWorkspace,
  format: false,
);

String _hcl(String body) =>
    '''
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
  }
}

$body
''';

/// A bucket whose name differs per environment, and nothing else.
String _bucket(String name) =>
    '''
resource "google_storage_bucket" "assets" {
  name     = "$name"
  location = "US"
}
''';

void main() {
  group('merge-envs: what lifts', () {
    final merged = _merge({'dev': _bucket('a-dev'), 'prod': _bucket('a-prod')});

    test('the roots merge', () {
      expect(merged.refusal, isNull);
      expect(merged.isMerged, isTrue);
    });

    test('the differing literal becomes one Env constant', () {
      expect(merged.fields, hasLength(1));
      final field = merged.fields.single;
      expect(field.dartName, 'assetsName');
      expect(field.origin, 'google_storage_bucket.assets.name');
      expect(field.values, {'dev': 'a-dev', 'prod': 'a-prod'});
      expect(merged.guards, isEmpty);
    });

    test('the Stack takes the environment and reads the constant', () {
      expect(merged.source, contains('AppStack({required this.env})'));
      expect(merged.source, contains('final Env env;'));
      expect(merged.source, contains('name: TfArg.literal(env.assetsName)'));
      // The block itself is written once, not once per environment.
      expect('name: TfArg.literal'.allMatches(merged.source), hasLength(1));
      expect(merged.source, contains("import 'env.dart';"));
    });

    test('the enum carries one member per environment', () {
      expect(
        merged.envSource,
        contains("dev(path: r'envs/dev', assetsName: r'a-dev')"),
      );
      expect(
        merged.envSource,
        contains("prod(path: r'envs/prod', assetsName: r'a-prod')"),
      );
      expect(merged.envSource, contains('final String assetsName;'));
      expect(merged.envSource, contains('static Env? byName(String name)'));
    });

    test('every environment keeps its own report', () {
      expect(merged.stacks.keys, unorderedEquals(['dev', 'prod']));
      for (final stack in merged.stacks.values) {
        expect(stack.report.isComplete, isTrue);
        // The Stack itself is written once for the group.
        expect(stack.source, isEmpty);
      }
    });

    test('a variable default, a provider argument and a backend lift too', () {
      String body(String project, String state, String region) =>
          '''
provider "google" {
  project = "$project"
}

terraform {
  backend "gcs" {
    bucket = "$state"
  }
}

variable "region" {
  type    = string
  default = "$region"
}

${_bucket('a')}
''';
      final m = _merge({
        'dev': body('demo-dev', 'dev-state', 'asia-northeast1'),
        'prod': body('demo-prod', 'prod-state', 'us-central1'),
      });
      expect(m.refusal, isNull);
      expect(
        [for (final f in m.fields) f.origin],
        unorderedEquals([
          'provider.google.project',
          'terraform.backend.bucket',
          'variable.region.default',
        ]),
      );
      // A value from the environment is no longer a compile-time constant.
      expect(m.source, contains('GoogleProvider(project: env.googleProject)'));
      expect(m.source, contains('GcsBackend(bucket: env.backendBucket)'));
      expect(m.source, contains('TfVariable(type: '));
      expect(m.source, contains('defaultValue: env.regionDefault'));
      expect(m.source, isNot(contains('const TfVariable')));
    });
  });

  group('merge-envs: what is guarded', () {
    final merged = _merge({
      'dev': _bucket('a'),
      'prod':
          '''
${_bucket('a')}
resource "google_storage_bucket" "backups" {
  name     = "backups"
  location = "US"
}
''',
    });

    test('a block only one environment declares sits behind a flag', () {
      expect(merged.refusal, isNull);
      expect(merged.guards, hasLength(1));
      expect(merged.guards.single.dartName, 'isProd');
      expect(merged.guards.single.members, ['prod']);
      expect(merged.source, contains('if (env.isProd) {'));
      expect(merged.source, contains("localName: r'backups'"));
    });

    test('the flag is false where the block is absent', () {
      expect(merged.envSource, contains('final bool isProd;'));
      expect(merged.envSource, contains('this.isProd = false'));
      expect(merged.envSource, contains('isProd: true'));
    });

    test('a local another guarded block reads is declared ahead of the if', () {
      // `backups` is read by a block that lands in a later `if`, because the
      // module call between them is shared.
      const shared = '''
resource "google_storage_bucket_iam_member" "shared" {
  bucket = google_storage_bucket.assets.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
''';
      final m = _merge({
        'dev': '${_bucket('a')}\n$shared',
        'prod':
            '''
${_bucket('a')}
resource "google_storage_bucket" "backups" {
  name     = "backups"
  location = "US"
}
$shared
resource "google_storage_bucket_iam_member" "backups_reader" {
  bucket = google_storage_bucket.backups.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
''',
      });
      expect(m.refusal, isNull);
      expect(m.source, contains('late final GoogleStorageBucket backups;'));
      expect(m.source, contains('backups = add('));
      expect(m.source, isNot(contains('final backups = add(')));
    });
  });

  group('merge-envs: what is refused', () {
    test('a sensitive variable default is never lifted', () {
      String body(String token) =>
          '''
variable "token" {
  sensitive = true
  default   = "$token"
}

${_bucket('a')}
''';
      final m = _merge({'dev': body('dev-token'), 'prod': body('prod-token')});
      expect(m.isMerged, isFalse);
      expect(m.refusal, contains('variable.token'));
      expect(m.refusal, contains('sensitive'));
      expect(m.fields, isEmpty);
      expect(m.source, isEmpty);
      // The environments still have a Stack each.
      expect(m.stacks['dev']!.report.isComplete, isTrue);
    });

    test('a differing reference is refused, not lifted', () {
      String body(String bucket) =>
          '''
${_bucket('a')}
resource "google_storage_bucket" "other" {
  name     = "o"
  location = "US"
}

resource "google_storage_bucket_iam_member" "reader" {
  bucket = google_storage_bucket.$bucket.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
''';
      final m = _merge({'dev': body('assets'), 'prod': body('other')});
      expect(m.isMerged, isFalse);
      expect(m.refusal, contains('google_storage_bucket_iam_member.reader'));
      expect(m.refusal, contains('"bucket" differs'));
    });

    test('a differing nested block is refused', () {
      final m = _merge({
        'dev': '''
resource "google_storage_bucket" "assets" {
  name     = "a"
  location = "US"
  versioning { enabled = true }
}
''',
        'prod': '''
resource "google_storage_bucket" "assets" {
  name     = "a"
  location = "US"
  versioning { enabled = false }
}
''',
      });
      expect(m.isMerged, isFalse);
      expect(m.refusal, contains('"versioning" differs'));
    });

    test('different backends are refused', () {
      final m = _merge({
        'dev':
            '''
terraform {
  backend "gcs" {
    bucket = "dev"
  }
}

${_bucket('a')}
''',
        'prod':
            '''
terraform {
  backend "local" {
    path = "prod.tfstate"
  }
}

${_bucket('a')}
''',
      });
      expect(m.isMerged, isFalse);
      expect(m.refusal, contains('different providers or backends'));
    });

    test('a root where nothing translates cannot be merged', () {
      final m = _merge(
        {
          'dev': _bucket('a'),
          'prod': '''
resource "unknown_thing" "x" {
  name = "x"
}
''',
        },
        raw: const {'prod'},
      );
      expect(m.isMerged, isFalse);
      expect(m.refusal, contains('nothing translates in envs/prod'));
    });
  });

  group('merge-envs with --lift-workspace', () {
    test('the merged Stack takes both the environment and the workspace', () {
      final m = _merge({
        'dev': _bucket(r'a-${terraform.workspace}'),
        'prod': _bucket(r'a-${terraform.workspace}'),
      }, liftWorkspace: true);
      expect(m.refusal, isNull);
      expect(m.usesWorkspace, isTrue);
      expect(
        m.source,
        contains('AppStack({required this.env, required String workspace})'),
      );
      expect(m.source, contains(r"TfArg.literal('a-$workspace')"));
    });
  });
}
