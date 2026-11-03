// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_rag_file`.
const Set<String> _googleVertexAiRagFileSensitive = <String>{};

/// Exactly one of `gcs_source`, `google_drive_source` on `google_vertex_ai_rag_file`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.gcsSource(...)`.
sealed class VertexAiRagFileSource {
  const VertexAiRagFileSource();

  /// Sets `gcs_source`.
  const factory VertexAiRagFileSource.gcsSource(
    VertexAiRagFileGcsSource gcsSource,
  ) = VertexAiRagFileGcsSourceChoice;

  /// Sets `google_drive_source`.
  const factory VertexAiRagFileSource.googleDriveSource(
    VertexAiRagFileGoogleDriveSource googleDriveSource,
  ) = VertexAiRagFileGoogleDriveSourceChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VertexAiRagFileSource.gcsSource] choice: sets `gcs_source`.
final class VertexAiRagFileGcsSourceChoice extends VertexAiRagFileSource {
  const VertexAiRagFileGcsSourceChoice(this.gcsSource);

  final VertexAiRagFileGcsSource gcsSource;

  @internal
  @override
  String get blockKey => 'gcs_source';

  @internal
  @override
  Map<String, Object?> encode() => {'gcs_source': gcsSource.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'gcs_source': TfArg.literal(gcsSource.encode()),
  };
}

/// The [VertexAiRagFileSource.googleDriveSource] choice: sets `google_drive_source`.
final class VertexAiRagFileGoogleDriveSourceChoice
    extends VertexAiRagFileSource {
  const VertexAiRagFileGoogleDriveSourceChoice(this.googleDriveSource);

  final VertexAiRagFileGoogleDriveSource googleDriveSource;

  @internal
  @override
  String get blockKey => 'google_drive_source';

  @internal
  @override
  Map<String, Object?> encode() => {
    'google_drive_source': googleDriveSource.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'google_drive_source': TfArg.literal(googleDriveSource.encode()),
  };
}

/// Typed helper for the `gcs_source` block of
/// `google_vertex_ai_rag_file` (derived from provider schema).
@immutable
final class VertexAiRagFileGcsSource {
  const VertexAiRagFileGcsSource({required this.uris});

  final TfArg<List<String>> uris;

  @internal
  Map<String, Object?> encode() => {'uris': uris.toTfJson()};
}

/// Typed helper for the `google_drive_source` block of
/// `google_vertex_ai_rag_file` (derived from provider schema).
@immutable
final class VertexAiRagFileGoogleDriveSource {
  const VertexAiRagFileGoogleDriveSource({required this.resourceIds});

  final VertexAiRagFileResourceIds resourceIds;

  @internal
  Map<String, Object?> encode() => {'resource_ids': resourceIds.encode()};
}

/// Typed helper for the `google_drive_source.resource_ids` block of
/// `google_vertex_ai_rag_file` (derived from provider schema).
@immutable
final class VertexAiRagFileResourceIds {
  const VertexAiRagFileResourceIds({
    required this.resourceId,
    this.resourceType,
  });

  final TfArg<String> resourceId;

  final VertexAiRagFileResourceType? resourceType;

