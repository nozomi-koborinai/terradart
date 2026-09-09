import 'dart:io';

import 'package:terradart_agent/src/tools/migrate_module.dart';
import 'package:test/test.dart';

// `migrate_module` (#667): the migrator, over MCP. The module arrives as
// text and leaves as Dart, a sidecar and a report — nothing is read from
// disk. The pubsub fixture is `terradart_migrate`'s own, so the tool is
// tested against the module the migrator's tests translate.
const _pubsubFixture =
    '../terradart_migrate/test/fixtures/pubsub_quickstart.tf.json';

const _bucketHcl = '''
resource "google_storage_bucket" "assets" {
  name     = "a"
  location = "US"
}
''';

void main() {
  group('migrate_module: the pubsub fixture', () {
    final source = File(_pubsubFixture).readAsStringSync();
    final out = migrateModuleSource(source, name: 'orders');

    test('the whole module becomes Dart', () {
      expect(out['error'], isNull, reason: '${out['error']}');
      expect(out['migrated'], isTrue);
      final report = out['report'] as Map<String, Object?>;
      expect(report['complete'], isTrue);
      expect(report['kept'], isEmpty);
      expect(report['packages'], ['terradart_google']);
      expect(
        (report['migrated'] as List).map(
          (m) => (m as Map<String, Object?>)['address'],
        ),
        containsAll([
          'google_pubsub_topic.orders',
          'google_pubsub_subscription.orders_push',
          'data.google_project.current',
          'output.ORDERS_TOPIC_NAME',
        ]),
      );
    });

    test('the Dart is a Stack named after the module', () {
      expect(out['stack_class'], 'OrdersStack');
      expect(out['stack_file'], 'lib/orders_stack.dart');
      expect(out['package_name'], 'orders');
      final dart = out['dart_source'] as String;
      expect(dart, contains('final class OrdersStack extends Stack {'));
      expect(dart, contains("import 'package:terradart_google/pubsub.dart';"));
      expect(dart, contains('GooglePubsubTopic('));
      expect(dart, contains("localName: r'orders'"));
    });

    test('the package around it comes too', () {
      expect(out['pubspec'], contains('name: orders'));
      expect(out['pubspec'], contains('terradart_google:'));
      expect(out['infra_source'], contains("OrdersStack().writeTo(r'tf-out')"));
    });

    test('nothing stays in Terraform, so there is no sidecar', () {
      expect(out['sidecar'], isEmpty);
      expect(out['sidecar_placements'], isEmpty);
      expect(out['report_text'], contains('kept in Terraform: 0'));
    });

    test('the tf.json syntax is read without being named', () {
      // `auto` reads the leading brace as Terraform JSON; naming it `hcl`
      // is the caller's mistake, and it is reported as one.
      expect(
        migrateModuleSource(source, syntax: MigrateSyntax.json)['migrated'],
        isTrue,
      );
      final wrong = migrateModuleSource(source, syntax: MigrateSyntax.hcl);
      expect(wrong['error'], contains('not valid HCL'));
      expect(wrong['diagnostics'], isNotEmpty);
    });
  });

  group('migrate_module: HCL', () {
    test('a .tf module translates the same way', () {
      final out = migrateModuleSource(_bucketHcl);
      expect(out['error'], isNull);
      expect(out['migrated'], isTrue);
      expect(out['stack_class'], 'MainStack');
      expect(out['stack_file'], 'lib/main_stack.dart');
      expect(out['dart_source'], contains('GoogleStorageBucket('));
      expect(out['dart_source'], contains("localName: r'assets'"));
    });

    test('what has no factory stays in Terraform, with a reason', () {
      final out = migrateModuleSource('''
$_bucketHcl
resource "unknown_thing" "x" {
  name = "x"
}
''');
      expect(out['migrated'], isTrue);
      final sidecar = out['sidecar'] as Map<String, Object?>;
      expect(sidecar, isNotEmpty);
      expect(sidecar.values.join(), contains('resource "unknown_thing" "x"'));
      expect(
        out['sidecar_placements'],
        containsPair('unknown_thing.x', isA<String>()),
      );
      final kept = (out['report'] as Map<String, Object?>)['kept'] as List;
      expect(
        (kept.single as Map<String, Object?>)['reason'],
        contains('no curated factory'),
      );
    });

    test('--allow-todo puts the leftover in the Stack instead', () {
      final out = migrateModuleSource('''
$_bucketHcl
resource "unknown_thing" "x" {
  name = "x"
}
''', allowTodo: true);
      expect(out['sidecar'], isEmpty);
      expect(out['dart_source'], contains('TODO'));
      expect(out['dart_source'], contains('unknown_thing.x'));
    });

    test('a module where nothing translates has no Stack at all', () {
      final out = migrateModuleSource('''
resource "unknown_thing" "x" {
  name = "x"
}
''');
      expect(out['migrated'], isFalse);
      expect(out['dart_source'], isEmpty);
      expect(out['sidecar'], isNotEmpty);
    });
  });

  group('migrate_module: what comes back as an error, not a throw', () {
    test('a source that does not parse', () {
      final out = migrateModuleSource('resource "x" {');
      expect(out['error'], contains('not valid HCL'));
      expect(out['diagnostics'], isA<List<String>>());
      expect(out['dart_source'], isNull);
    });

    test('an empty source', () {
      expect(migrateModuleSource('   \n')['error'], contains('empty'));
    });

    test('a name that is not a Dart package name', () {
      for (final name in const ['', '   ']) {
        expect(
          migrateModuleSource(_bucketHcl, name: name)['error'],
          contains('package name'),
          reason: '"\$name"',
        );
      }
    });

    test('a name the migrator can sanitize is sanitized, not refused', () {
      // The name reaches a pubspec and a class declaration, so nothing of
      // what an agent passes survives into either verbatim.
      for (final entry in const {
        '../escape': 'escape',
        '9lives': 'm_9lives',
        'a b': 'a_b',
      }.entries) {
        final out = migrateModuleSource(_bucketHcl, name: entry.key);
        expect(out['error'], isNull, reason: entry.key);
        expect(out['package_name'], entry.value, reason: entry.key);
      }
    });

    test('a name Dart accepts once lower-cased is kept', () {
      final out = migrateModuleSource(_bucketHcl, name: 'My-Infra');
      expect(out['error'], isNull);
      expect(out['package_name'], 'my_infra');
      expect(out['stack_class'], 'MyInfraStack');
    });
  });
}
