// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_asset`.
const Set<String> _googleDataplexAssetSensitive = <String>{};

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
           'dataplex_zone': dataplexZone,
           'lake': lake,
           'location': location,
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
