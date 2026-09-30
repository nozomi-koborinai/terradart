// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_dataplex_datascan`.
const Set<String> _googleDataplexDatascanSensitive = <String>{};

/// Dataplex Datascan enum for `state`.
enum DataplexDatascanState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  active('ACTIVE'),
  creating('CREATING'),
  deleting('DELETING'),
  actionRequired('ACTION_REQUIRED');

  const DataplexDatascanState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dataplex Datascan enum for `type`.
enum DataplexDatascanType implements TerraformEnum {
  dataScanTypeUnspecified('DATA_SCAN_TYPE_UNSPECIFIED'),
  dataQuality('DATA_QUALITY'),
  dataProfile('DATA_PROFILE'),
  dataDiscovery('DATA_DISCOVERY'),
  dataDocumentation('DATA_DOCUMENTATION');

  const DataplexDatascanType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `data_quality_spec`, `data_profile_spec`, `data_discovery_spec`, `data_documentation_spec` on `google_dataplex_datascan`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.dataQualitySpec(...)`.
sealed class DataplexDatascanScanSpec {
  const DataplexDatascanScanSpec();

  /// Sets `data_quality_spec`.
  const factory DataplexDatascanScanSpec.dataQualitySpec(
    DataplexDatascanDataQualitySpec dataQualitySpec,
  ) = DataplexDatascanScanSpecDataQualitySpec;

  /// Sets `data_profile_spec`.
  const factory DataplexDatascanScanSpec.dataProfileSpec(
    DataplexDatascanDataProfileSpec dataProfileSpec,
  ) = DataplexDatascanScanSpecDataProfileSpec;

  /// Sets `data_discovery_spec`.
  const factory DataplexDatascanScanSpec.dataDiscoverySpec(
    DataplexDatascanDataDiscoverySpec dataDiscoverySpec,
  ) = DataplexDatascanScanSpecDataDiscoverySpec;

  /// Sets `data_documentation_spec`.
  const factory DataplexDatascanScanSpec.dataDocumentationSpec(
    DataplexDatascanDataDocumentationSpec dataDocumentationSpec,
  ) = DataplexDatascanScanSpecDataDocumentationSpec;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataplexDatascanScanSpec.dataQualitySpec] choice: sets `data_quality_spec`.
final class DataplexDatascanScanSpecDataQualitySpec
    extends DataplexDatascanScanSpec {
  const DataplexDatascanScanSpecDataQualitySpec(this.dataQualitySpec);

  final DataplexDatascanDataQualitySpec dataQualitySpec;

  @override
  String get blockKey => 'data_quality_spec';

  @override
  Map<String, Object?> encode() => {
    'data_quality_spec': dataQualitySpec.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'data_quality_spec': TfArg.literal(dataQualitySpec.encode()),
  };
}

/// The [DataplexDatascanScanSpec.dataProfileSpec] choice: sets `data_profile_spec`.
final class DataplexDatascanScanSpecDataProfileSpec
    extends DataplexDatascanScanSpec {
  const DataplexDatascanScanSpecDataProfileSpec(this.dataProfileSpec);

  final DataplexDatascanDataProfileSpec dataProfileSpec;

  @override
  String get blockKey => 'data_profile_spec';

  @override
  Map<String, Object?> encode() => {
    'data_profile_spec': dataProfileSpec.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'data_profile_spec': TfArg.literal(dataProfileSpec.encode()),
  };
}

/// The [DataplexDatascanScanSpec.dataDiscoverySpec] choice: sets `data_discovery_spec`.
final class DataplexDatascanScanSpecDataDiscoverySpec
    extends DataplexDatascanScanSpec {
  const DataplexDatascanScanSpecDataDiscoverySpec(this.dataDiscoverySpec);

  final DataplexDatascanDataDiscoverySpec dataDiscoverySpec;

  @override
  String get blockKey => 'data_discovery_spec';

  @override
  Map<String, Object?> encode() => {
    'data_discovery_spec': dataDiscoverySpec.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'data_discovery_spec': TfArg.literal(dataDiscoverySpec.encode()),
  };
}

/// The [DataplexDatascanScanSpec.dataDocumentationSpec] choice: sets `data_documentation_spec`.
final class DataplexDatascanScanSpecDataDocumentationSpec
    extends DataplexDatascanScanSpec {
  const DataplexDatascanScanSpecDataDocumentationSpec(
    this.dataDocumentationSpec,
  );

  final DataplexDatascanDataDocumentationSpec dataDocumentationSpec;

  @override
  String get blockKey => 'data_documentation_spec';

  @override
  Map<String, Object?> encode() => {
    'data_documentation_spec': dataDocumentationSpec.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'data_documentation_spec': TfArg.literal(dataDocumentationSpec.encode()),
  };
}

/// Exactly one of `entity`, `resource` on the `data` block of `google_dataplex_datascan`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.entity(...)`.
sealed class DataplexDatascanData {
  const DataplexDatascanData();

