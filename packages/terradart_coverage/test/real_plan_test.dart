import 'dart:convert';
import 'dart:io';

import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

/// End-to-end coverage of a *real* `terraform show -json` document.
///
/// `real_plan_show.json` is the verbatim output of `terraform show -json` on a
/// planned (not applied) two-module Terraform config — 7 resources in the root
/// module and 3 in `module.network`. It exercises the full document shape that
/// Terraform actually emits (nested `child_modules`, `mode` fields, and the
/// many top-level keys we intentionally ignore), unlike the hand-written maps
/// in the other tests.
///
/// At capture time (after curating `google_dialogflow_intent`)
/// the not-in-catalog type is `google_dialogflow_conversation_profile`.
/// The assertions below deliberately avoid pinning that exact percentage
/// so the test survives catalog growth; they pin the catalog-independent
/// parse and the structural invariants instead.
void main() {
  final json =
      jsonDecode(File('test/fixtures/real_plan_show.json').readAsStringSync())
          as Map<String, dynamic>;

  group('real terraform show -json document', () {
    test('parses every resource occurrence across both modules', () {
      final parsed = parseShowJson(json);

      // Catalog-independent: this is purely about reading Terraform's shape.
      expect(parsed.references, hasLength(10));
      expect(parsed.unparseable, isEmpty);
      expect(parsed.references.map((r) => r.modulePath).toSet(), {
        'root',
        'module.network',
      });
      // This plan has no data sources; every entry is a managed resource.
      expect(
        parsed.references.every((r) => r.kind == CatalogKind.resource),
        isTrue,
      );
    });

    test('builds a coverage report exercising both supported and uncovered '
        'paths', () {
      final report = buildCoverageReport(
        parseShowJson(json),
        CatalogIndex(terradartCatalog),
      );

      expect(report.summary.distinctTypes, 10);
      expect(report.summary.totalOccurrences, 10);

      // Invariant: every distinct type is classified exactly once.
      expect(
        report.supported.length + report.notInCatalog.length,
        report.summary.distinctTypes,
      );
      expect(report.summary.supportedTypes, report.supported.length);

      // The real plan mixes curated and uncurated types, so both lists fire.
      expect(report.supported, isNotEmpty);
      expect(
        report.notInCatalog,
        isNotEmpty,
        reason:
            'fixture is expected to contain at least one uncurated type; '
            'if terradart_google has since curated them, regenerate the '
            'fixture',
      );

      // google_storage_bucket is a foundational resource — always curated.
      expect(
        report.supported.map((s) => s.type),
        contains('google_storage_bucket'),
      );

      // Per-module breakdown is preserved end-to-end.
      expect(report.perModule.keys, containsAll(['root', 'module.network']));
    });

    test('renders a human-readable summary for the real plan', () {
      final report = buildCoverageReport(
        parseShowJson(json),
        CatalogIndex(terradartCatalog),
      );
      final text = renderText(report);

      expect(text, contains('TerraDart coverage'));
      expect(text, matches(RegExp(r'\d+% of types')));
      expect(text, contains('By directory:'));
      expect(text, contains('module.network'));
    });
  });
}
