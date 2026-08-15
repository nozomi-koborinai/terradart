// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_data_store`.
const Set<String> _googleDiscoveryEngineDataStoreSensitive = <String>{};

/// Factory wrapper for `google_discovery_engine_data_store`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDiscoveryEngineDataStore extends Data {
  static const String tfType = 'google_discovery_engine_data_store';

  DataGoogleDiscoveryEngineDataStore({
    required super.localName,
    TfArg<String>? dataStoreId,
    TfArg<String>? displayName,
    TfArg<String>? location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dataStoreId != null) 'data_store_id': dataStoreId,
           if (displayName != null) 'display_name': displayName,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineDataStoreSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `acl_enabled` attribute.
  TfRef<bool> get aclEnabled => TfRef.attribute<bool>(this, 'acl_enabled');

  /// Reference to `advanced_site_search_config` attribute.
  TfRef<List<Map<String, Object?>>> get advancedSiteSearchConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'advanced_site_search_config',
      );

  /// Reference to `content_config` attribute.
  TfRef<String> get contentConfig =>
      TfRef.attribute<String>(this, 'content_config');

  /// Reference to `create_advanced_site_search` attribute.
  TfRef<bool> get createAdvancedSiteSearch =>
      TfRef.attribute<bool>(this, 'create_advanced_site_search');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `default_schema_id` attribute.
  TfRef<String> get defaultSchemaId =>
      TfRef.attribute<String>(this, 'default_schema_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `document_processing_config` attribute.
  TfRef<List<Map<String, Object?>>> get documentProcessingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'document_processing_config',
      );

  /// Reference to `industry_vertical` attribute.
  TfRef<String> get industryVertical =>
      TfRef.attribute<String>(this, 'industry_vertical');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `skip_default_schema_creation` attribute.
  TfRef<bool> get skipDefaultSchemaCreation =>
      TfRef.attribute<bool>(this, 'skip_default_schema_creation');

  /// Reference to `solution_types` attribute.
  TfRef<List<String>> get solutionTypes =>
      TfRef.attribute<List<String>>(this, 'solution_types');
}
