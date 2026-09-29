// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_rag_corpus`.
const Set<String> _googleVertexAiRagCorpusSensitive = <String>{
  'vector_db_config.api_auth.api_key_config.api_key_string',
};

/// At most one of `vector_db_config`, `vertex_ai_search_config` on `google_vertex_ai_rag_corpus`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig {
  const VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `vector_db_config` (one of the [VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig] choices).
final class VertexAiRagCorpusVectorDbConfigOption
    extends VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig {
  const VertexAiRagCorpusVectorDbConfigOption({required this.vectorDbConfig});

  final VertexAiRagCorpusVectorDbConfig vectorDbConfig;

  @override
  String get blockKey => 'vector_db_config';

  @override
  Map<String, Object?> encode() => {
    'vector_db_config': vectorDbConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'vector_db_config': TfArg.literal(vectorDbConfig.encode()),
  };
}

/// Sets `vertex_ai_search_config` (one of the [VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig] choices).
final class VertexAiRagCorpusVertexAiSearchConfigOption
    extends VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig {
  const VertexAiRagCorpusVertexAiSearchConfigOption({
    required this.vertexAiSearchConfig,
  });

  final VertexAiRagCorpusVertexAiSearchConfig vertexAiSearchConfig;

  @override
  String get blockKey => 'vertex_ai_search_config';

  @override
  Map<String, Object?> encode() => {
    'vertex_ai_search_config': vertexAiSearchConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'vertex_ai_search_config': TfArg.literal(vertexAiSearchConfig.encode()),
  };
}

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusEncryptionSpec {
  const VertexAiRagCorpusEncryptionSpec({required this.kmsKeyName});

  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
}

/// Typed helper for the `vector_db_config` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVectorDbConfig {
  const VertexAiRagCorpusVectorDbConfig({
    this.apiAuth,
    this.ragManagedDbOrPineconeOrVertexVectorSearch,
    this.ragEmbeddingModelConfig,
  });

  final VertexAiRagCorpusVectorDbConfigApiAuth? apiAuth;

  final VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch?
  ragManagedDbOrPineconeOrVertexVectorSearch;

  final VertexAiRagCorpusVectorDbConfigRagEmbeddingModelConfig?
  ragEmbeddingModelConfig;

  Map<String, Object?> encode() => {
    if (apiAuth != null) 'api_auth': apiAuth!.encode(),
    ...?ragManagedDbOrPineconeOrVertexVectorSearch?.encode(),
    if (ragEmbeddingModelConfig != null)
      'rag_embedding_model_config': ragEmbeddingModelConfig!.encode(),
  };
}

/// At most one of `rag_managed_db`, `pinecone`, `vertex_vector_search` on the `vector_db_config` block of `google_vertex_ai_rag_corpus`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `rag_managed_db` (one of the [VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch] choices).
final class VertexAiRagCorpusVectorDbConfigRagManagedDbOption
    extends
        VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbOption({
    required this.ragManagedDb,
  });

  final VertexAiRagCorpusVectorDbConfigRagManagedDb ragManagedDb;

  @override
  String get blockKey => 'rag_managed_db';

  @override
  Map<String, Object?> encode() => {'rag_managed_db': ragManagedDb.encode()};
}

/// Sets `pinecone` (one of the [VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch] choices).
final class VertexAiRagCorpusVectorDbConfigPineconeOption
    extends
        VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch {
  const VertexAiRagCorpusVectorDbConfigPineconeOption({required this.pinecone});

  final VertexAiRagCorpusVectorDbConfigPinecone pinecone;

  @override
  String get blockKey => 'pinecone';

  @override
  Map<String, Object?> encode() => {'pinecone': pinecone.encode()};
}

/// Sets `vertex_vector_search` (one of the [VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch] choices).
final class VertexAiRagCorpusVectorDbConfigVertexVectorSearchOption
    extends
        VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch {
  const VertexAiRagCorpusVectorDbConfigVertexVectorSearchOption({
    required this.vertexVectorSearch,
  });

  final VertexAiRagCorpusVectorDbConfigVertexVectorSearch vertexVectorSearch;

  @override
  String get blockKey => 'vertex_vector_search';

  @override
  Map<String, Object?> encode() => {
    'vertex_vector_search': vertexVectorSearch.encode(),
  };
}

/// Typed helper for the `vector_db_config.api_auth` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVectorDbConfigApiAuth {
  const VertexAiRagCorpusVectorDbConfigApiAuth({this.apiKeyConfig});

  final VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfig? apiKeyConfig;

  Map<String, Object?> encode() => {
    if (apiKeyConfig != null) 'api_key_config': apiKeyConfig!.encode(),
  };
}

/// Typed helper for the `vector_db_config.api_auth.api_key_config` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfig {
  const VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfig({
    required this.apiKeySecretVersionOrApiKeyString,
  });

  final VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString
  apiKeySecretVersionOrApiKeyString;

  Map<String, Object?> encode() => {
    ...apiKeySecretVersionOrApiKeyString.encode(),
  };
}

/// Exactly one of `api_key_secret_version`, `api_key_string` on the `vector_db_config.api_auth.api_key_config` block of `google_vertex_ai_rag_corpus`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString {
  const VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `api_key_secret_version` (one of the [VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString] choices).
