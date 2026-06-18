// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_search_engine`.
const Set<String> _googleDiscoveryEngineSearchEngineSensitive = <String>{};

/// Discovery Engine Search Engine Industry enum for `industry_vertical`.
enum DiscoveryEngineSearchEngineIndustryVertical implements TerraformEnum {
  generic('GENERIC'),
  media('MEDIA'),
  healthcareFhir('HEALTHCARE_FHIR');

  const DiscoveryEngineSearchEngineIndustryVertical(this.terraformValue);
  @override
  final String terraformValue;
}

/// `search_engine_config.search_tier`.
enum DiscoveryEngineSearchEngineSearchTier implements TerraformEnum {
  searchTierStandard('SEARCH_TIER_STANDARD'),
  searchTierEnterprise('SEARCH_TIER_ENTERPRISE');

  const DiscoveryEngineSearchEngineSearchTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// `search_engine_config` block (required, max=1).
@immutable
class DiscoveryEngineSearchEngineSearchEngineConfig {
  const DiscoveryEngineSearchEngineSearchEngineConfig({this.searchTier});

  final TfArg<DiscoveryEngineSearchEngineSearchTier>? searchTier;

  Map<String, Object?> toArgMap() => {
    if (searchTier != null) 'search_tier': searchTier,
  };
}

/// Factory wrapper for `google_discovery_engine_search_engine`.
///
/// Vertex AI Search and Conversation can be used to create a search engine or a
/// chat application by connecting it with a datastore
final class GoogleDiscoveryEngineSearchEngine extends Resource {
  static const String tfType = 'google_discovery_engine_search_engine';

  GoogleDiscoveryEngineSearchEngine({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> collectionId,
    required TfArg<String> engineId,
    required TfArg<String> displayName,
    required TfArg<List<String>> dataStoreIds,
    required DiscoveryEngineSearchEngineSearchEngineConfig searchEngineConfig,
    TfArg<DiscoveryEngineSearchEngineIndustryVertical>? industryVertical,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'collection_id': collectionId,
           'engine_id': engineId,
           'display_name': displayName,
           'data_store_ids': dataStoreIds,
           'search_engine_config': TfArg.literal([
             searchEngineConfig.toArgMap(),
           ]),
           if (industryVertical != null) 'industry_vertical': industryVertical,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineSearchEngineSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineIdRef => TfRef.attribute<String>(this, 'engine_id');
}
