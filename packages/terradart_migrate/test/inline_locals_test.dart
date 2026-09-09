import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

// `--inline-locals` (#672). A `locals` entry whose value is a literal
// becomes a `final` in the Stack and leaves the sidecar; everything else
// keeps its entry, with the reason. `format: false` keeps one statement per
// line so the substring checks stay readable;
// tool/migrate_fixture_gates.dart plans a fixture both ways and proves
// Terraform sees the same configuration either way.

MigrationResult _migrate(String body, {bool inlineLocals = true}) =>
    migrateModule(
      TfModule.fromHcl(body, fileName: 'main.tf'),
      name: 'demo',
      format: false,
      inlineLocals: inlineLocals,
    );

Map<String, String> _kept(MigrationResult r) => {
  for (final k in r.report.kept) k.address: k.reason,
};

Set<String> _migratedLocals(MigrationResult r) => {
  for (final m in r.report.migrated)
    if (m.address.startsWith('local.')) m.address,
};

const _bucket = '''
resource "google_storage_bucket" "assets" {
  name     = local.name
  location = "US"
}
''';

void main() {
  group('inline-locals: what is inlined', () {
    test('a literal string becomes a final the argument reads', () {
      final r = _migrate('''
locals {
  name = "a"
}

$_bucket
''');
      expect(r.stackSource, contains("final name = r'a';"));
      expect(r.stackSource, contains('name: TfArg.literal(name)'));
      expect(_migratedLocals(r), {'local.name'});
      expect(r.sidecar!.files.keys, isNot(contains('locals.tf')));
    });

    test('a template around it interpolates the final', () {
      final r = _migrate('''
locals {
  prefix = "acme"
}

resource "google_storage_bucket" "assets" {
  name     = "\${local.prefix}-assets"
  location = "US"
}
''');
      expect(r.stackSource, contains(r"TfArg.literal('$prefix-assets')"));
    });

    test('a number keeps its type, and only fills a slot that takes one', () {
      final r = _migrate('''
locals {
  ack = 45
}

resource "google_pubsub_topic" "t" {
  name = "t"
}

resource "google_pubsub_subscription" "s" {
  name                 = "s"
  topic                = google_pubsub_topic.t.id
  ack_deadline_seconds = local.ack
}
''');
      expect(r.stackSource, contains('final ack = 45;'));
      expect(r.stackSource, contains('ackDeadlineSeconds: TfArg.literal(ack)'));
    });

    test('a local reading another is declared after it', () {
      final r = _migrate('''
locals {
  name   = "\${local.prefix}-assets"
  prefix = "acme"
}

$_bucket
''');
      final source = r.stackSource;
      expect(source, contains("final prefix = r'acme';"));
      expect(source, contains(r"final name = '$prefix-assets';"));
      expect(
        source.indexOf('final prefix'),
        lessThan(source.indexOf('final name')),
        reason: source,
      );
      expect(_migratedLocals(r), {'local.name', 'local.prefix'});
    });

    test('a resource keeps its Dart local; the local takes the suffix', () {
      final r = _migrate('''
locals {
  assets = "a"
}

resource "google_storage_bucket" "assets" {
  name     = local.assets
  location = "US"
}

resource "google_storage_bucket_iam_member" "reader" {
  bucket = google_storage_bucket.assets.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
''');
      // The resource is still `assets`, as it is without the flag.
      expect(r.stackSource, contains('final assets = add('));
      expect(r.stackSource, contains("final assetsLocal = r'a';"));
      expect(r.stackSource, contains('name: TfArg.literal(assetsLocal)'));
    });
  });

  group('inline-locals: what stays', () {
    test('without the flag every local stays, and the reason names it', () {
      final r = _migrate('''
locals {
  name = "a"
}

$_bucket
''', inlineLocals: false);
      expect(_migratedLocals(r), isEmpty);
      expect(_kept(r)['local.name'], contains('--inline-locals'));
      expect(r.stackSource, contains(r"TfArg.expression(r'${local.name}')"));
    });

    test('a value that is not a scalar', () {
      final r = _migrate('''
locals {
  name   = "a"
  labels = { env = "dev" }
  zones  = ["a", "b"]
}

$_bucket
''');
      expect(_kept(r)['local.labels'], contains('an object'));
      expect(_kept(r)['local.zones'], contains('a list'));
    });

    test('a value reading something with no Dart value', () {
      final r = _migrate('''
variable "env" {
  type = string
}

locals {
  name = "a"
  env  = var.env
  live = google_storage_bucket.assets.name
}

$_bucket
''');
      expect(_kept(r)['local.env'], contains('`var.env`'));
      expect(_kept(r)['local.live'], contains('google_storage_bucket.assets'));
    });

    test('a local nothing reads', () {
      final r = _migrate('''
locals {
  name  = "a"
  spare = "unread"
}

$_bucket
''');
      expect(_kept(r)['local.spare'], 'nothing reads it');
      expect(r.stackSource, isNot(contains('spare')));
    });

    test('a local a kept block still reads', () {
      final r = _migrate('''
locals {
  name      = "a"
  retention = "604800s"
}

$_bucket
resource "unknown_thing" "x" {
  retention = local.retention
}
''');
      expect(
        _kept(r)['local.retention'],
        contains('only what stays in Terraform reads it'),
      );
      expect(_migratedLocals(r), {'local.name'});
    });

    test('a local both the Stack and a kept block read', () {
      final r = _migrate('''
locals {
  name = "a"
}

$_bucket
resource "unknown_thing" "x" {
  name = local.name
}
''');
      // Declared, so the Stack reads a Dart value — and kept, so Terraform
      // can go on resolving it for the block that stayed behind.
      expect(r.stackSource, contains("final name = r'a';"));
      expect(_migratedLocals(r), isEmpty);
      expect(
        _kept(r)['local.name'],
        contains('something still in Terraform reads it'),
      );
    });

    test('a name two locals blocks both declare', () {
      final r = _migrate('''
locals {
  name = "a"
}

locals {
  name = "b"
}

$_bucket
''');
      expect(_kept(r)['local.name'], contains('more than one'));
    });

    test('a cycle inlines neither', () {
      final r = _migrate('''
locals {
  name = "\${local.a}"
  a    = "\${local.b}"
  b    = "\${local.a}"
}

$_bucket
''');
      expect(_migratedLocals(r), isEmpty);
      expect(_kept(r)['local.a'], contains('`local.b`'));
    });
  });

  group('inline-locals: the sidecar', () {
    test('only the entries that stay are written, each over its reason', () {
      final r = _migrate('''
locals {
  name   = "a"
  labels = { env = "dev" }
  spare  = "unread"
}

$_bucket
''');
      final locals = r.sidecar!.files['locals.tf']!;
      expect(locals, contains('locals {'));
      expect(locals, contains('labels'));
      expect(locals, contains('spare'));
      expect(locals, isNot(contains('name   = "a"')));
      expect(locals, contains('# terradart-migrate: nothing reads it'));
      expect(r.sidecar!.placements['local.spare'], 'locals.tf');
    });

    test('a block every entry of which stays is copied as written', () {
      final r = _migrate('''
locals {
  labels = { env = "dev" }
}

resource "google_storage_bucket" "assets" {
  name     = "a"
  location = "US"
}
''');
      final locals = r.sidecar!.files['locals.tf']!;
      // One comment for the block, not one per entry.
      expect('# terradart-migrate: '.allMatches(locals), hasLength(1));
    });

    test('no locals block is written when every entry became Dart', () {
      final r = _migrate('''
locals {
  name = "a"
}

$_bucket
''');
      expect(r.sidecar!.files.keys, isNot(contains('locals.tf')));
      expect(r.report.isComplete, isTrue);
    });
  });

  group('inline-locals: templates', () {
    test('an escaped sequence stays escaped, so the value is unchanged', () {
      final r = _migrate(r'''
locals {
  prefix = "acme"
}

resource "google_storage_bucket" "assets" {
  name     = "${local.prefix}-$${not_a_reference}"
  location = "US"
}
''');
      expect(
        r.stackSource,
        contains(r"TfArg.literal('$prefix-\$\${not_a_reference}')"),
      );
    });

    test('a directive is never rewritten', () {
      final r = _migrate(r'''
locals {
  prefix = "acme"
}

resource "google_storage_bucket" "assets" {
  name     = "%{ if true }${local.prefix}%{ endif }"
  location = "US"
}
''');
      expect(r.stackSource, contains('TfArg.expression('));
      // The Stack still emits the template, so the sidecar must go on
      // defining what it reads.
      expect(
        _kept(r)['local.prefix'],
        contains('only what stays in Terraform reads it'),
      );
    });

    test('a template mixing an inlined local with a live reference stays', () {
      final r = _migrate(r'''
locals {
  prefix = "acme"
}

resource "google_pubsub_topic" "t" {
  name = "t"
}

resource "google_storage_bucket" "assets" {
  name     = "${local.prefix}-${google_pubsub_topic.t.name}"
  location = "US"
}
''');
      expect(r.stackSource, contains('TfArg.expression('));
      expect(_migratedLocals(r), isEmpty);
    });
  });
}
