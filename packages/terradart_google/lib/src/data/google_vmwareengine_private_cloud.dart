// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_private_cloud`.
const Set<String> _googleVmwareenginePrivateCloudSensitive = <String>{};

/// Factory wrapper for `google_vmwareengine_private_cloud`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVmwareenginePrivateCloud extends Data {
  static const String tfType = 'google_vmwareengine_private_cloud';

  DataGoogleVmwareenginePrivateCloud({
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
  Set<String> get sensitiveFields => _googleVmwareenginePrivateCloudSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `deletion_delay_hours` attribute.
  TfRef<num> get deletionDelayHours =>
      TfRef.attribute<num>(this, 'deletion_delay_hours');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `hcx` attribute.
  TfRef<List<Map<String, Object?>>> get hcx =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'hcx');

  /// Reference to `management_cluster` attribute.
  TfRef<List<Map<String, Object?>>> get managementCluster =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'management_cluster');

  /// Reference to `network_config` attribute.
  TfRef<List<Map<String, Object?>>> get networkConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_config');

  /// Reference to `nsx` attribute.
  TfRef<List<Map<String, Object?>>> get nsx =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'nsx');

  /// Reference to `send_deletion_delay_hours_if_zero` attribute.
  TfRef<bool> get sendDeletionDelayHoursIfZero =>
      TfRef.attribute<bool>(this, 'send_deletion_delay_hours_if_zero');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `vcenter` attribute.
  TfRef<List<Map<String, Object?>>> get vcenter =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vcenter');
}