  /// Sets `entity`.
  const factory DataplexDatascanData.entity(TfArg<String> entity) =
      DataplexDatascanDataEntity;

  /// Sets `resource`.
  const factory DataplexDatascanData.resource(TfArg<String> resource) =
      DataplexDatascanDataResource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataplexDatascanData.entity] choice: sets `entity`.
final class DataplexDatascanDataEntity extends DataplexDatascanData {
  const DataplexDatascanDataEntity(this.entity);

  final TfArg<String> entity;

  @override
  String get blockKey => 'entity';

  @override
  Map<String, Object?> encode() => {'entity': entity.toTfJson()};
}

/// The [DataplexDatascanData.resource] choice: sets `resource`.
final class DataplexDatascanDataResource extends DataplexDatascanData {
  const DataplexDatascanDataResource(this.resource);

  final TfArg<String> resource;

  @override
  String get blockKey => 'resource';

  @override
  Map<String, Object?> encode() => {'resource': resource.toTfJson()};
}

/// Typed helper for the `data_discovery_spec` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataDiscoverySpec {
  const DataplexDatascanDataDiscoverySpec({
    this.bigqueryPublishingConfig,
    this.storageConfig,
  });

  final DataplexDatascanDataDiscoverySpecBigqueryPublishingConfig?
  bigqueryPublishingConfig;

  final DataplexDatascanDataDiscoverySpecStorageConfig? storageConfig;

  Map<String, Object?> encode() => {
    'bigquery_publishing_config': ?bigqueryPublishingConfig?.encode(),
    'storage_config': ?storageConfig?.encode(),
  };
}

/// Typed helper for the `data_discovery_spec.bigquery_publishing_config` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataDiscoverySpecBigqueryPublishingConfig {
  const DataplexDatascanDataDiscoverySpecBigqueryPublishingConfig({
    this.connection,
    this.location,
    this.project,
    this.tableType,
  });

  final TfArg<String>? connection;

  final TfArg<String>? location;

  final TfArg<String>? project;

  final TfArg<
    DataplexDatascanDataDiscoverySpecBigqueryPublishingConfigTableType
  >?
  tableType;

  Map<String, Object?> encode() => {
    'connection': ?connection?.toTfJson(),
    'location': ?location?.toTfJson(),
    'project': ?project?.toTfJson(),
    'table_type': ?tableType?.toTfJson(),
  };
}

/// `table_type` — derived from the provider schema description.
enum DataplexDatascanDataDiscoverySpecBigqueryPublishingConfigTableType
    implements TerraformEnum {
  tableTypeUnspecified('TABLE_TYPE_UNSPECIFIED'),
  external('EXTERNAL'),
  biglake('BIGLAKE');

  const DataplexDatascanDataDiscoverySpecBigqueryPublishingConfigTableType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `data_discovery_spec.storage_config` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataDiscoverySpecStorageConfig {
  const DataplexDatascanDataDiscoverySpecStorageConfig({
    this.excludePatterns,
    this.includePatterns,
    this.csvOptions,
    this.jsonOptions,
  });

  final TfArg<List<String>>? excludePatterns;

  final TfArg<List<String>>? includePatterns;

  final DataplexDatascanDataDiscoverySpecStorageConfigCsvOptions? csvOptions;

  final DataplexDatascanDataDiscoverySpecStorageConfigJsonOptions? jsonOptions;

  Map<String, Object?> encode() => {
    'exclude_patterns': ?excludePatterns?.toTfJson(),
    'include_patterns': ?includePatterns?.toTfJson(),
    'csv_options': ?csvOptions?.encode(),
    'json_options': ?jsonOptions?.encode(),
  };
}

/// Typed helper for the `data_discovery_spec.storage_config.csv_options` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataDiscoverySpecStorageConfigCsvOptions {
  const DataplexDatascanDataDiscoverySpecStorageConfigCsvOptions({
    this.delimiter,
    this.encoding,
    this.headerRows,
    this.quote,
    this.typeInferenceDisabled,
  });

  final TfArg<String>? delimiter;

  final TfArg<String>? encoding;

  final TfArg<num>? headerRows;

  final TfArg<String>? quote;

  final TfArg<bool>? typeInferenceDisabled;

  Map<String, Object?> encode() => {
    'delimiter': ?delimiter?.toTfJson(),
    'encoding': ?encoding?.toTfJson(),
    'header_rows': ?headerRows?.toTfJson(),
    'quote': ?quote?.toTfJson(),
    'type_inference_disabled': ?typeInferenceDisabled?.toTfJson(),
  };
}

