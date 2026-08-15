// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_feature`.
const Set<String> _googleGkeHubFeatureSensitive = <String>{};

/// Factory wrapper for `google_gke_hub_feature`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleGkeHubFeature extends Data {
  static const String tfType = 'google_gke_hub_feature';

  DataGoogleGkeHubFeature({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubFeatureSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `fleet_default_member_config` attribute.
  TfRef<List<Map<String, Object?>>> get fleetDefaultMemberConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'fleet_default_member_config',
      );

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `resource_state` attribute.
  TfRef<List<Map<String, Object?>>> get resourceState =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_state');

  /// Reference to `spec` attribute.
  TfRef<List<Map<String, Object?>>> get spec =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'spec');

  /// Reference to `state` attribute.
  TfRef<List<Map<String, Object?>>> get state =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