  @internal
  Map<String, Object?> encode() => {
    'resource_id': resourceId.toTfJson(),
    'resource_type': ?resourceType?.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
extension type const VertexAiRagFileResourceType._(TfArg<String> _)
    implements TfArg<String> {
  VertexAiRagFileResourceType.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiRagFileResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiRagFileResourceType.arg(TfArg<String> arg) : this._(arg);

  static const resourceTypeFile = VertexAiRagFileResourceType._(
    TfArgLiteral('RESOURCE_TYPE_FILE'),
  );

  static const List<VertexAiRagFileResourceType> values = [resourceTypeFile];
}

/// At most one of `layout_parser`, `llm_parser` on the `rag_file_parsing_config` block of `google_vertex_ai_rag_file`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.layoutParser(...)`.
sealed class VertexAiRagFileParsingConfig {
  const VertexAiRagFileParsingConfig();

  /// Sets `layout_parser`.
  const factory VertexAiRagFileParsingConfig.layoutParser(
    VertexAiRagFileLayoutParser layoutParser,
  ) = VertexAiRagFileParsingConfigLayoutParser;

  /// Sets `llm_parser`.
  const factory VertexAiRagFileParsingConfig.llmParser(
    VertexAiRagFileLlmParser llmParser,
  ) = VertexAiRagFileParsingConfigLlmParser;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VertexAiRagFileParsingConfig.layoutParser] choice: sets `layout_parser`.
final class VertexAiRagFileParsingConfigLayoutParser
    extends VertexAiRagFileParsingConfig {
  const VertexAiRagFileParsingConfigLayoutParser(this.layoutParser);

  final VertexAiRagFileLayoutParser layoutParser;

  @internal
  @override
  String get blockKey => 'layout_parser';

  @internal
  @override
  Map<String, Object?> encode() => {'layout_parser': layoutParser.encode()};
}

/// The [VertexAiRagFileParsingConfig.llmParser] choice: sets `llm_parser`.
final class VertexAiRagFileParsingConfigLlmParser
    extends VertexAiRagFileParsingConfig {
  const VertexAiRagFileParsingConfigLlmParser(this.llmParser);

  final VertexAiRagFileLlmParser llmParser;

  @internal
  @override
  String get blockKey => 'llm_parser';

  @internal
  @override
  Map<String, Object?> encode() => {'llm_parser': llmParser.encode()};
}

/// Typed helper for the `rag_file_parsing_config.layout_parser` block of
/// `google_vertex_ai_rag_file` (derived from provider schema).
@immutable
final class VertexAiRagFileLayoutParser {
  const VertexAiRagFileLayoutParser({
    this.maxParsingRequestsPerMin,
    this.processorName,
  });

  final TfArg<num>? maxParsingRequestsPerMin;

  final TfArg<String>? processorName;

  @internal
  Map<String, Object?> encode() => {
    'max_parsing_requests_per_min': ?maxParsingRequestsPerMin?.toTfJson(),
    'processor_name': ?processorName?.toTfJson(),
  };
}

/// Typed helper for the `rag_file_parsing_config.llm_parser` block of
/// `google_vertex_ai_rag_file` (derived from provider schema).
@immutable
final class VertexAiRagFileLlmParser {
  const VertexAiRagFileLlmParser({
    this.customParsingPrompt,
    this.maxParsingRequestsPerMin,
    this.modelName,
  });

  final TfArg<String>? customParsingPrompt;

  final TfArg<num>? maxParsingRequestsPerMin;

  final TfArg<String>? modelName;

  @internal
  Map<String, Object?> encode() => {
    'custom_parsing_prompt': ?customParsingPrompt?.toTfJson(),
    'max_parsing_requests_per_min': ?maxParsingRequestsPerMin?.toTfJson(),
    'model_name': ?modelName?.toTfJson(),
  };
}

/// Typed helper for the `rag_file_transformation_config` block of
/// `google_vertex_ai_rag_file` (derived from provider schema).
@immutable
final class VertexAiRagFileTransformationConfig {
  const VertexAiRagFileTransformationConfig({this.ragFileChunkingConfig});

  final VertexAiRagFileChunkingConfig? ragFileChunkingConfig;

  @internal
  Map<String, Object?> encode() => {
    'rag_file_chunking_config': ?ragFileChunkingConfig?.encode(),
  };
}

/// Typed helper for the `rag_file_transformation_config.rag_file_chunking_config` block of
/// `google_vertex_ai_rag_file` (derived from provider schema).
@immutable
final class VertexAiRagFileChunkingConfig {
  const VertexAiRagFileChunkingConfig({this.fixedLengthChunking});

  final VertexAiRagFileFixedLengthChunking? fixedLengthChunking;

  @internal
  Map<String, Object?> encode() => {
    'fixed_length_chunking': ?fixedLengthChunking?.encode(),
  };
}

/// Typed helper for the `rag_file_transformation_config.rag_file_chunking_config.fixed_length_chunking` block of
/// `google_vertex_ai_rag_file` (derived from provider schema).
@immutable
final class VertexAiRagFileFixedLengthChunking {
  const VertexAiRagFileFixedLengthChunking({this.chunkOverlap, this.chunkSize});

  final TfArg<num>? chunkOverlap;

  final TfArg<num>? chunkSize;

  @internal
  Map<String, Object?> encode() => {
    'chunk_overlap': ?chunkOverlap?.toTfJson(),
    'chunk_size': ?chunkSize?.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_rag_file`.
///
/// A RagFile is a single file that has been imported into a Vertex AI RAG
/// Engine RagCorpus, where it is parsed, chunked, embedded, and indexed.
///
/// Each `google_vertex_ai_rag_file` imports exactly one file from either Cloud
/// Storage or Google Drive using the `ragFiles:import` method.
///
/// ~> **Note:** The RAG Engine service agent
/// (`service-PROJECT_NUMBER@gcp-sa-vertex-rag.iam.gserviceaccount.com`) must be
/// able to read the source file. If the source file content already exists in
/// the RagCorpus, the import is skipped by the API and resource creation fails.
final class GoogleVertexAiRagFile extends Resource {
  static const String tfType = 'google_vertex_ai_rag_file';

  GoogleVertexAiRagFile(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<num>? maxEmbeddingRequestsPerMin,
    TfArg<String>? project,
    required TfArg<String> ragCorpus,
    required TfArg<String> region,
    required VertexAiRagFileSource source,
    VertexAiRagFileParsingConfig? ragFileParsingConfig,
    VertexAiRagFileTransformationConfig? ragFileTransformationConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'max_embedding_requests_per_min': ?maxEmbeddingRequestsPerMin,
           'project': ?project,
           'rag_corpus': ragCorpus,
           'region': region,
           ...source.argMap,
           if (ragFileParsingConfig != null)
             'rag_file_parsing_config': TfArg.literal(
               ragFileParsingConfig.encode(),
             ),
           if (ragFileTransformationConfig != null)
             'rag_file_transformation_config': TfArg.literal(
               ragFileTransformationConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiRagFileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiRagFile>`.
  RefTo<GoogleVertexAiRagFile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `file_status` attribute.
  TfRef<List<Map<String, Object?>>> get fileStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'file_status');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `user_metadata` attribute.
  TfRef<String> get userMetadata =>
      TfRef.attribute<String>(this, 'user_metadata');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `max_embedding_requests_per_min` attribute.
  TfRef<num> get maxEmbeddingRequestsPerMin =>
      TfRef.attribute<num>(this, 'max_embedding_requests_per_min');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `rag_corpus` attribute.
  TfRef<String> get ragCorpus => TfRef.attribute<String>(this, 'rag_corpus');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