/// Typed helper for the `data_discovery_spec.storage_config.json_options` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataDiscoverySpecStorageConfigJsonOptions {
  const DataplexDatascanDataDiscoverySpecStorageConfigJsonOptions({
    this.encoding,
    this.typeInferenceDisabled,
  });

  final TfArg<String>? encoding;

  final TfArg<bool>? typeInferenceDisabled;

  Map<String, Object?> encode() => {
    'encoding': ?encoding?.toTfJson(),
    'type_inference_disabled': ?typeInferenceDisabled?.toTfJson(),
  };
}

/// Typed helper for the `data_documentation_spec` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataDocumentationSpec {
  const DataplexDatascanDataDocumentationSpec({
    this.catalogPublishingEnabled,
    this.sqlDialect,
  });

  final TfArg<bool>? catalogPublishingEnabled;

  final TfArg<DataplexDatascanDataDocumentationSpecSqlDialect>? sqlDialect;

  Map<String, Object?> encode() => {
    'catalog_publishing_enabled': ?catalogPublishingEnabled?.toTfJson(),
    'sql_dialect': ?sqlDialect?.toTfJson(),
  };
}

/// `sql_dialect` — derived from the provider schema description.
enum DataplexDatascanDataDocumentationSpecSqlDialect implements TerraformEnum {
  googleSql('GOOGLE_SQL'),
  sparkSql('SPARK_SQL');

