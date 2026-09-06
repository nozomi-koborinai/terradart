import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

void main() {
  test('one manifest per provider package, in lookup precedence', () {
    expect(allMigrateManifests.map((m) => m.package), [
      'terradart_google',
      'terradart_google_beta',
      'terradart_appwrite',
      'terradart_cloudflare',
    ]);
    expect(
      manifestForPackage('terradart_cloudflare'),
      cloudflareMigrateManifest,
    );
    expect(manifestForPackage('terradart_nope'), isNull);
  });

  for (final manifest in allMigrateManifests) {
    group(manifest.package, () {
      test('is non-empty and sorted by type, resource before data source', () {
        expect(manifest.entries, isNotEmpty);
        for (var i = 1; i < manifest.entries.length; i++) {
          final a = manifest.entries[i - 1];
          final b = manifest.entries[i];
          final byType = a.tfType.compareTo(b.tfType);
          expect(
            byType,
            lessThanOrEqualTo(0),
            reason: '${a.tfType} > ${b.tfType}',
          );
          if (byType == 0) {
            expect(a.kind, CatalogKind.resource, reason: a.tfType);
            expect(b.kind, CatalogKind.dataSource, reason: b.tfType);
          }
        }
      });

      test('every type carries the registry prefix', () {
        final prefix = switch (manifest.package) {
          'terradart_google' || 'terradart_google_beta' => 'google_',
          'terradart_appwrite' => 'appwrite_',
          'terradart_cloudflare' => 'cloudflare_',
          _ => throw StateError(manifest.package),
        };
        for (final e in manifest.entries) {
          expect(e.tfType, startsWith(prefix));
        }
      });

      test('every helper, enum and sealed variant reference resolves', () {
        void checkSlots(List<MigrateSlot> slots, String where) {
          for (final s in slots) {
            switch (s.kind) {
              case MigrateSlotKind.helper:
                expect(
                  manifest.helpers,
                  contains(s.helper),
                  reason: '$where.${s.dartName}',
                );
              case MigrateSlotKind.enumValue:
                expect(
                  manifest.enums,
                  contains(s.dartType),
                  reason: '$where.${s.dartName}',
                );
              case MigrateSlotKind.sealed:
                expect(s.variants, isNotEmpty, reason: '$where.${s.dartName}');
                for (final v in s.variants!.values) {
                  expect(
                    manifest.helpers,
                    contains(v),
                    reason: '$where.${s.dartName} → $v',
                  );
                }
              case MigrateSlotKind.manual:
                expect(s.reason, isNotEmpty, reason: '$where.${s.dartName}');
              case MigrateSlotKind.scalar || MigrateSlotKind.passthrough:
                expect(s.dartType, isNotEmpty, reason: '$where.${s.dartName}');
            }
          }
        }

        for (final e in manifest.entries) {
          checkSlots(e.slots, e.className);
        }
        for (final h in manifest.helpers.entries) {
          expect(h.key, h.value.className);
          checkSlots(h.value.slots, h.key);
        }
        for (final e in manifest.enums.entries) {
          expect(e.key, e.value.name);
          expect(e.value.members, isNotEmpty, reason: e.key);
        }
      });

      test('no (type, kind) appears twice', () {
        final seen = <(String, CatalogKind)>{};
        for (final e in manifest.entries) {
          expect(seen.add((e.tfType, e.kind)), isTrue, reason: e.tfType);
        }
      });
    });
  }

  test('entryFor / findMigrateEntry resolve a curated type', () {
    final topic = googleMigrateManifest.entryFor(
      'google_pubsub_topic',
      CatalogKind.resource,
    );
    expect(topic, isNotNull);
    expect(topic!.className, 'GooglePubsubTopic');
    expect(topic.barrel, 'pubsub');
    expect(topic.slots.map((s) => s.tfName), contains('name'));
    expect(topic.getters.map((g) => g.dartName), contains('id'));

    final zone = findMigrateEntry('cloudflare_zone', CatalogKind.resource);
    expect(zone, isNotNull);
    expect(zone!.manifest.package, 'terradart_cloudflare');
    expect(zone.entry.className, 'CloudflareZone');

    expect(findMigrateEntry('aws_s3_bucket', CatalogKind.resource), isNull);
    expect(
      googleMigrateManifest.entryFor(
        'google_pubsub_topic',
        CatalogKind.dataSource,
      ),
      isNotNull,
    );
  });

  test('a beta-only type resolves to terradart_google_beta', () {
    final api = findMigrateEntry(
      'google_api_gateway_api',
      CatalogKind.resource,
    );
    expect(api, isNotNull);
    expect(api!.manifest.package, 'terradart_google_beta');
    expect(
      googleMigrateManifest.entryFor(
        'google_api_gateway_api',
        CatalogKind.resource,
      ),
      isNull,
    );
  });
}
