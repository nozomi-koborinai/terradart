// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_gemini_data_analytics_data_agent`.
const Set<String> _googleGeminiDataAnalyticsDataAgentSensitive = <String>{};

/// Typed helper for the `data_analytics_agent` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
@immutable
final class GeminiDataAnalyticsDataAgentDataAnalyticsAgent {
  const GeminiDataAnalyticsDataAgentDataAnalyticsAgent({
    this.publishedContext,
    this.stagingContext,
  });

  final GeminiDataAnalyticsDataAgentPublishedContext? publishedContext;

  final GeminiDataAnalyticsDataAgentStagingContext? stagingContext;

  @internal
  Map<String, Object?> encode() => {
    'published_context': ?publishedContext?.encode(),
    'staging_context': ?stagingContext?.encode(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
@immutable
final class GeminiDataAnalyticsDataAgentPublishedContext {
  const GeminiDataAnalyticsDataAgentPublishedContext({
    this.systemInstruction,
    required this.datasourceReferences,
    this.exampleQueries,
    this.glossaryTerms,
    this.options,
    this.schemaRelationships,
  });

  final TfArg<String>? systemInstruction;

  final GeminiDataAnalyticsDataAgentDatasourceReferences datasourceReferences;

  final List<GeminiDataAnalyticsDataAgentExampleQueries>? exampleQueries;

  final List<GeminiDataAnalyticsDataAgentGlossaryTerms>? glossaryTerms;

  final GeminiDataAnalyticsDataAgentOptions? options;

  final List<GeminiDataAnalyticsDataAgentSchemaRelationships>?
  schemaRelationships;

  @internal
  Map<String, Object?> encode() => {
    'system_instruction': ?systemInstruction?.toTfJson(),
    'datasource_references': datasourceReferences.encode(),
    if (exampleQueries != null)
      'example_queries': [for (final e in exampleQueries!) e.encode()],
    if (glossaryTerms != null)
      'glossary_terms': [for (final e in glossaryTerms!) e.encode()],
    'options': ?options?.encode(),
    if (schemaRelationships != null)
      'schema_relationships': [
        for (final e in schemaRelationships!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentDatasourceReferences {
  const GeminiDataAnalyticsDataAgentDatasourceReferences({required this.bq});

  final GeminiDataAnalyticsDataAgentBq bq;

  @internal
  Map<String, Object?> encode() => {'bq': bq.encode()};
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references.bq` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentBq {
  const GeminiDataAnalyticsDataAgentBq({this.tableReferences});

  final List<GeminiDataAnalyticsDataAgentTableReferences>? tableReferences;

  @internal
  Map<String, Object?> encode() => {
    if (tableReferences != null)
      'table_references': [for (final e in tableReferences!) e.encode()],
  };
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references.bq.table_references` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentTableReferences {
  const GeminiDataAnalyticsDataAgentTableReferences({
    required this.datasetId,
    required this.projectId,
    required this.tableId,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String> projectId;

  final TfArg<String> tableId;

  @internal
  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'project_id': projectId.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.example_queries` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentExampleQueries {
  const GeminiDataAnalyticsDataAgentExampleQueries({
    this.naturalLanguageQuestion,
    this.sqlQuery,
  });

  final TfArg<String>? naturalLanguageQuestion;

  final TfArg<String>? sqlQuery;

  @internal
  Map<String, Object?> encode() => {
    'natural_language_question': ?naturalLanguageQuestion?.toTfJson(),
    'sql_query': ?sqlQuery?.toTfJson(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.glossary_terms` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentGlossaryTerms {
  const GeminiDataAnalyticsDataAgentGlossaryTerms({
    required this.description,
    required this.displayName,
    this.labels,
  });

  final TfArg<String> description;

  final TfArg<String> displayName;

  final TfArg<List<String>>? labels;

  @internal
  Map<String, Object?> encode() => {
    'description': description.toTfJson(),
    'display_name': displayName.toTfJson(),
    'labels': ?labels?.toTfJson(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.options` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentOptions {
  const GeminiDataAnalyticsDataAgentOptions({this.analysis, this.datasource});

  final GeminiDataAnalyticsDataAgentAnalysis? analysis;

  final GeminiDataAnalyticsDataAgentDatasource? datasource;

  @internal
  Map<String, Object?> encode() => {
    'analysis': ?analysis?.encode(),
    'datasource': ?datasource?.encode(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.options.analysis` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentAnalysis {
  const GeminiDataAnalyticsDataAgentAnalysis({this.python});

  final GeminiDataAnalyticsDataAgentPython? python;

  @internal
  Map<String, Object?> encode() => {'python': ?python?.encode()};
}

/// Typed helper for the `data_analytics_agent.published_context.options.analysis.python` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentPython {
  const GeminiDataAnalyticsDataAgentPython({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `data_analytics_agent.published_context.options.datasource` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentDatasource {
  const GeminiDataAnalyticsDataAgentDatasource({this.bigQueryMaxBilledBytes});

  final TfArg<num>? bigQueryMaxBilledBytes;

  @internal
  Map<String, Object?> encode() => {
    'big_query_max_billed_bytes': ?bigQueryMaxBilledBytes?.toTfJson(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.schema_relationships` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentSchemaRelationships {
  const GeminiDataAnalyticsDataAgentSchemaRelationships({
    this.confidenceScore,
    this.sources,
    required this.leftSchemaPaths,
    required this.rightSchemaPaths,
  });

  final TfArg<num>? confidenceScore;

  final List<GeminiDataAnalyticsDataAgentSources>? sources;

  final GeminiDataAnalyticsDataAgentLeftSchemaPaths leftSchemaPaths;

  final GeminiDataAnalyticsDataAgentRightSchemaPaths rightSchemaPaths;

  @internal
  Map<String, Object?> encode() => {
    'confidence_score': ?confidenceScore?.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.toTfJson()],
    'left_schema_paths': leftSchemaPaths.encode(),
    'right_schema_paths': rightSchemaPaths.encode(),
  };
}

/// `sources` — derived from the provider schema description.
extension type const GeminiDataAnalyticsDataAgentSources._(TfArg<String> _)
    implements TfArg<String> {
  GeminiDataAnalyticsDataAgentSources.variable(String name)
    : this._(TfArg.variable(name));
  GeminiDataAnalyticsDataAgentSources.expression(String template)
    : this._(TfArg.expression(template));
  const GeminiDataAnalyticsDataAgentSources.arg(TfArg<String> arg)
    : this._(arg);

  static const bigqueryJobHistory = GeminiDataAnalyticsDataAgentSources._(
    TfArgLiteral('BIGQUERY_JOB_HISTORY'),
  );
  static const llmSuggested = GeminiDataAnalyticsDataAgentSources._(
    TfArgLiteral('LLM_SUGGESTED'),
  );
  static const bigqueryTableConstraints = GeminiDataAnalyticsDataAgentSources._(
    TfArgLiteral('BIGQUERY_TABLE_CONSTRAINTS'),
  );

  static const List<GeminiDataAnalyticsDataAgentSources> values = [
    bigqueryJobHistory,
    llmSuggested,
    bigqueryTableConstraints,
  ];
}

/// Typed helper for the `data_analytics_agent.published_context.schema_relationships.left_schema_paths` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentLeftSchemaPaths {
  const GeminiDataAnalyticsDataAgentLeftSchemaPaths({
    required this.paths,
    required this.tableFqn,
  });

  final TfArg<List<String>> paths;

  final TfArg<String> tableFqn;

  @internal
  Map<String, Object?> encode() => {
    'paths': paths.toTfJson(),
    'table_fqn': tableFqn.toTfJson(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.schema_relationships.right_schema_paths` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentRightSchemaPaths {
  const GeminiDataAnalyticsDataAgentRightSchemaPaths({
    required this.paths,
    required this.tableFqn,
  });

  final TfArg<List<String>> paths;

  final TfArg<String> tableFqn;

  @internal
  Map<String, Object?> encode() => {
    'paths': paths.toTfJson(),
    'table_fqn': tableFqn.toTfJson(),
  };
}

/// Typed helper for the `data_analytics_agent.staging_context` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
@immutable
final class GeminiDataAnalyticsDataAgentStagingContext {
  const GeminiDataAnalyticsDataAgentStagingContext({
    this.systemInstruction,
    required this.datasourceReferences,
    this.exampleQueries,
    this.glossaryTerms,
    this.options,
    this.schemaRelationships,
  });

  final TfArg<String>? systemInstruction;

  final GeminiDataAnalyticsDataAgentDatasourceReferences datasourceReferences;

  final List<GeminiDataAnalyticsDataAgentExampleQueries>? exampleQueries;

  final List<GeminiDataAnalyticsDataAgentGlossaryTerms>? glossaryTerms;

  final GeminiDataAnalyticsDataAgentOptions? options;

  final List<GeminiDataAnalyticsDataAgentSchemaRelationships>?
  schemaRelationships;

  @internal
  Map<String, Object?> encode() => {
    'system_instruction': ?systemInstruction?.toTfJson(),
    'datasource_references': datasourceReferences.encode(),
    if (exampleQueries != null)
      'example_queries': [for (final e in exampleQueries!) e.encode()],
    if (glossaryTerms != null)
      'glossary_terms': [for (final e in glossaryTerms!) e.encode()],
    'options': ?options?.encode(),
    if (schemaRelationships != null)
      'schema_relationships': [
        for (final e in schemaRelationships!) e.encode(),
      ],
  };
}

/// Factory wrapper for `google_gemini_data_analytics_data_agent`.
///
/// A DataAgent lets users interact with configured data sources by using
/// natural language, as part of the Conversational Analytics API.
///
/// ~> **Note:** Deleting a DataAgent soft-deletes it. A soft-deleted DataAgent
/// is purged after 30 days (see `purge_time`), and its `data_agent_id` cannot
/// be reused in the same project and location until then. Changing a field that
/// forces replacement (such as `kms_key`) while keeping the same
/// `data_agent_id` therefore fails with an `ALREADY_EXISTS` error; use a new
/// `data_agent_id` instead.
final class GoogleGeminiDataAnalyticsDataAgent extends Resource {
  static const String tfType = 'google_gemini_data_analytics_data_agent';

  GoogleGeminiDataAnalyticsDataAgent(
    super.localName, {
    required TfArg<String> dataAgentId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    RefTo<GoogleKmsCryptoKey>? kmsKey,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    GeminiDataAnalyticsDataAgentDataAnalyticsAgent? dataAnalyticsAgent,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_agent_id': dataAgentId,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'kms_key': ?kmsKey?.encodeAs('id'),
           'labels': ?labels,
           'location': location,
           'project': ?project,
           if (dataAnalyticsAgent != null)
             'data_analytics_agent': TfArg.literal(dataAnalyticsAgent.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiDataAnalyticsDataAgentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiDataAnalyticsDataAgent>`.
  RefTo<GoogleGeminiDataAnalyticsDataAgent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `purge_time` attribute.
  TfRef<String> get purgeTime => TfRef.attribute<String>(this, 'purge_time');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `data_agent_id` attribute.
  TfRef<String> get dataAgentId =>
      TfRef.attribute<String>(this, 'data_agent_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
