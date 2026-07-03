// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

/// Scan-type spec block. Exactly one of the four provider `*_spec` blocks.
sealed class DataplexDatascanSpec {
  const DataplexDatascanSpec();

  String get blockKey;

  Map<String, Object?> encode();
}

/// `data_profile_spec` — column statistics for BigQuery tables or entities.
@immutable
final class DataplexDatascanDataProfileSpec extends DataplexDatascanSpec {
  const DataplexDatascanDataProfileSpec({
    this.samplingPercent,
    this.rowFilter,
    this.catalogPublishingEnabled,
    this.postScanActions,
    this.includeFields,
    this.excludeFields,
  });

  final TfArg<double>? samplingPercent;
  final TfArg<String>? rowFilter;
  final TfArg<bool>? catalogPublishingEnabled;
  final TfArg<Map<String, Object?>>? postScanActions;
  final TfArg<Map<String, Object?>>? includeFields;
  final TfArg<Map<String, Object?>>? excludeFields;

  @override
  String get blockKey => 'data_profile_spec';

  @override
  Map<String, Object?> encode() => {
    if (samplingPercent != null)
      'sampling_percent': samplingPercent!.toTfJson(),
    if (rowFilter != null) 'row_filter': rowFilter!.toTfJson(),
    if (catalogPublishingEnabled != null)
      'catalog_publishing_enabled': catalogPublishingEnabled!.toTfJson(),
    if (postScanActions != null)
      'post_scan_actions': postScanActions!.toTfJson(),
    if (includeFields != null) 'include_fields': includeFields!.toTfJson(),
    if (excludeFields != null) 'exclude_fields': excludeFields!.toTfJson(),
  };
}

/// `data_quality_spec` — rule-based quality checks.
@immutable
final class DataplexDatascanDataQualitySpec extends DataplexDatascanSpec {
  const DataplexDatascanDataQualitySpec({
    this.rules,
    this.samplingPercent,
    this.rowFilter,
    this.filter,
    this.catalogPublishingEnabled,
    this.enableCatalogBasedRules,
    this.postScanActions,
  });

  final TfArg<List<Map<String, Object?>>>? rules;
  final TfArg<double>? samplingPercent;
  final TfArg<String>? rowFilter;
  final TfArg<String>? filter;
  final TfArg<bool>? catalogPublishingEnabled;
  final TfArg<bool>? enableCatalogBasedRules;
  final TfArg<Map<String, Object?>>? postScanActions;

  @override
  String get blockKey => 'data_quality_spec';

  @override
  Map<String, Object?> encode() => {
    if (rules != null) 'rules': rules!.toTfJson(),
    if (samplingPercent != null)
      'sampling_percent': samplingPercent!.toTfJson(),
    if (rowFilter != null) 'row_filter': rowFilter!.toTfJson(),
    if (filter != null) 'filter': filter!.toTfJson(),
    if (catalogPublishingEnabled != null)
      'catalog_publishing_enabled': catalogPublishingEnabled!.toTfJson(),
    if (enableCatalogBasedRules != null)
      'enable_catalog_based_rules': enableCatalogBasedRules!.toTfJson(),
    if (postScanActions != null)
      'post_scan_actions': postScanActions!.toTfJson(),
  };
}

/// `data_discovery_spec` — infer schema from Cloud Storage objects.
@immutable
final class DataplexDatascanDataDiscoverySpec extends DataplexDatascanSpec {
  const DataplexDatascanDataDiscoverySpec({
    this.storageConfig,
    this.bigqueryPublishingConfig,
  });

  final TfArg<Map<String, Object?>>? storageConfig;
  final TfArg<Map<String, Object?>>? bigqueryPublishingConfig;

  @override
  String get blockKey => 'data_discovery_spec';

  @override
  Map<String, Object?> encode() => {
    if (storageConfig != null) 'storage_config': storageConfig!.toTfJson(),
    if (bigqueryPublishingConfig != null)
      'bigquery_publishing_config': bigqueryPublishingConfig!.toTfJson(),
  };
}

/// `data_documentation_spec` — generate data documentation.
@immutable
final class DataplexDatascanDataDocumentationSpec extends DataplexDatascanSpec {
  const DataplexDatascanDataDocumentationSpec();

  @override
  String get blockKey => 'data_documentation_spec';

  @override
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `data` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanData {
  const DataplexDatascanData({this.entity, this.resource});

  final TfArg<String>? entity;

  final TfArg<String>? resource;

  Map<String, Object?> encode() => {
    if (entity != null) 'entity': entity!.toTfJson(),
    if (resource != null) 'resource': resource!.toTfJson(),
  };
}

/// Typed helper for the `execution_identity` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanExecutionIdentity {
  const DataplexDatascanExecutionIdentity({
    this.dataplexServiceAgent,
    this.serviceAccount,
    this.userCredential,
  });

  final DataplexDatascanExecutionIdentityDataplexServiceAgent?
  dataplexServiceAgent;

  final DataplexDatascanExecutionIdentityServiceAccount? serviceAccount;

  final DataplexDatascanExecutionIdentityUserCredential? userCredential;

  Map<String, Object?> encode() => {
    if (dataplexServiceAgent != null)
      'dataplex_service_agent': dataplexServiceAgent!.encode(),
    if (serviceAccount != null) 'service_account': serviceAccount!.encode(),
    if (userCredential != null) 'user_credential': userCredential!.encode(),
  };
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

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
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
    if (field != null) 'field': field!.toTfJson(),
    'trigger': trigger.encode(),
  };
}

/// Typed helper for the `execution_spec.trigger` block of
/// `google_dataplex_datascan` (derived from provider schema).
@immutable
final class DataplexDatascanExecutionSpecTrigger {
  const DataplexDatascanExecutionSpecTrigger({
    this.onDemand,
    this.oneTime,
    this.schedule,
  });

  final DataplexDatascanExecutionSpecTriggerOnDemand? onDemand;

  final DataplexDatascanExecutionSpecTriggerOneTime? oneTime;

  final DataplexDatascanExecutionSpecTriggerSchedule? schedule;

  Map<String, Object?> encode() => {
    if (onDemand != null) 'on_demand': onDemand!.encode(),
    if (oneTime != null) 'one_time': oneTime!.encode(),
    if (schedule != null) 'schedule': schedule!.encode(),
  };
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
    if (ttlAfterScanCompletion != null)
      'ttl_after_scan_completion': ttlAfterScanCompletion!.toTfJson(),
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
/// Choose exactly one [DataplexDatascanSpec] variant via [scanSpec]. Provide
/// [data] (entity or resource) and [executionSpec] (trigger) as literal maps
/// matching the provider nested blocks.
final class GoogleDataplexDatascan extends Resource {
  static const String tfType = 'google_dataplex_datascan';

  GoogleDataplexDatascan({
    required super.localName,
    required TfArg<String> dataScanId,
    required TfArg<String> location,
    required DataplexDatascanSpec scanSpec,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_scan_id': dataScanId,
           'location': location,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           'data': TfArg.literal(data.encode()),
           'execution_spec': TfArg.literal(executionSpec.encode()),
           if (executionIdentity != null)
             'execution_identity': TfArg.literal(executionIdentity.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           scanSpec.blockKey: TfArg.literal(scanSpec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexDatascanSensitive;

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

  /// Reference to `data_scan_id` for IAM bindings and cross-stack refs.
  TfRef<String> get dataScanIdRef =>
      TfRef.attribute<String>(this, 'data_scan_id');
}
