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
///
/// Pick one with a dot shorthand: `.vectorDbConfig(...)`.
sealed class VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig {
  const VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig();

  /// Sets `vector_db_config`.
  const factory VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig.vectorDbConfig(
    VertexAiRagCorpusVectorDbConfig vectorDbConfig,
  ) = VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfigVectorDbConfig;

  /// Sets `vertex_ai_search_config`.
  const factory VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig.vertexAiSearchConfig(
    VertexAiRagCorpusVertexAiSearchConfig vertexAiSearchConfig,
  ) = VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfigVertexAiSearchConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig.vectorDbConfig] choice: sets `vector_db_config`.
final class VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfigVectorDbConfig
    extends VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig {
  const VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfigVectorDbConfig(
    this.vectorDbConfig,
  );

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

/// The [VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig.vertexAiSearchConfig] choice: sets `vertex_ai_search_config`.
final class VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfigVertexAiSearchConfig
    extends VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfig {
  const VertexAiRagCorpusVectorDbConfigOrVertexAiSearchConfigVertexAiSearchConfig(
    this.vertexAiSearchConfig,
  );

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
///
/// Pick one with a dot shorthand: `.ragManagedDb(...)`.
sealed class VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch();

  /// Sets `rag_managed_db`.
  const factory VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch.ragManagedDb(
    VertexAiRagCorpusVectorDbConfigRagManagedDb ragManagedDb,
  ) = VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearchRagManagedDb;

  /// Sets `pinecone`.
  const factory VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch.pinecone(
    VertexAiRagCorpusVectorDbConfigPinecone pinecone,
  ) = VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearchPinecone;

  /// Sets `vertex_vector_search`.
  const factory VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch.vertexVectorSearch(
    VertexAiRagCorpusVectorDbConfigVertexVectorSearch vertexVectorSearch,
  ) = VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearchVertexVectorSearch;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch.ragManagedDb] choice: sets `rag_managed_db`.
final class VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearchRagManagedDb
    extends
        VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearchRagManagedDb(
    this.ragManagedDb,
  );

  final VertexAiRagCorpusVectorDbConfigRagManagedDb ragManagedDb;

  @override
  String get blockKey => 'rag_managed_db';

  @override
  Map<String, Object?> encode() => {'rag_managed_db': ragManagedDb.encode()};
}

/// The [VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch.pinecone] choice: sets `pinecone`.
final class VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearchPinecone
    extends
        VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearchPinecone(
    this.pinecone,
  );

  final VertexAiRagCorpusVectorDbConfigPinecone pinecone;

  @override
  String get blockKey => 'pinecone';

  @override
  Map<String, Object?> encode() => {'pinecone': pinecone.encode()};
}

/// The [VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch.vertexVectorSearch] choice: sets `vertex_vector_search`.
final class VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearchVertexVectorSearch
    extends
        VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearch {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbOrPineconeOrVertexVectorSearchVertexVectorSearch(
    this.vertexVectorSearch,
  );

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
///
/// Pick one with a dot shorthand: `.apiKeySecretVersion(...)`.
sealed class VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString {
  const VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString();

  /// Sets `api_key_secret_version`.
  const factory VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString.apiKeySecretVersion(
    TfArg<String> apiKeySecretVersion,
  ) = VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyStringApiKeySecretVersion;

  /// Sets `api_key_string`.
  const factory VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString.apiKeyString(
    TfArg<String> apiKeyString,
  ) = VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyStringApiKeyString;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString.apiKeySecretVersion] choice: sets `api_key_secret_version`.
final class VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyStringApiKeySecretVersion
    extends
        VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString {
  const VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyStringApiKeySecretVersion(
    this.apiKeySecretVersion,
  );

  final TfArg<String> apiKeySecretVersion;

  @override
  String get blockKey => 'api_key_secret_version';

  @override
  Map<String, Object?> encode() => {
    'api_key_secret_version': apiKeySecretVersion.toTfJson(),
  };
}

/// The [VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString.apiKeyString] choice: sets `api_key_string`.
final class VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyStringApiKeyString
    extends
        VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyString {
  const VertexAiRagCorpusVectorDbConfigApiAuthApiKeyConfigApiKeySecretVersionOrApiKeyStringApiKeyString(
    this.apiKeyString,
  );

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
///
/// Pick one with a dot shorthand: `.knn(...)`.
sealed class VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn();

  /// Sets `knn`.
  const factory VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn.knn(
    VertexAiRagCorpusVectorDbConfigRagManagedDbKnn knn,
  ) = VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnnKnn;

  /// Sets `ann`.
  const factory VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn.ann(
    VertexAiRagCorpusVectorDbConfigRagManagedDbAnn ann,
  ) = VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnnAnn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn.knn] choice: sets `knn`.
final class VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnnKnn
    extends VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnnKnn(this.knn);

  final VertexAiRagCorpusVectorDbConfigRagManagedDbKnn knn;

  @override
  String get blockKey => 'knn';

  @override
  Map<String, Object?> encode() => {'knn': knn.encode()};
}

/// The [VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn.ann] choice: sets `ann`.
final class VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnnAnn
    extends VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnn {
  const VertexAiRagCorpusVectorDbConfigRagManagedDbKnnOrAnnAnn(this.ann);

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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiRagCorpus>`.
  RefTo<GoogleVertexAiRagCorpus> get ref => RefTo.of(this);
}
