import 'package:terradart_appwrite/catalog.dart' as appwrite;
import 'package:terradart_cloudflare/catalog.dart' as cloudflare;
import 'package:terradart_google/catalog.dart';
import 'package:terradart_google_beta/catalog.dart' as beta;

/// One curated factory, from whichever TerraDart provider package ships it.
///
/// Each provider package declares its own `CatalogEntry` / `CatalogKind`
/// (identical in shape); this is the package-neutral view the coverage report
/// is built on. [kind] is `terradart_google`'s [CatalogKind] for every
/// package.
final class CuratedFactory {
  const CuratedFactory({
    required this.tfType,
    required this.kind,
    required this.className,
    required this.barrel,
    required this.package,
  });

  /// Terraform type string, e.g. `cloudflare_zone`.
  final String tfType;

  /// Managed resource vs read-only data source.
  final CatalogKind kind;

  /// Dart factory class, e.g. `CloudflareZone`.
  final String className;

  /// Per-service barrel inside [package], e.g. `zone`.
  final String barrel;

  /// The Dart package that ships the factory, e.g. `terradart_cloudflare`.
  final String package;

  /// The import that brings [className] into scope.
  String get import => 'package:$package/$barrel.dart';
}

/// Every curated factory of every provider package, in lookup precedence:
/// `terradart_google`, then `terradart_google_beta`, `terradart_appwrite` and
/// `terradart_cloudflare`.
List<CuratedFactory> allCuratedFactories() => [
  for (final e in terradartCatalog) _google(e),
  for (final e in beta.terradartCatalog)
    CuratedFactory(
      tfType: e.tfType,
      kind: _kindNamed(e.kind.name),
      className: e.className,
      barrel: e.barrel,
      package: 'terradart_google_beta',
    ),
  for (final e in appwrite.terradartCatalog)
    CuratedFactory(
      tfType: e.tfType,
      kind: _kindNamed(e.kind.name),
      className: e.className,
      barrel: e.barrel,
      package: 'terradart_appwrite',
    ),
  for (final e in cloudflare.terradartCatalog)
    CuratedFactory(
      tfType: e.tfType,
      kind: _kindNamed(e.kind.name),
      className: e.className,
      barrel: e.barrel,
      package: 'terradart_cloudflare',
    ),
];

CuratedFactory _google(CatalogEntry e) => CuratedFactory(
  tfType: e.tfType,
  kind: e.kind,
  className: e.className,
  barrel: e.barrel,
  package: 'terradart_google',
);

CatalogKind _kindNamed(String name) => CatalogKind.values.byName(name);

/// Indexed view of curated factories for O(1) `(type, kind)` lookup.
final class CatalogIndex {
  /// Indexes `terradart_google`'s [terradartCatalog] only. [CatalogIndex.all]
  /// matches every provider package.
  CatalogIndex(List<CatalogEntry> entries)
    : this.of([for (final e in entries) _google(e)]);

  /// Indexes [factories]; when two share a `(type, kind)` the first wins.
  CatalogIndex.of(Iterable<CuratedFactory> factories)
    : _byTypeKind = _index(factories);

  /// Every curated factory of every provider package
  /// ([allCuratedFactories]).
  factory CatalogIndex.all() => CatalogIndex.of(allCuratedFactories());

  final Map<(String, CatalogKind), CuratedFactory> _byTypeKind;

  static Map<(String, CatalogKind), CuratedFactory> _index(
    Iterable<CuratedFactory> factories,
  ) {
    final index = <(String, CatalogKind), CuratedFactory>{};
    for (final f in factories) {
      index.putIfAbsent((f.tfType, f.kind), () => f);
    }
    return index;
  }

  /// The matching curated factory, or `null` if the type/kind is not curated.
  CuratedFactory? lookup(String tfType, CatalogKind kind) =>
      _byTypeKind[(tfType, kind)];
}
