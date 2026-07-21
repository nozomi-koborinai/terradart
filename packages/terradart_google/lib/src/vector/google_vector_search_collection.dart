// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vector_search_collection`.
const Set<String> _googleVectorSearchCollectionSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vector_search_collection` (derived from provider schema).
@immutable
final class VectorSearchCollectionEncryptionSpec {
  const VectorSearchCollectionEncryptionSpec({required this.cryptoKeyName});

  final TfArg<String> cryptoKeyName;

  Map<String, Object?> encode() => {
    'crypto_key_name': cryptoKeyName.toTfJson(),
  };
}

/// Typed helper for the `vector_schema` block of
/// `google_vector_search_collection` (derived from provider schema).
@immutable
final class VectorSearchCollectionVectorSchema {
  const VectorSearchCollectionVectorSchema({
    required this.fieldName,
    this.denseVector,
    this.sparseVector,
  });

  final TfArg<String> fieldName;

  final VectorSearchCollectionVectorSchemaDenseVector? denseVector;

  final VectorSearchCollectionVectorSchemaSparseVector? sparseVector;

  Map<String, Object?> encode() => {
    'field_name': fieldName.toTfJson(),
    if (denseVector != null) 'dense_vector': denseVector!.encode(),
    if (sparseVector != null) 'sparse_vector': sparseVector!.encode(),
  };
}

/// Typed helper for the `vector_schema.dense_vector` block of
/// `google_vector_search_collection` (derived from provider schema).
@immutable
final class VectorSearchCollectionVectorSchemaDenseVector {
  const VectorSearchCollectionVectorSchemaDenseVector({
    this.dimensions,
    this.vertexEmbeddingConfig,
  });

  final TfArg<num>? dimensions;

  final VectorSearchCollectionVectorSchemaDenseVectorVertexEmbeddingConfig?
  vertexEmbeddingConfig;

  Map<String, Object?> encode() => {
    if (dimensions != null) 'dimensions': dimensions!.toTfJson(),
    if (vertexEmbeddingConfig != null)
      'vertex_embedding_config': vertexEmbeddingConfig!.encode(),
  };
}

/// Typed helper for the `vector_schema.dense_vector.vertex_embedding_config` block of
/// `google_vector_search_collection` (derived from provider schema).
@immutable
final class VectorSearchCollectionVectorSchemaDenseVectorVertexEmbeddingConfig {
  const VectorSearchCollectionVectorSchemaDenseVectorVertexEmbeddingConfig({
    required this.modelId,
    required this.taskType,
    required this.textTemplate,
  });

  final TfArg<String> modelId;

  final TfArg<String> taskType;

  final TfArg<String> textTemplate;

  Map<String, Object?> encode() => {
    'model_id': modelId.toTfJson(),
    'task_type': taskType.toTfJson(),
    'text_template': textTemplate.toTfJson(),
  };
}

/// Typed helper for the `vector_schema.sparse_vector` block of
/// `google_vector_search_collection` (derived from provider schema).
@immutable
final class VectorSearchCollectionVectorSchemaSparseVector {
  const VectorSearchCollectionVectorSchemaSparseVector();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `google_vector_search_collection`.
///
/// Description
///
/// Vector Search 2.0 **collection** — typed data schema plus searchable
/// vector fields (`vector_schema`).
///
/// An empty collection (schema only, no data objects / indexes) does not
/// provision index-serving capacity. Pair with [GoogleVectorSearchIndex]
/// when you need ANN serving (that path bills hourly capacity units).
///
/// Enable `vectorsearch.googleapis.com` via [GoogleProjectService] before
/// apply.
///
/// Example:
/// ```dart
/// GoogleVectorSearchCollection(
///   localName: 'docs',
///   location: TfArg.literal('us-central1'),
///   collectionId: TfArg.literal('terradart-docs'),
///   displayName: TfArg.literal('Docs'),
///   dataSchema: TfArg.literal(
///     '{"type":"object","properties":{"title":{"type":"string"}}}',
///   ),
///   vectorSchema: [
///     VectorSearchCollectionVectorSchema(
///       fieldName: TfArg.literal('text_embedding'),
///       denseVector: VectorSearchCollectionVectorSchemaDenseVector(
///         dimensions: TfArg.literal(768),
///       ),
///     ),
///   ],
/// );
/// ```
final class GoogleVectorSearchCollection extends Resource {
  static const String tfType = 'google_vector_search_collection';

  GoogleVectorSearchCollection({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> collectionId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? dataSchema,
    List<VectorSearchCollectionVectorSchema>? vectorSchema,
    VectorSearchCollectionEncryptionSpec? encryptionSpec,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'collection_id': collectionId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (dataSchema != null) 'data_schema': dataSchema,
           if (vectorSchema != null)
             'vector_schema': TfArg.literal([
               for (final e in vectorSchema) e.encode(),
             ]),
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVectorSearchCollectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionIdRef =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
