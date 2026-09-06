import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

void main() {
  group('CatalogIndex(terradartCatalog) — terradart_google only', () {
    final index = CatalogIndex(terradartCatalog);

    test('a curated resource type is supported', () {
      final e = index.lookup('google_storage_bucket', CatalogKind.resource);
      expect(e, isNotNull);
      expect(e!.className, 'GoogleStorageBucket');
      expect(e.package, 'terradart_google');
      expect(e.import, 'package:terradart_google/storage.dart');
    });

    test('a fabricated type is not in the catalog', () {
      expect(
        index.lookup('google_notreal_thing', CatalogKind.resource),
        isNull,
      );
    });

    test('kind is part of the key (resource vs data source differ)', () {
      // google_project exists as CatalogKind.dataSource in the catalog
      // (confirmed by grepping _catalog.g.dart for 'CatalogKind.dataSource').
      final asData = index.lookup('google_project', CatalogKind.dataSource);
      expect(asData, isNotNull);
      // Same tfType looked up as resource should return null (it is a data source).
      expect(index.lookup('google_project', CatalogKind.resource), isNull);
    });

    test('does not know the other provider packages', () {
      expect(index.lookup('cloudflare_zone', CatalogKind.resource), isNull);
    });
  });

  group('CatalogIndex.all() — every provider package', () {
    final index = CatalogIndex.all();

    test('matches google, google-beta, appwrite and cloudflare types', () {
      final bucket = index.lookup(
        'google_storage_bucket',
        CatalogKind.resource,
      )!;
      expect(bucket.package, 'terradart_google');

      // Beta-only: google_api_gateway_api is not in the GA catalog.
      final api = index.lookup('google_api_gateway_api', CatalogKind.resource)!;
      expect(api.package, 'terradart_google_beta');
      expect(api.className, 'GoogleApiGatewayApi');
      expect(api.import, 'package:terradart_google_beta/api_gateway.dart');

      final project = index.lookup('appwrite_project', CatalogKind.resource)!;
      expect(project.package, 'terradart_appwrite');
      expect(project.className, 'AppwriteProject');

      final zone = index.lookup('cloudflare_zone', CatalogKind.resource)!;
      expect(zone.package, 'terradart_cloudflare');
      expect(zone.className, 'CloudflareZone');
      expect(zone.import, 'package:terradart_cloudflare/zone.dart');

      final zoneData = index.lookup('cloudflare_zone', CatalogKind.dataSource)!;
      expect(zoneData.className, 'DataCloudflareZone');
      expect(zoneData.import, 'package:terradart_cloudflare/data.dart');
    });

    test('the same type can be a data source in GA and a resource in beta', () {
      final data = index.lookup(
        'google_cloud_identity_policy',
        CatalogKind.dataSource,
      )!;
      expect(data.package, 'terradart_google');
      final resource = index.lookup(
        'google_cloud_identity_policy',
        CatalogKind.resource,
      )!;
      expect(resource.package, 'terradart_google_beta');
    });

    test('a fabricated type is in no catalog', () {
      expect(index.lookup('aws_s3_bucket', CatalogKind.resource), isNull);
    });

    test('lists every entry of every catalog', () {
      final all = allCuratedFactories();
      expect(all.length, greaterThan(terradartCatalog.length));
      expect(all.map((f) => f.package).toSet(), {
        'terradart_google',
        'terradart_google_beta',
        'terradart_appwrite',
        'terradart_cloudflare',
      });
    });
  });

  test('CatalogIndex.of keeps the first factory for a duplicate key', () {
    const first = CuratedFactory(
      tfType: 'x_thing',
      kind: CatalogKind.resource,
      className: 'First',
      barrel: 'a',
      package: 'p',
    );
    const second = CuratedFactory(
      tfType: 'x_thing',
      kind: CatalogKind.resource,
      className: 'Second',
      barrel: 'b',
      package: 'q',
    );
    final index = CatalogIndex.of([first, second]);
    expect(index.lookup('x_thing', CatalogKind.resource), same(first));
  });
}
