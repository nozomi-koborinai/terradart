// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_rag_corpus`.
const Set<String> _googleVertexAiRagCorpusSensitive = <String>{
  'vector_db_config.api_auth.api_key_config.api_key_string',
};

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
    TfArg<Map<String, dynamic>>? encryptionSpec,
    TfArg<Map<String, dynamic>>? vectorDbConfig,
    TfArg<Map<String, dynamic>>? vertexAiSearchConfig,
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
           if (encryptionSpec != null) 'encryption_spec': encryptionSpec,
           if (vectorDbConfig != null) 'vector_db_config': vectorDbConfig,
           if (vertexAiSearchConfig != null)
             'vertex_ai_search_config': vertexAiSearchConfig,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiRagCorpusSensitive;
}
