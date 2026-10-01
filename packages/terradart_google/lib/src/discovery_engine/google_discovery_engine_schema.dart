// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../discovery_engine/google_discovery_engine_data_store.dart'
    show GoogleDiscoveryEngineDataStore;

/// Sensitive field paths for `google_discovery_engine_schema`.
const Set<String> _googleDiscoveryEngineSchemaSensitive = <String>{};

/// Factory wrapper for `google_discovery_engine_schema`.
///
/// Schema defines the structure and layout of a type of document data.
///
/// Vertex AI Search **schema** — JSON Schema for documents in a data
/// store. Pair with `skip_default_schema_creation: true` on
/// [GoogleDiscoveryEngineDataStore] when this is the store's only schema.
///
/// **Cost:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Search API Request
/// Count - Standard `BADA-EE26-7BDA` **$1.50/count after 10k** (Enterprise
/// `93D6-7280-CF05` **$4/count after 10k**); Data Index `BC7D-6A97-90F8`
/// **$5/GiBy·mo after 10 GiB**. billing-behavior: schemas are design-time
/// config; query SKUs fire only on Search API requests and Data Index
/// bills indexed GiB. This factory never queries or ingests documents.
final class GoogleDiscoveryEngineSchema extends Resource {
  static const String tfType = 'google_discovery_engine_schema';

  GoogleDiscoveryEngineSchema({
    required super.localName,
    required TfArg<String> location,
    required RefTo<GoogleDiscoveryEngineDataStore> dataStoreId,
    required TfArg<String> schemaId,
    TfArg<String>? jsonSchema,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'data_store_id': dataStoreId.encodeAs('data_store_id'),
           'schema_id': schemaId,
           'json_schema': ?jsonSchema,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineSchemaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineSchema>`.
  RefTo<GoogleDiscoveryEngineSchema> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_store_id` attribute.
  TfRef<String> get dataStoreId =>
      TfRef.attribute<String>(this, 'data_store_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `json_schema` attribute.
  TfRef<String> get jsonSchema => TfRef.attribute<String>(this, 'json_schema');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `schema_id` attribute.
  TfRef<String> get schemaId => TfRef.attribute<String>(this, 'schema_id');
}
