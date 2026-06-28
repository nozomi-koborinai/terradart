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
    required TfArg<Map<String, dynamic>> data,
    required TfArg<Map<String, dynamic>> executionSpec,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, dynamic>>? executionIdentity,
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
           'data': data,
           'execution_spec': executionSpec,
           if (executionIdentity != null)
             'execution_identity': executionIdentity,
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
