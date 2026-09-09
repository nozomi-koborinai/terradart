import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

// Comment carry-over (#672). A block's leading HCL comments are the author's
// documentation of the resource: the sidecar keeps them for a block that
// stays in Terraform, and the Stack used to be the one place they were lost.
// They now sit above the `add(...)` the block became.

String _stack(String body) => migrateModule(
  TfModule.fromHcl(body, fileName: 'main.tf'),
  name: 'demo',
).stackSource;

const _bucket = '''
resource "google_storage_bucket" "assets" {
  name     = "a"
  location = "US"
}
''';

void main() {
  group('comments', () {
    test('a hash comment lands above the statement it documents', () {
      final source = _stack('''
# The bucket every service writes its artifacts to.
# Retention is a lifecycle rule, not an argument.
$_bucket
''');
      expect(
        source,
        contains(
          '    // The bucket every service writes its artifacts to.\n'
          '    // Retention is a lifecycle rule, not an argument.\n'
          '    add(',
        ),
      );
    });

    test('a slash comment carries too', () {
      expect(
        _stack('''
// A data source with a slash comment.
data "google_project" "current" {}
'''),
        contains('// A data source with a slash comment.'),
      );
    });

    test('a block comment becomes one // line per line of prose', () {
      final source = _stack('''
/*
 * A topic per region.
 *
 * Fanned out from one publisher.
 */
resource "google_pubsub_topic" "t" {
  name = "t"
}
''');
      expect(source, contains('// A topic per region.'));
      expect(source, contains('// Fanned out from one publisher.'));
      // The delimiters are not prose, and neither is the blank line they sat
      // on: only the text between them comes across.
      expect(source, isNot(contains('/*')));
      expect(source, isNot(contains('* A topic')));
    });

    test("the migrator's own annotations never come back", () {
      // What a sidecar carries above every kept block, which `--update`
      // reads as its input.
      final source = _stack('''
# terradart-migrate: no curated factory for resource type "x" (request curation)
# A real comment under it still carries.
$_bucket
''');
      expect(source, isNot(contains('terradart-migrate: no curated factory')));
      expect(source, contains('// A real comment under it still carries.'));
    });

    test('a module call is documented like a resource', () {
      expect(
        _stack('''
# The shared service-account module.
module "sa" {
  source = "./modules/sa"
}
'''),
        contains('// The shared service-account module.'),
      );
    });

    test('an unrolled block documents its instances once', () {
      final source = _stack('''
# One topic per shard.
resource "google_pubsub_topic" "t" {
  count = 2
  name  = "t-\${count.index}"
}
''');
      expect('// One topic per shard.'.allMatches(source), hasLength(1));
      expect(source, contains("localName: r't_0'"));
      expect(source, contains("localName: r't_1'"));
    });

    test('a block with no comment gets none', () {
      expect(_stack(_bucket), isNot(contains('//   ')));
    });

    test('a merged Stack carries none', () {
      // Two environments may document the same block differently, and the
      // merge lines their bodies up statement by statement.
      String env(String note) =>
          '''
# $note
$_bucket
''';
      final merged = mergeEnvironments(
        group: 'envs',
        envs: [
          for (final e in {
            'dev': 'The dev bucket.',
            'prod': 'The prod bucket.',
          }.entries)
            EnvBinding(
              member: e.key,
              path: 'envs/${e.key}',
              module: TfModule.fromHcl(env(e.value), fileName: 'main.tf'),
            ),
        ],
        stackClass: 'AppStack',
        stackFile: 'app_stack',
        envClass: 'Env',
        envFile: 'env',
        version: '0.0.0-test',
      );
      expect(merged.refusal, isNull);
      expect(merged.source, isNot(contains('bucket.')));
    });
  });
}
