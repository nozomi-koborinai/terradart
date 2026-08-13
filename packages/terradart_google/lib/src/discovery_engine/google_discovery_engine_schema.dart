// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> dataStoreId,
    required TfArg<String> schemaId,
    TfArg<String>? jsonSchema,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'data_store_id': dataStoreId,
           'schema_id': schemaId,
           if (jsonSchema != null) 'json_schema': jsonSchema,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineSchemaSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `schema_id` attribute.
  TfRef<String> get schemaIdRef => TfRef.attribute<String>(this, 'schema_id');
}
