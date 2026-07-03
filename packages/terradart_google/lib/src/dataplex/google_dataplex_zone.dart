// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_zone`.
const Set<String> _googleDataplexZoneSensitive = <String>{};

/// `type` on `google_dataplex_zone`.
enum DataplexZoneType implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  raw('RAW'),
  curated('CURATED');

  const DataplexZoneType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `discovery_spec` block of
/// `google_dataplex_zone` (derived from provider schema).
@immutable
final class DataplexZoneDiscoverySpec {
  const DataplexZoneDiscoverySpec({
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

  final DataplexZoneDiscoverySpecCsvOptions? csvOptions;

  final DataplexZoneDiscoverySpecJsonOptions? jsonOptions;

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
/// `google_dataplex_zone` (derived from provider schema).
@immutable
final class DataplexZoneDiscoverySpecCsvOptions {
  const DataplexZoneDiscoverySpecCsvOptions({
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
/// `google_dataplex_zone` (derived from provider schema).
@immutable
final class DataplexZoneDiscoverySpecJsonOptions {
  const DataplexZoneDiscoverySpecJsonOptions({
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
/// `google_dataplex_zone` (derived from provider schema).
@immutable
final class DataplexZoneResourceSpec {
  const DataplexZoneResourceSpec({required this.locationType});

  final TfArg<DataplexZoneResourceSpecLocationType> locationType;

  Map<String, Object?> encode() => {'location_type': locationType.toTfJson()};
}

/// `location_type` — derived from the provider schema description.
enum DataplexZoneResourceSpecLocationType implements TerraformEnum {
  locationTypeUnspecified('LOCATION_TYPE_UNSPECIFIED'),
  singleRegion('SINGLE_REGION'),
  multiRegion('MULTI_REGION');

  const DataplexZoneResourceSpecLocationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_dataplex_zone`.
///
/// A zone within a [GoogleDataplexLake] — a logical partition for curated or
/// raw data assets. Requires [discoverySpec] and [resourceSpec] blocks.
final class GoogleDataplexZone extends Resource {
  static const String tfType = 'google_dataplex_zone';

  GoogleDataplexZone({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> lake,
    required TfArg<String> location,
    required TfArg<DataplexZoneType> type,
    TfArg<String>? displayName,
    TfArg<String>? description,
    required DataplexZoneDiscoverySpec discoverySpec,
    required DataplexZoneResourceSpec resourceSpec,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'lake': lake,
           'location': location,
           'type': type,
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
  Set<String> get sensitiveFields => _googleDataplexZoneSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `asset_status` attribute.
  TfRef<List<Map<String, Object?>>> get assetStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'asset_status');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute (zone id within the lake).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
