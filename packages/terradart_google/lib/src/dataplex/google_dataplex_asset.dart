// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_asset`.
const Set<String> _googleDataplexAssetSensitive = <String>{};

/// Typed helper for the `discovery_spec` block of
/// `google_dataplex_asset` (derived from provider schema).
@immutable
final class DataplexAssetDiscoverySpec {
  const DataplexAssetDiscoverySpec({
    required this.enabled,
    this.excludePatterns,
    this.includePatterns,
    this.schedule,
    this.csvOptions,
    this.jsonOptions,
  });

  final TfArg<bool> enabled;

  final TfArg<List<Object?>>? excludePatterns;

  final TfArg<List<Object?>>? includePatterns;

  final TfArg<String>? schedule;

  final DataplexAssetDiscoverySpecCsvOptions? csvOptions;

  final DataplexAssetDiscoverySpecJsonOptions? jsonOptions;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (excludePatterns != null)
      'exclude_patterns': excludePatterns!.toTfJson(),
    if (includePatterns != null)
      'include_patterns': includePatterns!.toTfJson(),
    if (schedule != null) 'schedule': schedule!.toTfJson(),
    if (csvOptions != null) 'csv_options': csvOptions!.encode(),
    if (jsonOptions != null) 'json_options': jsonOptions!.encode(),
  };
}

/// Typed helper for the `discovery_spec.csv_options` block of
/// `google_dataplex_asset` (derived from provider schema).
@immutable
final class DataplexAssetDiscoverySpecCsvOptions {
  const DataplexAssetDiscoverySpecCsvOptions({
    this.delimiter,
    this.disableTypeInference,
    this.encoding,
    this.headerRows,
  });

  final TfArg<String>? delimiter;

  final TfArg<bool>? disableTypeInference;

  final TfArg<String>? encoding;

  final TfArg<num>? headerRows;

  Map<String, Object?> encode() => {
    if (delimiter != null) 'delimiter': delimiter!.toTfJson(),
    if (disableTypeInference != null)
      'disable_type_inference': disableTypeInference!.toTfJson(),
    if (encoding != null) 'encoding': encoding!.toTfJson(),
    if (headerRows != null) 'header_rows': headerRows!.toTfJson(),
  };
}

/// Typed helper for the `discovery_spec.json_options` block of
/// `google_dataplex_asset` (derived from provider schema).
@immutable
final class DataplexAssetDiscoverySpecJsonOptions {
  const DataplexAssetDiscoverySpecJsonOptions({
    this.disableTypeInference,
    this.encoding,
  });

  final TfArg<bool>? disableTypeInference;

  final TfArg<String>? encoding;

  Map<String, Object?> encode() => {
    if (disableTypeInference != null)
      'disable_type_inference': disableTypeInference!.toTfJson(),
    if (encoding != null) 'encoding': encoding!.toTfJson(),
  };
}

/// Typed helper for the `resource_spec` block of
/// `google_dataplex_asset` (derived from provider schema).
@immutable
final class DataplexAssetResourceSpec {
  const DataplexAssetResourceSpec({
    this.name,
    this.readAccessMode,
    required this.type,
  });

  final TfArg<String>? name;

  final TfArg<DataplexAssetResourceSpecReadAccessMode>? readAccessMode;

  final TfArg<DataplexAssetResourceSpecType> type;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (readAccessMode != null) 'read_access_mode': readAccessMode!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `read_access_mode` — derived from the provider schema description.
enum DataplexAssetResourceSpecReadAccessMode implements TerraformEnum {
  direct('DIRECT'),
  managed('MANAGED');

  const DataplexAssetResourceSpecReadAccessMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum DataplexAssetResourceSpecType implements TerraformEnum {
  storageBucket('STORAGE_BUCKET'),
  bigqueryDataset('BIGQUERY_DATASET');

  const DataplexAssetResourceSpecType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_dataplex_asset`.
final class GoogleDataplexAsset extends Resource {
  static const String tfType = 'google_dataplex_asset';

  GoogleDataplexAsset({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> dataplexZone,
    required TfArg<String> lake,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<String>? description,
    required DataplexAssetDiscoverySpec discoverySpec,
    required DataplexAssetResourceSpec resourceSpec,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'dataplex_zone': dataplexZone,
           'lake': lake,
           'location': location,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           'discovery_spec': TfArg.literal(discoverySpec.encode()),
           'resource_spec': TfArg.literal(resourceSpec.encode()),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexAssetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `discovery_status` attribute.
  TfRef<List<Map<String, Object?>>> get discoveryStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'discovery_status');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `resource_status` attribute.
  TfRef<List<Map<String, Object?>>> get resourceStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_status');

  /// Reference to `security_status` attribute.
  TfRef<List<Map<String, Object?>>> get securityStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'security_status');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute (asset id within the zone).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
