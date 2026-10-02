// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_lake.dart' show GoogleDataplexLake;
import '../dataplex/google_dataplex_zone.dart' show GoogleDataplexZone;

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

  final TfArg<List<String>>? excludePatterns;

  final TfArg<List<String>>? includePatterns;

  final TfArg<String>? schedule;

  final DataplexAssetCsvOptions? csvOptions;

  final DataplexAssetJsonOptions? jsonOptions;

  @internal
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
/// `google_dataplex_asset` (derived from provider schema).
@immutable
final class DataplexAssetCsvOptions {
  const DataplexAssetCsvOptions({
    this.delimiter,
    this.disableTypeInference,
    this.encoding,
    this.headerRows,
  });

  final TfArg<String>? delimiter;

  final TfArg<bool>? disableTypeInference;

  final TfArg<String>? encoding;

  final TfArg<num>? headerRows;

  @internal
  Map<String, Object?> encode() => {
    'delimiter': ?delimiter?.toTfJson(),
    'disable_type_inference': ?disableTypeInference?.toTfJson(),
    'encoding': ?encoding?.toTfJson(),
    'header_rows': ?headerRows?.toTfJson(),
  };
}

/// Typed helper for the `discovery_spec.json_options` block of
/// `google_dataplex_asset` (derived from provider schema).
@immutable
final class DataplexAssetJsonOptions {
  const DataplexAssetJsonOptions({this.disableTypeInference, this.encoding});

  final TfArg<bool>? disableTypeInference;

  final TfArg<String>? encoding;

  @internal
  Map<String, Object?> encode() => {
    'disable_type_inference': ?disableTypeInference?.toTfJson(),
    'encoding': ?encoding?.toTfJson(),
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

  final DataplexAssetReadAccessMode? readAccessMode;

  final DataplexAssetType type;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'read_access_mode': ?readAccessMode?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `read_access_mode` — derived from the provider schema description.
extension type const DataplexAssetReadAccessMode._(TfArg<String> _)
    implements TfArg<String> {
  DataplexAssetReadAccessMode.variable(String name)
    : this._(TfArg.variable(name));
  DataplexAssetReadAccessMode.expression(String template)
    : this._(TfArg.expression(template));
  const DataplexAssetReadAccessMode.arg(TfArg<String> arg) : this._(arg);

  static const direct = DataplexAssetReadAccessMode._(TfArgLiteral('DIRECT'));
  static const managed = DataplexAssetReadAccessMode._(TfArgLiteral('MANAGED'));

  static const List<DataplexAssetReadAccessMode> values = [direct, managed];
}

/// `type` — derived from the provider schema description.
extension type const DataplexAssetType._(TfArg<String> _)
    implements TfArg<String> {
  DataplexAssetType.variable(String name) : this._(TfArg.variable(name));
  DataplexAssetType.expression(String template)
    : this._(TfArg.expression(template));
  const DataplexAssetType.arg(TfArg<String> arg) : this._(arg);

  static const storageBucket = DataplexAssetType._(
    TfArgLiteral('STORAGE_BUCKET'),
  );
  static const bigqueryDataset = DataplexAssetType._(
    TfArgLiteral('BIGQUERY_DATASET'),
  );

  static const List<DataplexAssetType> values = [
    storageBucket,
    bigqueryDataset,
  ];
}

/// Factory wrapper for `google_dataplex_asset`.
final class GoogleDataplexAsset extends Resource {
  static const String tfType = 'google_dataplex_asset';

  GoogleDataplexAsset(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleDataplexZone> dataplexZone,
    required RefTo<GoogleDataplexLake> lake,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'dataplex_zone': dataplexZone.encodeAs('name'),
           'lake': lake.encodeAs('name'),
           'location': location,
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
  Set<String> get sensitiveFields => _googleDataplexAssetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexAsset>`.
  RefTo<GoogleDataplexAsset> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `dataplex_zone` attribute.
  TfRef<String> get dataplexZone =>
      TfRef.attribute<String>(this, 'dataplex_zone');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `lake` attribute.
  TfRef<String> get lake => TfRef.attribute<String>(this, 'lake');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
