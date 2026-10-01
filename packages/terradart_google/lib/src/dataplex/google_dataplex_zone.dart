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

  final TfArg<List<String>>? excludePatterns;

  final TfArg<List<String>>? includePatterns;

  final TfArg<String>? schedule;

  final DataplexZoneCsvOptions? csvOptions;

  final DataplexZoneJsonOptions? jsonOptions;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'exclude_patterns': ?excludePatterns?.toTfJson(),
    'include_patterns': ?includePatterns?.toTfJson(),
    'schedule': ?schedule?.toTfJson(),
    'csv_options': ?csvOptions?.encode(),
    'json_options': ?jsonOptions?.encode(),
  };
}

/// Typed helper for the `discovery_spec.csv_options` block of
/// `google_dataplex_zone` (derived from provider schema).
@immutable
final class DataplexZoneCsvOptions {
  const DataplexZoneCsvOptions({
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
    'delimiter': ?delimiter?.toTfJson(),
    'disable_type_inference': ?disableTypeInference?.toTfJson(),
    'encoding': ?encoding?.toTfJson(),
    'header_rows': ?headerRows?.toTfJson(),
  };
}

/// Typed helper for the `discovery_spec.json_options` block of
/// `google_dataplex_zone` (derived from provider schema).
@immutable
final class DataplexZoneJsonOptions {
  const DataplexZoneJsonOptions({this.disableTypeInference, this.encoding});

  final TfArg<bool>? disableTypeInference;

  final TfArg<String>? encoding;

  Map<String, Object?> encode() => {
    'disable_type_inference': ?disableTypeInference?.toTfJson(),
    'encoding': ?encoding?.toTfJson(),
  };
}

/// Typed helper for the `resource_spec` block of
/// `google_dataplex_zone` (derived from provider schema).
@immutable
final class DataplexZoneResourceSpec {
  const DataplexZoneResourceSpec({required this.locationType});

  final TfArg<DataplexZoneLocationType> locationType;

  Map<String, Object?> encode() => {'location_type': locationType.toTfJson()};
}

/// `location_type` — derived from the provider schema description.
enum DataplexZoneLocationType implements TerraformEnum {
  locationTypeUnspecified('LOCATION_TYPE_UNSPECIFIED'),
  singleRegion('SINGLE_REGION'),
  multiRegion('MULTI_REGION');

  const DataplexZoneLocationType(this.terraformValue);
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'lake': lake,
           'location': location,
           'type': type,
           'display_name': ?displayName,
           'description': ?description,
           'discovery_spec': TfArg.literal(discoverySpec.encode()),
           'resource_spec': TfArg.literal(resourceSpec.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexZoneSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexZone>`.
  RefTo<GoogleDataplexZone> get ref => RefTo.of(this);

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

  /// Reference to `lake` attribute.
  TfRef<String> get lakeRef => TfRef.attribute<String>(this, 'lake');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');

  /// Reference to `name` attribute (zone id within the lake).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