  const DataplexDatascanDataDocumentationSpecSqlDialect(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_profile_spec` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataProfileSpec {
  const DataplexDatascanDataProfileSpec({
    this.catalogPublishingEnabled,
    this.rowFilter,
    this.samplingPercent,
    this.excludeFields,
    this.includeFields,
    this.postScanActions,
  });

  final TfArg<bool>? catalogPublishingEnabled;

  final TfArg<String>? rowFilter;

  final TfArg<num>? samplingPercent;

  final DataplexDatascanDataProfileSpecExcludeFields? excludeFields;

  final DataplexDatascanDataProfileSpecIncludeFields? includeFields;

  final DataplexDatascanDataProfileSpecPostScanActions? postScanActions;

  Map<String, Object?> encode() => {
    'catalog_publishing_enabled': ?catalogPublishingEnabled?.toTfJson(),
    'row_filter': ?rowFilter?.toTfJson(),
    'sampling_percent': ?samplingPercent?.toTfJson(),
    'exclude_fields': ?excludeFields?.encode(),
    'include_fields': ?includeFields?.encode(),
    'post_scan_actions': ?postScanActions?.encode(),
  };
}

/// Typed helper for the `data_profile_spec.exclude_fields` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataProfileSpecExcludeFields {
  const DataplexDatascanDataProfileSpecExcludeFields({this.fieldNames});

  final TfArg<List<String>>? fieldNames;

  Map<String, Object?> encode() => {'field_names': ?fieldNames?.toTfJson()};
}

/// Typed helper for the `data_profile_spec.include_fields` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataProfileSpecIncludeFields {
  const DataplexDatascanDataProfileSpecIncludeFields({this.fieldNames});

  final TfArg<List<String>>? fieldNames;

  Map<String, Object?> encode() => {'field_names': ?fieldNames?.toTfJson()};
}

/// Typed helper for the `data_profile_spec.post_scan_actions` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataProfileSpecPostScanActions {
  const DataplexDatascanDataProfileSpecPostScanActions({this.bigqueryExport});

  final DataplexDatascanDataProfileSpecPostScanActionsBigqueryExport?
  bigqueryExport;

  Map<String, Object?> encode() => {
    'bigquery_export': ?bigqueryExport?.encode(),
  };
}

/// Typed helper for the `data_profile_spec.post_scan_actions.bigquery_export` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataProfileSpecPostScanActionsBigqueryExport {
  const DataplexDatascanDataProfileSpecPostScanActionsBigqueryExport({
    this.resultsTable,
  });

  final TfArg<String>? resultsTable;

  Map<String, Object?> encode() => {'results_table': ?resultsTable?.toTfJson()};
}

/// Typed helper for the `data_quality_spec` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpec {
  const DataplexDatascanDataQualitySpec({
    this.catalogPublishingEnabled,
    this.enableCatalogBasedRules,
    this.filter,
    this.rowFilter,
    this.samplingPercent,
    this.postScanActions,
    this.rules,
  });

  final TfArg<bool>? catalogPublishingEnabled;

  final TfArg<bool>? enableCatalogBasedRules;

  final TfArg<String>? filter;

  final TfArg<String>? rowFilter;

  final TfArg<num>? samplingPercent;

  final DataplexDatascanDataQualitySpecPostScanActions? postScanActions;

  final List<DataplexDatascanDataQualitySpecRules>? rules;

  Map<String, Object?> encode() => {
    'catalog_publishing_enabled': ?catalogPublishingEnabled?.toTfJson(),
    'enable_catalog_based_rules': ?enableCatalogBasedRules?.toTfJson(),
    'filter': ?filter?.toTfJson(),
    'row_filter': ?rowFilter?.toTfJson(),
    'sampling_percent': ?samplingPercent?.toTfJson(),
    'post_scan_actions': ?postScanActions?.encode(),
    if (rules != null) 'rules': [for (final e in rules!) e.encode()],
  };
}

/// Typed helper for the `data_quality_spec.post_scan_actions` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecPostScanActions {
  const DataplexDatascanDataQualitySpecPostScanActions({
    this.bigqueryExport,
    this.notificationReport,
  });

  final DataplexDatascanDataQualitySpecPostScanActionsBigqueryExport?
  bigqueryExport;

  final DataplexDatascanDataQualitySpecPostScanActionsNotificationReport?
  notificationReport;

  Map<String, Object?> encode() => {
    'bigquery_export': ?bigqueryExport?.encode(),
    'notification_report': ?notificationReport?.encode(),
  };
}

/// Typed helper for the `data_quality_spec.post_scan_actions.bigquery_export` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecPostScanActionsBigqueryExport {
  const DataplexDatascanDataQualitySpecPostScanActionsBigqueryExport({
    this.resultsTable,
  });

  final TfArg<String>? resultsTable;

  Map<String, Object?> encode() => {'results_table': ?resultsTable?.toTfJson()};
}

/// Typed helper for the `data_quality_spec.post_scan_actions.notification_report` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecPostScanActionsNotificationReport {
  const DataplexDatascanDataQualitySpecPostScanActionsNotificationReport({
    this.jobEndTrigger,
    this.jobFailureTrigger,
    required this.recipients,
    this.scoreThresholdTrigger,
  });

  final DataplexDatascanDataQualitySpecPostScanActionsNotificationReportJobEndTrigger?
  jobEndTrigger;

  final DataplexDatascanDataQualitySpecPostScanActionsNotificationReportJobFailureTrigger?
  jobFailureTrigger;

  final DataplexDatascanDataQualitySpecPostScanActionsNotificationReportRecipients
  recipients;

  final DataplexDatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger?
  scoreThresholdTrigger;

  Map<String, Object?> encode() => {
    'job_end_trigger': ?jobEndTrigger?.encode(),
    'job_failure_trigger': ?jobFailureTrigger?.encode(),
    'recipients': recipients.encode(),
    'score_threshold_trigger': ?scoreThresholdTrigger?.encode(),
  };
}

/// Typed helper for the `data_quality_spec.post_scan_actions.notification_report.job_end_trigger` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecPostScanActionsNotificationReportJobEndTrigger {
  const DataplexDatascanDataQualitySpecPostScanActionsNotificationReportJobEndTrigger();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `data_quality_spec.post_scan_actions.notification_report.job_failure_trigger` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecPostScanActionsNotificationReportJobFailureTrigger {
  const DataplexDatascanDataQualitySpecPostScanActionsNotificationReportJobFailureTrigger();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `data_quality_spec.post_scan_actions.notification_report.recipients` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecPostScanActionsNotificationReportRecipients {
  const DataplexDatascanDataQualitySpecPostScanActionsNotificationReportRecipients({
    this.emails,
  });

  final TfArg<List<String>>? emails;

  Map<String, Object?> encode() => {'emails': ?emails?.toTfJson()};
}

/// Typed helper for the `data_quality_spec.post_scan_actions.notification_report.score_threshold_trigger` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger {
  const DataplexDatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger({
    this.scoreThreshold,
  });

  final TfArg<num>? scoreThreshold;

  Map<String, Object?> encode() => {
    'score_threshold': ?scoreThreshold?.toTfJson(),
  };
}

/// Typed helper for the `data_quality_spec.rules` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecRules {
  const DataplexDatascanDataQualitySpecRules({
    this.attributes,
    this.column,
    this.description,
    required this.dimension,
    this.ignoreNull,
    this.name,
    this.suspended,
    this.threshold,
    this.nonNullExpectation,
    this.rangeExpectation,
    this.regexExpectation,
    this.rowConditionExpectation,
    this.setExpectation,
    this.sqlAssertion,
    this.statisticRangeExpectation,
    this.tableConditionExpectation,
    this.templateReference,
    this.uniquenessExpectation,
  });

  final TfArg<Map<String, String>>? attributes;

  final TfArg<String>? column;

  final TfArg<String>? description;

  final TfArg<String> dimension;

  final TfArg<bool>? ignoreNull;

  final TfArg<String>? name;

  final TfArg<bool>? suspended;

  final TfArg<num>? threshold;

  final DataplexDatascanDataQualitySpecRulesNonNullExpectation?
  nonNullExpectation;

  final DataplexDatascanDataQualitySpecRulesRangeExpectation? rangeExpectation;

  final DataplexDatascanDataQualitySpecRulesRegexExpectation? regexExpectation;

  final DataplexDatascanDataQualitySpecRulesRowConditionExpectation?
  rowConditionExpectation;

  final DataplexDatascanDataQualitySpecRulesSetExpectation? setExpectation;

  final DataplexDatascanDataQualitySpecRulesSqlAssertion? sqlAssertion;

  final DataplexDatascanDataQualitySpecRulesStatisticRangeExpectation?
  statisticRangeExpectation;

  final DataplexDatascanDataQualitySpecRulesTableConditionExpectation?
  tableConditionExpectation;

  final DataplexDatascanDataQualitySpecRulesTemplateReference?
  templateReference;

  final DataplexDatascanDataQualitySpecRulesUniquenessExpectation?
  uniquenessExpectation;

  Map<String, Object?> encode() => {
    'attributes': ?attributes?.toTfJson(),
    'column': ?column?.toTfJson(),
    'description': ?description?.toTfJson(),
    'dimension': dimension.toTfJson(),
    'ignore_null': ?ignoreNull?.toTfJson(),
    'name': ?name?.toTfJson(),
    'suspended': ?suspended?.toTfJson(),
    'threshold': ?threshold?.toTfJson(),
    'non_null_expectation': ?nonNullExpectation?.encode(),
    'range_expectation': ?rangeExpectation?.encode(),
    'regex_expectation': ?regexExpectation?.encode(),
    'row_condition_expectation': ?rowConditionExpectation?.encode(),
    'set_expectation': ?setExpectation?.encode(),
    'sql_assertion': ?sqlAssertion?.encode(),
    'statistic_range_expectation': ?statisticRangeExpectation?.encode(),
    'table_condition_expectation': ?tableConditionExpectation?.encode(),
    'template_reference': ?templateReference?.encode(),
    'uniqueness_expectation': ?uniquenessExpectation?.encode(),
  };
}

/// Typed helper for the `data_quality_spec.rules.non_null_expectation` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecRulesNonNullExpectation {
  const DataplexDatascanDataQualitySpecRulesNonNullExpectation();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `data_quality_spec.rules.range_expectation` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecRulesRangeExpectation {
  const DataplexDatascanDataQualitySpecRulesRangeExpectation({
    this.maxValue,
    this.minValue,
    this.strictMaxEnabled,
    this.strictMinEnabled,
  });

  final TfArg<String>? maxValue;

  final TfArg<String>? minValue;

  final TfArg<bool>? strictMaxEnabled;

  final TfArg<bool>? strictMinEnabled;

  Map<String, Object?> encode() => {
    'max_value': ?maxValue?.toTfJson(),
    'min_value': ?minValue?.toTfJson(),
    'strict_max_enabled': ?strictMaxEnabled?.toTfJson(),
    'strict_min_enabled': ?strictMinEnabled?.toTfJson(),
  };
}

/// Typed helper for the `data_quality_spec.rules.regex_expectation` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecRulesRegexExpectation {
  const DataplexDatascanDataQualitySpecRulesRegexExpectation({
    required this.regex,
  });

  final TfArg<String> regex;

  Map<String, Object?> encode() => {'regex': regex.toTfJson()};
}

/// Typed helper for the `data_quality_spec.rules.row_condition_expectation` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecRulesRowConditionExpectation {
  const DataplexDatascanDataQualitySpecRulesRowConditionExpectation({
    required this.sqlExpression,
  });

  final TfArg<String> sqlExpression;

  Map<String, Object?> encode() => {'sql_expression': sqlExpression.toTfJson()};
}

/// Typed helper for the `data_quality_spec.rules.set_expectation` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecRulesSetExpectation {
  const DataplexDatascanDataQualitySpecRulesSetExpectation({
    required this.values,
  });

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `data_quality_spec.rules.sql_assertion` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecRulesSqlAssertion {
  const DataplexDatascanDataQualitySpecRulesSqlAssertion({
    required this.sqlStatement,
  });

  final TfArg<String> sqlStatement;

  Map<String, Object?> encode() => {'sql_statement': sqlStatement.toTfJson()};
}

/// Typed helper for the `data_quality_spec.rules.statistic_range_expectation` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecRulesStatisticRangeExpectation {
  const DataplexDatascanDataQualitySpecRulesStatisticRangeExpectation({
    this.maxValue,
    this.minValue,
    required this.statistic,
    this.strictMaxEnabled,
    this.strictMinEnabled,
  });

  final TfArg<String>? maxValue;

  final TfArg<String>? minValue;

  final TfArg<
    DataplexDatascanDataQualitySpecRulesStatisticRangeExpectationStatistic
  >
  statistic;

  final TfArg<bool>? strictMaxEnabled;

  final TfArg<bool>? strictMinEnabled;

  Map<String, Object?> encode() => {
    'max_value': ?maxValue?.toTfJson(),
    'min_value': ?minValue?.toTfJson(),
    'statistic': statistic.toTfJson(),
    'strict_max_enabled': ?strictMaxEnabled?.toTfJson(),
    'strict_min_enabled': ?strictMinEnabled?.toTfJson(),
  };
}

/// `statistic` — derived from the provider schema description.
enum DataplexDatascanDataQualitySpecRulesStatisticRangeExpectationStatistic
    implements TerraformEnum {
  statisticUndefined('STATISTIC_UNDEFINED'),
  mean('MEAN'),
  min('MIN'),
  max('MAX');

  const DataplexDatascanDataQualitySpecRulesStatisticRangeExpectationStatistic(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `data_quality_spec.rules.table_condition_expectation` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecRulesTableConditionExpectation {
  const DataplexDatascanDataQualitySpecRulesTableConditionExpectation({
    required this.sqlExpression,
  });

  final TfArg<String> sqlExpression;

  Map<String, Object?> encode() => {'sql_expression': sqlExpression.toTfJson()};
}

/// Typed helper for the `data_quality_spec.rules.template_reference` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecRulesTemplateReference {
  const DataplexDatascanDataQualitySpecRulesTemplateReference({
    required this.name,
    this.values,
  });

  final TfArg<String> name;

  final List<DataplexDatascanDataQualitySpecRulesTemplateReferenceValues>?
  values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `data_quality_spec.rules.template_reference.values` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecRulesTemplateReferenceValues {
  const DataplexDatascanDataQualitySpecRulesTemplateReferenceValues({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `data_quality_spec.rules.uniqueness_expectation` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanDataQualitySpecRulesUniquenessExpectation {
  const DataplexDatascanDataQualitySpecRulesUniquenessExpectation();

  Map<String, Object?> encode() => {};
}

/// Exactly one of `dataplex_service_agent`, `user_credential`, `service_account` on the `execution_identity` block of `google_dataplex_datascan`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.dataplexServiceAgent(...)`.
sealed class DataplexDatascanExecutionIdentity {
  const DataplexDatascanExecutionIdentity();

  /// Sets `dataplex_service_agent`.
  const factory DataplexDatascanExecutionIdentity.dataplexServiceAgent(
    DataplexDatascanExecutionIdentityDataplexServiceAgent dataplexServiceAgent,
  ) = DataplexDatascanExecutionIdentityDataplexServiceAgentChoice;

  /// Sets `user_credential`.
  const factory DataplexDatascanExecutionIdentity.userCredential(
    DataplexDatascanExecutionIdentityUserCredential userCredential,
  ) = DataplexDatascanExecutionIdentityUserCredentialChoice;

  /// Sets `service_account`.
  const factory DataplexDatascanExecutionIdentity.serviceAccount(
    DataplexDatascanExecutionIdentityServiceAccount serviceAccount,
  ) = DataplexDatascanExecutionIdentityServiceAccountChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataplexDatascanExecutionIdentity.dataplexServiceAgent] choice: sets `dataplex_service_agent`.
final class DataplexDatascanExecutionIdentityDataplexServiceAgentChoice
    extends DataplexDatascanExecutionIdentity {
  const DataplexDatascanExecutionIdentityDataplexServiceAgentChoice(
    this.dataplexServiceAgent,
  );

  final DataplexDatascanExecutionIdentityDataplexServiceAgent
  dataplexServiceAgent;

  @override
  String get blockKey => 'dataplex_service_agent';

  @override
  Map<String, Object?> encode() => {
    'dataplex_service_agent': dataplexServiceAgent.encode(),
  };
}

/// The [DataplexDatascanExecutionIdentity.userCredential] choice: sets `user_credential`.
final class DataplexDatascanExecutionIdentityUserCredentialChoice
    extends DataplexDatascanExecutionIdentity {
  const DataplexDatascanExecutionIdentityUserCredentialChoice(
    this.userCredential,
  );

  final DataplexDatascanExecutionIdentityUserCredential userCredential;

  @override
  String get blockKey => 'user_credential';

  @override
  Map<String, Object?> encode() => {'user_credential': userCredential.encode()};
}

/// The [DataplexDatascanExecutionIdentity.serviceAccount] choice: sets `service_account`.
final class DataplexDatascanExecutionIdentityServiceAccountChoice
    extends DataplexDatascanExecutionIdentity {
  const DataplexDatascanExecutionIdentityServiceAccountChoice(
    this.serviceAccount,
  );

  final DataplexDatascanExecutionIdentityServiceAccount serviceAccount;

  @override
  String get blockKey => 'service_account';

  @override
  Map<String, Object?> encode() => {'service_account': serviceAccount.encode()};
}

/// Typed helper for the `execution_identity.dataplex_service_agent` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanExecutionIdentityDataplexServiceAgent {
  const DataplexDatascanExecutionIdentityDataplexServiceAgent();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `execution_identity.service_account` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanExecutionIdentityServiceAccount {
  const DataplexDatascanExecutionIdentityServiceAccount({required this.email});

  final RefTo<GoogleServiceAccount> email;

  Map<String, Object?> encode() => {
    'email': email.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `execution_identity.user_credential` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanExecutionIdentityUserCredential {
  const DataplexDatascanExecutionIdentityUserCredential();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `execution_spec` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanExecutionSpec {
  const DataplexDatascanExecutionSpec({this.field, required this.trigger});

  final TfArg<String>? field;

  final DataplexDatascanExecutionSpecTrigger trigger;

  Map<String, Object?> encode() => {
    'field': ?field?.toTfJson(),
    'trigger': trigger.encode(),
  };
}

/// Exactly one of `on_demand`, `schedule`, `one_time` on the `execution_spec.trigger` block of `google_dataplex_datascan`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.onDemand(...)`.
sealed class DataplexDatascanExecutionSpecTrigger {
  const DataplexDatascanExecutionSpecTrigger();

  /// Sets `on_demand`.
  const factory DataplexDatascanExecutionSpecTrigger.onDemand(
    DataplexDatascanExecutionSpecTriggerOnDemand onDemand,
  ) = DataplexDatascanExecutionSpecTriggerOnDemandChoice;

  /// Sets `schedule`.
  const factory DataplexDatascanExecutionSpecTrigger.schedule(
    DataplexDatascanExecutionSpecTriggerSchedule schedule,
  ) = DataplexDatascanExecutionSpecTriggerScheduleChoice;

  /// Sets `one_time`.
  const factory DataplexDatascanExecutionSpecTrigger.oneTime(
    DataplexDatascanExecutionSpecTriggerOneTime oneTime,
  ) = DataplexDatascanExecutionSpecTriggerOneTimeChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataplexDatascanExecutionSpecTrigger.onDemand] choice: sets `on_demand`.
final class DataplexDatascanExecutionSpecTriggerOnDemandChoice
    extends DataplexDatascanExecutionSpecTrigger {
  const DataplexDatascanExecutionSpecTriggerOnDemandChoice(this.onDemand);

  final DataplexDatascanExecutionSpecTriggerOnDemand onDemand;

  @override
  String get blockKey => 'on_demand';

  @override
  Map<String, Object?> encode() => {'on_demand': onDemand.encode()};
}

/// The [DataplexDatascanExecutionSpecTrigger.schedule] choice: sets `schedule`.
final class DataplexDatascanExecutionSpecTriggerScheduleChoice
    extends DataplexDatascanExecutionSpecTrigger {
  const DataplexDatascanExecutionSpecTriggerScheduleChoice(this.schedule);

  final DataplexDatascanExecutionSpecTriggerSchedule schedule;

  @override
  String get blockKey => 'schedule';

  @override
  Map<String, Object?> encode() => {'schedule': schedule.encode()};
}

/// The [DataplexDatascanExecutionSpecTrigger.oneTime] choice: sets `one_time`.
final class DataplexDatascanExecutionSpecTriggerOneTimeChoice
    extends DataplexDatascanExecutionSpecTrigger {
  const DataplexDatascanExecutionSpecTriggerOneTimeChoice(this.oneTime);

  final DataplexDatascanExecutionSpecTriggerOneTime oneTime;

  @override
  String get blockKey => 'one_time';

  @override
  Map<String, Object?> encode() => {'one_time': oneTime.encode()};
}

/// Typed helper for the `execution_spec.trigger.on_demand` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanExecutionSpecTriggerOnDemand {
  const DataplexDatascanExecutionSpecTriggerOnDemand();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `execution_spec.trigger.one_time` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanExecutionSpecTriggerOneTime {
  const DataplexDatascanExecutionSpecTriggerOneTime({
    this.ttlAfterScanCompletion,
  });

  final TfArg<String>? ttlAfterScanCompletion;

  Map<String, Object?> encode() => {
    'ttl_after_scan_completion': ?ttlAfterScanCompletion?.toTfJson(),
  };
}

/// Typed helper for the `execution_spec.trigger.schedule` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanExecutionSpecTriggerSchedule {
  const DataplexDatascanExecutionSpecTriggerSchedule({required this.cron});

  final TfArg<String> cron;

  Map<String, Object?> encode() => {'cron': cron.toTfJson()};
}

/// Factory wrapper for `google_dataplex_datascan`.
///
/// Represents a user-visible job which provides the insights for the related
/// data source.
///
/// A Dataplex data scan (profile, quality, discovery, or documentation).
///
/// Choose exactly one scan type via [scanSpec]; [data] names the entity or
/// resource to scan and [executionSpec] its trigger.
final class GoogleDataplexDatascan extends Resource {
  static const String tfType = 'google_dataplex_datascan';

  GoogleDataplexDatascan({
    required super.localName,
    required TfArg<String> dataScanId,
    required TfArg<String> location,
    required DataplexDatascanScanSpec scanSpec,
    required DataplexDatascanData data,
    required DataplexDatascanExecutionSpec executionSpec,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    DataplexDatascanExecutionIdentity? executionIdentity,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_scan_id': dataScanId,
           'location': location,
           'display_name': ?displayName,
           'description': ?description,
           'labels': ?labels,
           'data': TfArg.literal(data.encode()),
           'execution_spec': TfArg.literal(executionSpec.encode()),
           if (executionIdentity != null)
             'execution_identity': TfArg.literal(executionIdentity.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           ...scanSpec.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexDatascanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexDatascan>`.
  RefTo<GoogleDataplexDatascan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `execution_status` attribute.
  TfRef<List<Map<String, Object?>>> get executionStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'execution_status');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

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

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `data_scan_id` for IAM bindings and cross-stack refs.
  TfRef<String> get dataScanIdRef =>
      TfRef.attribute<String>(this, 'data_scan_id');
}
