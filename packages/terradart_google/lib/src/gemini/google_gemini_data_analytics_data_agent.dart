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
    this.lookerGoldenQueries,
    this.options,
    this.schemaRelationships,
    this.userFunctions,
  });

  final TfArg<String>? systemInstruction;

  final GeminiDataAnalyticsDataAgentDatasourceReferences datasourceReferences;

  final List<GeminiDataAnalyticsDataAgentExampleQueries>? exampleQueries;

  final List<GeminiDataAnalyticsDataAgentGlossaryTerms>? glossaryTerms;

  final List<GeminiDataAnalyticsDataAgentLookerGoldenQueries>?
  lookerGoldenQueries;

  final GeminiDataAnalyticsDataAgentOptions? options;

  final List<GeminiDataAnalyticsDataAgentSchemaRelationships>?
  schemaRelationships;

  final GeminiDataAnalyticsDataAgentUserFunctions? userFunctions;

  @internal
  Map<String, Object?> encode() => {
    'system_instruction': ?systemInstruction?.toTfJson(),
    'datasource_references': datasourceReferences.encode(),
    if (exampleQueries != null)
      'example_queries': [for (final e in exampleQueries!) e.encode()],
    if (glossaryTerms != null)
      'glossary_terms': [for (final e in glossaryTerms!) e.encode()],
    if (lookerGoldenQueries != null)
      'looker_golden_queries': [
        for (final e in lookerGoldenQueries!) e.encode(),
      ],
    'options': ?options?.encode(),
    if (schemaRelationships != null)
      'schema_relationships': [
        for (final e in schemaRelationships!) e.encode(),
      ],
    'user_functions': ?userFunctions?.encode(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentDatasourceReferences {
  const GeminiDataAnalyticsDataAgentDatasourceReferences({
    this.bq,
    this.looker,
    this.studio,
  });

  final GeminiDataAnalyticsDataAgentBq? bq;

  final GeminiDataAnalyticsDataAgentLooker? looker;

  final GeminiDataAnalyticsDataAgentStudio? studio;

  @internal
  Map<String, Object?> encode() => {
    'bq': ?bq?.encode(),
    'looker': ?looker?.encode(),
    'studio': ?studio?.encode(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references.bq` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentBq {
  const GeminiDataAnalyticsDataAgentBq({
    this.propertyGraphReferences,
    this.tableReferences,
  });

  final List<GeminiDataAnalyticsDataAgentPropertyGraphReferences>?
  propertyGraphReferences;

  final List<GeminiDataAnalyticsDataAgentTableReferences>? tableReferences;

  @internal
  Map<String, Object?> encode() => {
    if (propertyGraphReferences != null)
      'property_graph_references': [
        for (final e in propertyGraphReferences!) e.encode(),
      ],
    if (tableReferences != null)
      'table_references': [for (final e in tableReferences!) e.encode()],
  };
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references.bq.property_graph_references` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentPropertyGraphReferences {
  const GeminiDataAnalyticsDataAgentPropertyGraphReferences({
    required this.datasetId,
    required this.projectId,
    required this.propertyGraphId,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String> projectId;

  final TfArg<String> propertyGraphId;

  @internal
  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'project_id': projectId.toTfJson(),
    'property_graph_id': propertyGraphId.toTfJson(),
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
    this.schema,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String> projectId;

  final TfArg<String> tableId;

  final GeminiDataAnalyticsDataAgentSchema? schema;

  @internal
  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'project_id': projectId.toTfJson(),
    'table_id': tableId.toTfJson(),
    'schema': ?schema?.encode(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references.bq.table_references.schema` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentSchema {
  const GeminiDataAnalyticsDataAgentSchema({
    this.description,
    this.displayName,
    this.synonyms,
    this.tags,
    this.fields,
    this.filters,
  });

  final TfArg<String>? description;

  final TfArg<String>? displayName;

  final TfArg<List<String>>? synonyms;

  final TfArg<List<String>>? tags;

  final List<GeminiDataAnalyticsDataAgentFields>? fields;

  final List<GeminiDataAnalyticsDataAgentSchemaFilters>? filters;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'synonyms': ?synonyms?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
    if (filters != null) 'filters': [for (final e in filters!) e.encode()],
  };
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references.bq.table_references.schema.fields` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentFields {
  const GeminiDataAnalyticsDataAgentFields({
    this.category,
    this.description,
    this.mode,
    this.name,
    this.subfields,
    this.synonyms,
    this.tags,
    this.type,
    this.valueFormat,
  });

  final TfArg<String>? category;

  final TfArg<String>? description;

  final TfArg<String>? mode;

  final TfArg<String>? name;

  final TfArg<String>? subfields;

  final TfArg<List<String>>? synonyms;

  final TfArg<List<String>>? tags;

  final TfArg<String>? type;

  final TfArg<String>? valueFormat;

  @internal
  Map<String, Object?> encode() => {
    'category': ?category?.toTfJson(),
    'description': ?description?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'name': ?name?.toTfJson(),
    'subfields': ?subfields?.toTfJson(),
    'synonyms': ?synonyms?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'type': ?type?.toTfJson(),
    'value_format': ?valueFormat?.toTfJson(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references.bq.table_references.schema.filters` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentSchemaFilters {
  const GeminiDataAnalyticsDataAgentSchemaFilters({
    this.field,
    this.type,
    this.value,
  });

  final TfArg<String>? field;

  final GeminiDataAnalyticsDataAgentType? type;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'field': ?field?.toTfJson(),
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const GeminiDataAnalyticsDataAgentType._(TfArg<String> _)
    implements TfArg<String> {
  GeminiDataAnalyticsDataAgentType.variable(String name)
    : this._(TfArg.variable(name));
  GeminiDataAnalyticsDataAgentType.expression(String template)
    : this._(TfArg.expression(template));
  const GeminiDataAnalyticsDataAgentType.arg(TfArg<String> arg) : this._(arg);

  static const alwaysFilter = GeminiDataAnalyticsDataAgentType._(
    TfArgLiteral('ALWAYS_FILTER'),
  );

  static const List<GeminiDataAnalyticsDataAgentType> values = [alwaysFilter];
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references.looker` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentLooker {
  const GeminiDataAnalyticsDataAgentLooker({required this.exploreReferences});

  final List<GeminiDataAnalyticsDataAgentExploreReferences> exploreReferences;

  @internal
  Map<String, Object?> encode() => {
    'explore_references': [for (final e in exploreReferences) e.encode()],
  };
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references.looker.explore_references` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentExploreReferences {
  const GeminiDataAnalyticsDataAgentExploreReferences({
    required this.explore,
    this.lookerInstanceUri,
    required this.lookmlModel,
    this.privateLookerInstanceInfo,
    this.schema,
  });

  final TfArg<String> explore;

  final TfArg<String>? lookerInstanceUri;

  final TfArg<String> lookmlModel;

  final GeminiDataAnalyticsDataAgentPrivateLookerInstanceInfo?
  privateLookerInstanceInfo;

  final GeminiDataAnalyticsDataAgentSchema? schema;

  @internal
  Map<String, Object?> encode() => {
    'explore': explore.toTfJson(),
    'looker_instance_uri': ?lookerInstanceUri?.toTfJson(),
    'lookml_model': lookmlModel.toTfJson(),
    'private_looker_instance_info': ?privateLookerInstanceInfo?.encode(),
    'schema': ?schema?.encode(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references.looker.explore_references.private_looker_instance_info` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentPrivateLookerInstanceInfo {
  const GeminiDataAnalyticsDataAgentPrivateLookerInstanceInfo({
    this.lookerInstanceId,
    this.serviceDirectoryName,
  });

  final TfArg<String>? lookerInstanceId;

  final TfArg<String>? serviceDirectoryName;

  @internal
  Map<String, Object?> encode() => {
    'looker_instance_id': ?lookerInstanceId?.toTfJson(),
    'service_directory_name': ?serviceDirectoryName?.toTfJson(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references.studio` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentStudio {
  const GeminiDataAnalyticsDataAgentStudio({this.studioReferences});

  final List<GeminiDataAnalyticsDataAgentStudioReferences>? studioReferences;

  @internal
  Map<String, Object?> encode() => {
    if (studioReferences != null)
      'studio_references': [for (final e in studioReferences!) e.encode()],
  };
}

/// Typed helper for the `data_analytics_agent.published_context.datasource_references.studio.studio_references` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentStudioReferences {
  const GeminiDataAnalyticsDataAgentStudioReferences({
    required this.datasourceId,
  });

  final TfArg<String> datasourceId;

  @internal
  Map<String, Object?> encode() => {'datasource_id': datasourceId.toTfJson()};
}

/// Typed helper for the `data_analytics_agent.published_context.example_queries` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentExampleQueries {
  const GeminiDataAnalyticsDataAgentExampleQueries({
    this.naturalLanguageQuestion,
    this.sqlQuery,
    this.parameters,
  });

  final TfArg<String>? naturalLanguageQuestion;

  final TfArg<String>? sqlQuery;

  final List<GeminiDataAnalyticsDataAgentParameters>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'natural_language_question': ?naturalLanguageQuestion?.toTfJson(),
    'sql_query': ?sqlQuery?.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `data_analytics_agent.published_context.example_queries.parameters` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentParameters {
  const GeminiDataAnalyticsDataAgentParameters({
    required this.dataType,
    this.description,
    required this.name,
  });

  final TfArg<String> dataType;

  final TfArg<String>? description;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'data_type': dataType.toTfJson(),
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
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

/// Typed helper for the `data_analytics_agent.published_context.looker_golden_queries` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentLookerGoldenQueries {
  const GeminiDataAnalyticsDataAgentLookerGoldenQueries({
    this.naturalLanguageQuestions,
    this.lookerQuery,
  });

  final TfArg<List<String>>? naturalLanguageQuestions;

  final GeminiDataAnalyticsDataAgentLookerQuery? lookerQuery;

  @internal
  Map<String, Object?> encode() => {
    'natural_language_questions': ?naturalLanguageQuestions?.toTfJson(),
    'looker_query': ?lookerQuery?.encode(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.looker_golden_queries.looker_query` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentLookerQuery {
  const GeminiDataAnalyticsDataAgentLookerQuery({
    this.clientId,
    required this.explore,
    this.fields,
    this.limit,
    required this.model,
    this.queryId,
    this.sorts,
    this.filters,
  });

  final TfArg<String>? clientId;

  final TfArg<String> explore;

  final TfArg<List<String>>? fields;

  final TfArg<String>? limit;

  final TfArg<String> model;

  final TfArg<String>? queryId;

  final TfArg<List<String>>? sorts;

  final List<GeminiDataAnalyticsDataAgentFilters>? filters;

  @internal
  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'explore': explore.toTfJson(),
    'fields': ?fields?.toTfJson(),
    'limit': ?limit?.toTfJson(),
    'model': model.toTfJson(),
    'query_id': ?queryId?.toTfJson(),
    'sorts': ?sorts?.toTfJson(),
    if (filters != null) 'filters': [for (final e in filters!) e.encode()],
  };
}

/// Typed helper for the `data_analytics_agent.published_context.looker_golden_queries.looker_query.filters` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentFilters {
  const GeminiDataAnalyticsDataAgentFilters({required this.field, this.value});

  final TfArg<String> field;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'field': field.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.options` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentOptions {
  const GeminiDataAnalyticsDataAgentOptions({
    this.model,
    this.analysis,
    this.datasource,
  });

  final GeminiDataAnalyticsDataAgentModel? model;

  final GeminiDataAnalyticsDataAgentAnalysis? analysis;

  final GeminiDataAnalyticsDataAgentDatasource? datasource;

  @internal
  Map<String, Object?> encode() => {
    'model': ?model?.toTfJson(),
    'analysis': ?analysis?.encode(),
    'datasource': ?datasource?.encode(),
  };
}

/// `model` — derived from the provider schema description.
extension type const GeminiDataAnalyticsDataAgentModel._(TfArg<String> _)
    implements TfArg<String> {
  GeminiDataAnalyticsDataAgentModel.variable(String name)
    : this._(TfArg.variable(name));
  GeminiDataAnalyticsDataAgentModel.expression(String template)
    : this._(TfArg.expression(template));
  const GeminiDataAnalyticsDataAgentModel.arg(TfArg<String> arg) : this._(arg);

  static const latestGaModel = GeminiDataAnalyticsDataAgentModel._(
    TfArgLiteral('LATEST_GA_MODEL'),
  );

  static const List<GeminiDataAnalyticsDataAgentModel> values = [latestGaModel];
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

  final EnumList<GeminiDataAnalyticsDataAgentSources>? sources;

  final GeminiDataAnalyticsDataAgentLeftSchemaPaths leftSchemaPaths;

  final GeminiDataAnalyticsDataAgentRightSchemaPaths rightSchemaPaths;

  @internal
  Map<String, Object?> encode() => {
    'confidence_score': ?confidenceScore?.toTfJson(),
    'sources': ?sources?.toTfJson(),
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

/// Typed helper for the `data_analytics_agent.published_context.user_functions` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentUserFunctions {
  const GeminiDataAnalyticsDataAgentUserFunctions({this.bqRoutines});

  final List<GeminiDataAnalyticsDataAgentBqRoutines>? bqRoutines;

  @internal
  Map<String, Object?> encode() => {
    if (bqRoutines != null)
      'bq_routines': [for (final e in bqRoutines!) e.encode()],
  };
}

/// Typed helper for the `data_analytics_agent.published_context.user_functions.bq_routines` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentBqRoutines {
  const GeminiDataAnalyticsDataAgentBqRoutines({
    this.description,
    this.routineReference,
  });

  final TfArg<String>? description;

  final GeminiDataAnalyticsDataAgentRoutineReference? routineReference;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'routine_reference': ?routineReference?.encode(),
  };
}

/// Typed helper for the `data_analytics_agent.published_context.user_functions.bq_routines.routine_reference` block of
/// `google_gemini_data_analytics_data_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GeminiDataAnalyticsDataAgentRoutineReference {
  const GeminiDataAnalyticsDataAgentRoutineReference({
    this.datasetId,
    this.projectId,
    this.routineId,
  });

  final RefTo<GoogleBigqueryDataset>? datasetId;

  final TfArg<String>? projectId;

  final TfArg<String>? routineId;

  @internal
  Map<String, Object?> encode() => {
    'dataset_id': ?datasetId?.encodeAs('dataset_id').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'routine_id': ?routineId?.toTfJson(),
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
    this.lookerGoldenQueries,
    this.options,
    this.schemaRelationships,
    this.userFunctions,
  });

  final TfArg<String>? systemInstruction;

  final GeminiDataAnalyticsDataAgentDatasourceReferences datasourceReferences;

  final List<GeminiDataAnalyticsDataAgentExampleQueries>? exampleQueries;

  final List<GeminiDataAnalyticsDataAgentGlossaryTerms>? glossaryTerms;

  final List<GeminiDataAnalyticsDataAgentLookerGoldenQueries>?
  lookerGoldenQueries;

  final GeminiDataAnalyticsDataAgentOptions? options;

  final List<GeminiDataAnalyticsDataAgentSchemaRelationships>?
  schemaRelationships;

  final GeminiDataAnalyticsDataAgentUserFunctions? userFunctions;

  @internal
  Map<String, Object?> encode() => {
    'system_instruction': ?systemInstruction?.toTfJson(),
    'datasource_references': datasourceReferences.encode(),
    if (exampleQueries != null)
      'example_queries': [for (final e in exampleQueries!) e.encode()],
    if (glossaryTerms != null)
      'glossary_terms': [for (final e in glossaryTerms!) e.encode()],
    if (lookerGoldenQueries != null)
      'looker_golden_queries': [
        for (final e in lookerGoldenQueries!) e.encode(),
      ],
    'options': ?options?.encode(),
    if (schemaRelationships != null)
      'schema_relationships': [
        for (final e in schemaRelationships!) e.encode(),
      ],
    'user_functions': ?userFunctions?.encode(),
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
