import 'package:terradart_google/catalog.dart';
import 'catalog_matcher.dart';
import 'tf_reference.dart';

final class CoverageSummary {
  const CoverageSummary({
    required this.distinctTypes,
    required this.supportedTypes,
    required this.totalOccurrences,
    required this.supportedOccurrences,
  });

  final int distinctTypes;
  final int supportedTypes;
  final int totalOccurrences;
  final int supportedOccurrences;

  int get coverageByTypePct =>
      distinctTypes == 0 ? 0 : (supportedTypes * 100 / distinctTypes).round();
  int get coverageByOccurrencePct => totalOccurrences == 0
      ? 0
      : (supportedOccurrences * 100 / totalOccurrences).round();
}

final class SupportedType {
  const SupportedType({
    required this.type,
    required this.kind,
    required this.count,
    required this.className,
    required this.barrel,
  });
  final String type;
  final CatalogKind kind;
  final int count;
  final String className;
  final String barrel;
}

final class NotInCatalogType {
  const NotInCatalogType({
    required this.type,
    required this.kind,
    required this.count,
    required this.product,
  });
  final String type;
  final CatalogKind kind;
  final int count;
  final String product;
}

final class ModuleBreakdown {
  const ModuleBreakdown({required this.supported, required this.notInCatalog});
  final int supported;
  final int notInCatalog;
}

final class CoverageReport {
  const CoverageReport({
    required this.summary,
    required this.supported,
    required this.notInCatalog,
    required this.perModule,
    required this.unparseable,
  });
  final CoverageSummary summary;
  final List<SupportedType> supported;
  final List<NotInCatalogType> notInCatalog;
  final Map<String, ModuleBreakdown> perModule;
  final List<String> unparseable;
}

/// Coarse product from a `google_<product>_<rest>` type string.
String productOf(String tfType) {
  final parts = tfType.split('_');
  return parts.length >= 2 ? parts[1] : tfType;
}

CoverageReport buildCoverageReport(ParseOutcome parsed, CatalogIndex index) {
  final counts = <(String, CatalogKind), int>{};
  final perModuleSupported = <String, int>{};
  final perModuleNot = <String, int>{};

  for (final r in parsed.references) {
    final key = (r.type, r.kind);
    counts[key] = (counts[key] ?? 0) + 1;
    final supported = index.lookup(r.type, r.kind) != null;
    if (supported) {
      perModuleSupported[r.modulePath] =
          (perModuleSupported[r.modulePath] ?? 0) + 1;
    } else {
      perModuleNot[r.modulePath] = (perModuleNot[r.modulePath] ?? 0) + 1;
    }
  }

  final supported = <SupportedType>[];
  final notInCatalog = <NotInCatalogType>[];
  var supportedOccurrences = 0;
  for (final entry in counts.entries) {
    final (type, kind) = entry.key;
    final count = entry.value;
    final hit = index.lookup(type, kind);
    if (hit != null) {
      supportedOccurrences += count;
      supported.add(SupportedType(
        type: type,
        kind: kind,
        count: count,
        className: hit.className,
        barrel: hit.barrel,
      ));
    } else {
      notInCatalog.add(NotInCatalogType(
        type: type,
        kind: kind,
        count: count,
        product: productOf(type),
      ));
    }
  }

  supported.sort((a, b) => b.count.compareTo(a.count));
  notInCatalog.sort((a, b) => b.count.compareTo(a.count));

  final modules = {...perModuleSupported.keys, ...perModuleNot.keys};
  final perModule = <String, ModuleBreakdown>{
    for (final m in modules)
      m: ModuleBreakdown(
        supported: perModuleSupported[m] ?? 0,
        notInCatalog: perModuleNot[m] ?? 0,
      ),
  };

  return CoverageReport(
    summary: CoverageSummary(
      distinctTypes: counts.length,
      supportedTypes: supported.length,
      totalOccurrences: parsed.references.length,
      supportedOccurrences: supportedOccurrences,
    ),
    supported: supported,
    notInCatalog: notInCatalog,
    perModule: perModule,
    unparseable: parsed.unparseable,
  );
}
