// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_data_store`.
const Set<String> _googleDiscoveryEngineDataStoreSensitive = <String>{};

/// Discovery Engine Data Store Content enum for `content_config`.
enum DiscoveryEngineDataStoreContentConfig implements TerraformEnum {
  noContent('NO_CONTENT'),
  contentRequired('CONTENT_REQUIRED'),
  publicWebsite('PUBLIC_WEBSITE');

  const DiscoveryEngineDataStoreContentConfig(this.terraformValue);
  @override
  final String terraformValue;
}

/// Discovery Engine Data Store Industry enum for `industry_vertical`.
enum DiscoveryEngineDataStoreIndustryVertical implements TerraformEnum {
  generic('GENERIC'),
  media('MEDIA'),
  healthcareFhir('HEALTHCARE_FHIR');

  const DiscoveryEngineDataStoreIndustryVertical(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_discovery_engine_data_store`.
///
/// Data store is a collection of websites and documents used to find answers
/// for end-user's questions in Discovery Engine (a.k.a. Vertex AI Search and
/// Conversation).
final class GoogleDiscoveryEngineDataStore extends Resource {
  static const String tfType = 'google_discovery_engine_data_store';

  GoogleDiscoveryEngineDataStore({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> dataStoreId,
    required TfArg<String> displayName,
    required TfArg<DiscoveryEngineDataStoreIndustryVertical> industryVertical,
    TfArg<DiscoveryEngineDataStoreContentConfig>? contentConfig,
    TfArg<List<String>>? solutionTypes,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'data_store_id': dataStoreId,
           'display_name': displayName,
           'industry_vertical': industryVertical,
           if (contentConfig != null) 'content_config': contentConfig,
           if (solutionTypes != null) 'solution_types': solutionTypes,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineDataStoreSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `default_schema_id` attribute.
  TfRef<String> get defaultSchemaId =>
      TfRef.attribute<String>(this, 'default_schema_id');

  /// Reference to `data_store_id` attribute.
  TfRef<String> get dataStoreIdRef =>
      TfRef.attribute<String>(this, 'data_store_id');
}
