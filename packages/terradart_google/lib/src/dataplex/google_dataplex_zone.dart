// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
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
    required TfArg<Map<String, dynamic>> discoverySpec,
    required TfArg<Map<String, dynamic>> resourceSpec,
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
           'discovery_spec': discoverySpec,
           'resource_spec': resourceSpec,
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