final class VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOption
    extends
        VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString {
  const VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOption({
    required this.apiKeySecretVersion,
  });

  final TfArg<String> apiKeySecretVersion;

  @override
  String get blockKey => 'api_key_secret_version';

  @override
  Map<String, Object?> encode() => {
    'api_key_secret_version': apiKeySecretVersion.toTfJson(),
  };
}

/// Sets `api_key_string` (one of the [VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString] choices).
final class VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeyStringOption
    extends
        VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString {
  const VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeyStringOption({
    required this.apiKeyString,
  });

  final TfArg<String> apiKeyString;

  @override
  String get blockKey => 'api_key_string';

  @override
  Map<String, Object?> encode() => {'api_key_string': apiKeyString.toTfJson()};
}

/// Typed helper for the `vector_db_config.pinecone` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVectorDbConfigPinecone {
  const VertexAiRagCorpusVectorDbConfigPinecone({required this.indexName});

  final TfArg<String> indexName;

  Map<String, Object?> encode() => {'index_name': indexName.toTfJson()};
}

/// Typed helper for the `vector_db_config.rag_embedding_model_config` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVectorDbConfigRagEmbeddingModelConfig {
  const VertexAiRagCorpusVectorDbConfigRagEmbeddingModelConfig({
    this.vertexPredictionEndpoint,
  });

  final VertexAiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpoint?
  vertexPredictionEndpoint;

  Map<String, Object?> encode() => {
    if (vertexPredictionEndpoint != null)
      'vertex_prediction_endpoint': vertexPredictionEndpoint!.encode(),
  };
}

/// Typed helper for the `vector_db_config.rag_embedding_model_config.vertex_prediction_endpoint` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpoint {
  const VertexAiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpoint({
    required this.endpoint,
  });

  final TfArg<String> endpoint;

  Map<String, Object?> encode() => {'endpoint': endpoint.toTfJson()};
}

/// Typed helper for the `vector_db_config.rag_managed_db` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVectorDbConfigRagManagedDb {
  const VertexAiRagCorpusVectorDbConfigRagManagedDb({required this.knnOrAnn});

  final VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn knnOrAnn;

  Map<String, Object?> encode() => {...knnOrAnn.encode()};
}

/// Exactly one of `knn`, `ann` on the `vector_db_config.rag_managed_db` block of `google_vertex_ai_rag_corpus`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `knn` (one of the [VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn] choices).
final class VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOption
    extends VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOption({
    required this.knn,
  });

  final VertexAiRagCorpusVectorDbConfigRagManagedDbKnn knn;

  @override
  String get blockKey => 'knn';

  @override
  Map<String, Object?> encode() => {'knn': knn.encode()};
}

/// Sets `ann` (one of the [VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn] choices).
final class VertexAiRagCorpusVectorDbConfigRagManagedDbAnnOption
    extends VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbAnnOption({
    required this.ann,
  });

  final VertexAiRagCorpusVectorDbConfigRagManagedDbAnn ann;

  @override
  String get blockKey => 'ann';

  @override
  Map<String, Object?> encode() => {'ann': ann.encode()};
}

/// Typed helper for the `vector_db_config.rag_managed_db.ann` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVectorDbConfigRagManagedDbAnn {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbAnn({
    this.leafCount,
    this.treeDepth,
  });

  final TfArg<num>? leafCount;

  final TfArg<num>? treeDepth;

  Map<String, Object?> encode() => {
    if (leafCount != null) 'leaf_count': leafCount!.toTfJson(),
    if (treeDepth != null) 'tree_depth': treeDepth!.toTfJson(),
  };
}

/// Typed helper for the `vector_db_config.rag_managed_db.knn` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVectorDbConfigRagManagedDbKnn {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbKnn();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `vector_db_config.vertex_vector_search` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVectorDbConfigVertexVectorSearch {
  const VertexAiRagCorpusVectorDbConfigVertexVectorSearch({
    required this.index,
    required this.indexEndpoint,
  });

  final TfArg<String> index;

  final TfArg<String> indexEndpoint;

  Map<String, Object?> encode() => {
    'index': index.toTfJson(),
    'index_endpoint': indexEndpoint.toTfJson(),
  };
}

/// Typed helper for the `vertex_ai_search_config` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVertexAiSearchConfig {
  const VertexAiRagCorpusVertexAiSearchConfig({required this.servingConfig});

  final TfArg<String> servingConfig;

  Map<String, Object?> encode() => {'serving_config': servingConfig.toTfJson()};
}

/// Factory wrapper for `google_vertex_ai_rag_corpus`.
///
/// A RAG corpus is a container for user data uploaded to Vertex AI RAG Engine
/// for chunking, embedding, and indexing.
final class GoogleVertexAiRagCorpus extends Resource {
  static const String tfType = 'google_vertex_ai_rag_corpus';

  GoogleVertexAiRagCorpus({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> displayName,
    TfArg<String>? project,
    required TfArg<String> region,
    VertexAiRagCorpusEncryptionSpec? encryptionSpec,
    VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig?
    vectorDbConfigOrVertexAiSearchConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'display_name': displayName,
           if (project != null) 'project': project,
           'region': region,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           ...?vectorDbConfigOrVertexAiSearchConfig?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiRagCorpusSensitive;
}
