// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_vertex_ai_rag_corpus`.
const Set<String> _googleVertexAiRagCorpusSensitive = <String>{
  'vector_db_config.api_auth.api_key_config.api_key_string',
};

/// At most one of `vector_db_config`, `vertex_ai_search_config` on `google_vertex_ai_rag_corpus`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.vectorDbConfig(...)`.
sealed class VertexAiRagCorpusBackend {
  const VertexAiRagCorpusBackend();

  /// Sets `vector_db_config`.
  const factory VertexAiRagCorpusBackend.vectorDbConfig(
    VertexAiRagCorpusVectorDbConfig vectorDbConfig,
  ) = VertexAiRagCorpusBackendVectorDbConfig;

  /// Sets `vertex_ai_search_config`.
  const factory VertexAiRagCorpusBackend.vertexAiSearchConfig(
    VertexAiRagCorpusVertexAiSearchConfig vertexAiSearchConfig,
  ) = VertexAiRagCorpusBackendVertexAiSearchConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VertexAiRagCorpusBackend.vectorDbConfig] choice: sets `vector_db_config`.
final class VertexAiRagCorpusBackendVectorDbConfig
    extends VertexAiRagCorpusBackend {
  const VertexAiRagCorpusBackendVectorDbConfig(this.vectorDbConfig);

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

/// The [VertexAiRagCorpusBackend.vertexAiSearchConfig] choice: sets `vertex_ai_search_config`.
final class VertexAiRagCorpusBackendVertexAiSearchConfig
    extends VertexAiRagCorpusBackend {
  const VertexAiRagCorpusBackendVertexAiSearchConfig(this.vertexAiSearchConfig);

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

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `vector_db_config` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVectorDbConfig {
  const VertexAiRagCorpusVectorDbConfig({
    this.apiAuth,
    this.backend,
    this.ragEmbeddingModelConfig,
  });

  final VertexAiRagCorpusApiAuth? apiAuth;

  final VertexAiRagCorpusVectorDbConfigBackend? backend;

  final VertexAiRagCorpusRagEmbeddingModelConfig? ragEmbeddingModelConfig;

  Map<String, Object?> encode() => {
    'api_auth': ?apiAuth?.encode(),
    ...?backend?.encode(),
    'rag_embedding_model_config': ?ragEmbeddingModelConfig?.encode(),
  };
}

/// At most one of `rag_managed_db`, `pinecone`, `vertex_vector_search` on the `vector_db_config` block of `google_vertex_ai_rag_corpus`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.ragManagedDb(...)`.
sealed class VertexAiRagCorpusVectorDbConfigBackend {
  const VertexAiRagCorpusVectorDbConfigBackend();

  /// Sets `rag_managed_db`.
  const factory VertexAiRagCorpusVectorDbConfigBackend.ragManagedDb(
    VertexAiRagCorpusRagManagedDb ragManagedDb,
  ) = VertexAiRagCorpusVectorDbConfigBackendRagManagedDb;

  /// Sets `pinecone`.
  const factory VertexAiRagCorpusVectorDbConfigBackend.pinecone(
    VertexAiRagCorpusPinecone pinecone,
  ) = VertexAiRagCorpusVectorDbConfigBackendPinecone;

  /// Sets `vertex_vector_search`.
  const factory VertexAiRagCorpusVectorDbConfigBackend.vertexVectorSearch(
    VertexAiRagCorpusVertexVectorSearch vertexVectorSearch,
  ) = VertexAiRagCorpusVectorDbConfigBackendVertexVectorSearch;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [VertexAiRagCorpusVectorDbConfigBackend.ragManagedDb] choice: sets `rag_managed_db`.
final class VertexAiRagCorpusVectorDbConfigBackendRagManagedDb
    extends VertexAiRagCorpusVectorDbConfigBackend {
  const VertexAiRagCorpusVectorDbConfigBackendRagManagedDb(this.ragManagedDb);

  final VertexAiRagCorpusRagManagedDb ragManagedDb;

  @override
  String get blockKey => 'rag_managed_db';

  @override
  Map<String, Object?> encode() => {'rag_managed_db': ragManagedDb.encode()};
}

/// The [VertexAiRagCorpusVectorDbConfigBackend.pinecone] choice: sets `pinecone`.
final class VertexAiRagCorpusVectorDbConfigBackendPinecone
    extends VertexAiRagCorpusVectorDbConfigBackend {
  const VertexAiRagCorpusVectorDbConfigBackendPinecone(this.pinecone);

  final VertexAiRagCorpusPinecone pinecone;

  @override
  String get blockKey => 'pinecone';

  @override
  Map<String, Object?> encode() => {'pinecone': pinecone.encode()};
}

/// The [VertexAiRagCorpusVectorDbConfigBackend.vertexVectorSearch] choice: sets `vertex_vector_search`.
final class VertexAiRagCorpusVectorDbConfigBackendVertexVectorSearch
    extends VertexAiRagCorpusVectorDbConfigBackend {
  const VertexAiRagCorpusVectorDbConfigBackendVertexVectorSearch(
    this.vertexVectorSearch,
  );

  final VertexAiRagCorpusVertexVectorSearch vertexVectorSearch;

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
final class VertexAiRagCorpusApiAuth {
  const VertexAiRagCorpusApiAuth({this.apiKeyConfig});

  final VertexAiRagCorpusApiKeyConfig? apiKeyConfig;

  Map<String, Object?> encode() => {'api_key_config': ?apiKeyConfig?.encode()};
}

/// Exactly one of `api_key_secret_version`, `api_key_string` on the `vector_db_config.api_auth.api_key_config` block of `google_vertex_ai_rag_corpus`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.apiKeySecretVersion(...)`.
sealed class VertexAiRagCorpusApiKeyConfig {
  const VertexAiRagCorpusApiKeyConfig();

  /// Sets `api_key_secret_version`.
  const factory VertexAiRagCorpusApiKeyConfig.apiKeySecretVersion(
    TfArg<String> apiKeySecretVersion,
  ) = VertexAiRagCorpusApiKeyConfigApiKeySecretVersion;

  /// Sets `api_key_string`.
  const factory VertexAiRagCorpusApiKeyConfig.apiKeyString(
    TfArg<String> apiKeyString,
  ) = VertexAiRagCorpusApiKeyConfigApiKeyString;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [VertexAiRagCorpusApiKeyConfig.apiKeySecretVersion] choice: sets `api_key_secret_version`.
final class VertexAiRagCorpusApiKeyConfigApiKeySecretVersion
    extends VertexAiRagCorpusApiKeyConfig {
  const VertexAiRagCorpusApiKeyConfigApiKeySecretVersion(
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

/// The [VertexAiRagCorpusApiKeyConfig.apiKeyString] choice: sets `api_key_string`.
final class VertexAiRagCorpusApiKeyConfigApiKeyString
    extends VertexAiRagCorpusApiKeyConfig {
  const VertexAiRagCorpusApiKeyConfigApiKeyString(this.apiKeyString);

  final TfArg<String> apiKeyString;

  @override
  String get blockKey => 'api_key_string';

  @override
  Map<String, Object?> encode() => {'api_key_string': apiKeyString.toTfJson()};
}

/// Typed helper for the `vector_db_config.pinecone` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusPinecone {
  const VertexAiRagCorpusPinecone({required this.indexName});

  final TfArg<String> indexName;

  Map<String, Object?> encode() => {'index_name': indexName.toTfJson()};
}

/// Typed helper for the `vector_db_config.rag_embedding_model_config` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusRagEmbeddingModelConfig {
  const VertexAiRagCorpusRagEmbeddingModelConfig({
    this.vertexPredictionEndpoint,
  });

  final VertexAiRagCorpusVertexPredictionEndpoint? vertexPredictionEndpoint;

  Map<String, Object?> encode() => {
    'vertex_prediction_endpoint': ?vertexPredictionEndpoint?.encode(),
  };
}

/// Typed helper for the `vector_db_config.rag_embedding_model_config.vertex_prediction_endpoint` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVertexPredictionEndpoint {
  const VertexAiRagCorpusVertexPredictionEndpoint({required this.endpoint});

  final TfArg<String> endpoint;

  Map<String, Object?> encode() => {'endpoint': endpoint.toTfJson()};
}

/// Exactly one of `knn`, `ann` on the `vector_db_config.rag_managed_db` block of `google_vertex_ai_rag_corpus`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.knn(...)`.
sealed class VertexAiRagCorpusRagManagedDb {
  const VertexAiRagCorpusRagManagedDb();

  /// Sets `knn`.
  const factory VertexAiRagCorpusRagManagedDb.knn(VertexAiRagCorpusKnn knn) =
      VertexAiRagCorpusRagManagedDbKnn;

  /// Sets `ann`.
  const factory VertexAiRagCorpusRagManagedDb.ann(VertexAiRagCorpusAnn ann) =
      VertexAiRagCorpusRagManagedDbAnn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [VertexAiRagCorpusRagManagedDb.knn] choice: sets `knn`.
final class VertexAiRagCorpusRagManagedDbKnn
    extends VertexAiRagCorpusRagManagedDb {
  const VertexAiRagCorpusRagManagedDbKnn(this.knn);

  final VertexAiRagCorpusKnn knn;

  @override
  String get blockKey => 'knn';

  @override
  Map<String, Object?> encode() => {'knn': knn.encode()};
}

/// The [VertexAiRagCorpusRagManagedDb.ann] choice: sets `ann`.
final class VertexAiRagCorpusRagManagedDbAnn
    extends VertexAiRagCorpusRagManagedDb {
  const VertexAiRagCorpusRagManagedDbAnn(this.ann);

  final VertexAiRagCorpusAnn ann;

  @override
  String get blockKey => 'ann';

  @override
  Map<String, Object?> encode() => {'ann': ann.encode()};
}

/// Typed helper for the `vector_db_config.rag_managed_db.ann` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusAnn {
  const VertexAiRagCorpusAnn({this.leafCount, this.treeDepth});

  final TfArg<num>? leafCount;

  final TfArg<num>? treeDepth;

  Map<String, Object?> encode() => {
    'leaf_count': ?leafCount?.toTfJson(),
    'tree_depth': ?treeDepth?.toTfJson(),
  };
}

/// Typed helper for the `vector_db_config.rag_managed_db.knn` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusKnn {
  const VertexAiRagCorpusKnn();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `vector_db_config.vertex_vector_search` block of
/// `google_vertex_ai_rag_corpus` (derived from provider schema).
@immutable
final class VertexAiRagCorpusVertexVectorSearch {
  const VertexAiRagCorpusVertexVectorSearch({
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
    required TfArg<String> displayName,
    required TfArg<String> region,
    TfArg<String>? description,
    VertexAiRagCorpusBackend? backend,
    VertexAiRagCorpusEncryptionSpec? encryptionSpec,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'region': region,
           'description': ?description,
           ...?backend?.argMap,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiRagCorpusSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiRagCorpus>`.
  RefTo<GoogleVertexAiRagCorpus> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `corpus_status` attribute.
  TfRef<List<Map<String, Object?>>> get corpusStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'corpus_status');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
