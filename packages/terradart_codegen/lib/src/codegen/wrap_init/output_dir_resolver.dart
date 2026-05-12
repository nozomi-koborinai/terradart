import '../wrapper_overrides/wrapper_override.dart';

/// Resolves the `outputDir` axis for a `wrap-init` skeleton.
///
/// 3-tier hybrid:
///   * Tier 0: kind=dataSource → forced `'data'` (matches E104 loader guard)
///   * Tier 1: `mmProduct` known → `aliases[mmProduct] ?? mmProduct`
///   * Tier 2: `mmProduct == null` → terraform-type prefix match against aliases
///   * Tier 3: terraform-type segment-1 after `google_`, with alias override
///
/// The alias map is Google-specific. Phase 4.4 will extract this to a
/// `ProviderRules` adapter; Phase 4.2 keeps it inline.
class OutputDirResolver {
  const OutputDirResolver({this.aliases = _googleOutputDirAliases});

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

/// Google provider alias map. Bootstrap entries derived from the 13 yaml
/// files shipped in Phase 4.1; extend during Phase 4.5 wave rollout when
/// new MM products land.
const Map<String, String> _googleOutputDirAliases = {
  // Tier 1 — MM `product` field normalization (snake_case alignment).
  'cloudtasks': 'cloud_tasks',
  'secretmanager': 'secret_manager',
  'cloudscheduler': 'cloud_scheduler',
  'resourcemanager': 'project',

  // Tier 2/3 — terraform-type prefix / segment overrides.
  'cloud_tasks': 'cloud_tasks',
  'secret_manager': 'secret_manager',
  'cloud_scheduler': 'cloud_scheduler',
  'service_account': 'iam',
  'project_service': 'project',
};
