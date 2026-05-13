import '../wrapper_overrides/wrapper_override.dart';

/// Resolves the `outputDir` axis for a `wrap-init` skeleton.
///
/// 3-tier hybrid:
///   * Tier 0: kind=dataSource → forced `'data'` (matches E104 loader guard)
///   * Tier 1: `mmProduct` known → `aliases[mmProduct] ?? mmProduct`
///   * Tier 2: `mmProduct == null` → terraform-type prefix match against aliases
///   * Tier 3: terraform-type segment-1 after `google_`, with alias override
///
/// The alias map is provider-specific. As of Phase 4.4 the resolver itself is
/// universal; the map ships from `ProviderRules.outputDirAliases`.
class OutputDirResolver {
  const OutputDirResolver({required this.aliases});

  /// Both Tier-1 MM-product aliases and Tier-2/3 prefix/segment overrides.
  final Map<String, String> aliases;

  String resolve({
    required String terraformType,
    String? mmProduct,
    required WrapperOverrideKind kind,
  }) {
    // Tier 0
    if (kind == WrapperOverrideKind.dataSource) {
      return 'data';
    }

    // Tier 1
    if (mmProduct != null) {
      return aliases[mmProduct] ?? mmProduct;
    }

    // Strip `google_` once.
    final stripped = terraformType.startsWith('google_')
        ? terraformType.substring('google_'.length)
        : terraformType;

    // Tier 2: longest-prefix match against alias keys.
    final segments = stripped.split('_');
    for (var len = segments.length; len > 1; len--) {
      final candidate = segments.take(len).join('_');
      if (aliases.containsKey(candidate)) {
        return aliases[candidate]!;
      }
    }

    // Tier 3: segment-1, with alias override.
    final firstSegment = segments.first;
    return aliases[firstSegment] ?? firstSegment;
  }
}
