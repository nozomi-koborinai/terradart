import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

void main() {
  final index = CatalogIndex.all();

  test('builds summary, supported, and ranked not-in-catalog', () {
    final refs = [
      const TfReference(
        type: 'google_storage_bucket',
        kind: CatalogKind.resource,
        modulePath: 'root',
      ),
      const TfReference(
        type: 'google_notreal_thing',
        kind: CatalogKind.resource,
        modulePath: 'root',
      ),
      const TfReference(
        type: 'google_notreal_thing',
        kind: CatalogKind.resource,
        modulePath: 'module.x',
      ),
      const TfReference(
        type: 'cloudflare_zone',
        kind: CatalogKind.resource,
        modulePath: 'module.x',
      ),
    ];
    final report = buildCoverageReport(
      ParseOutcome(references: refs, unparseable: const []),
      index,
    );

    expect(report.summary.distinctTypes, 3);
    expect(report.summary.supportedTypes, 2);
    expect(
      {for (final s in report.supported) s.type: s.package},
      {
        'google_storage_bucket': 'terradart_google',
        'cloudflare_zone': 'terradart_cloudflare',
      },
    );
    expect(report.notInCatalog.first.type, 'google_notreal_thing');
    expect(report.notInCatalog.first.count, 2);
    expect(report.notInCatalog.first.product, 'notreal');
    expect(report.perModule.keys, containsAll(['root', 'module.x']));
  });

  test('carries unparseable and unexpanded through unchanged', () {
    final report = buildCoverageReport(
      const ParseOutcome(
        references: [],
        unparseable: ['root: broken'],
        unexpanded: ['main.tf: google_x.y: count = var.n — counted once'],
      ),
      index,
    );
    expect(report.unparseable, ['root: broken']);
    expect(report.unexpanded, [
      'main.tf: google_x.y: count = var.n — counted once',
    ]);
    expect(report.summary.distinctTypes, 0);
    expect(report.summary.coverageByTypePct, 0);
  });
}
