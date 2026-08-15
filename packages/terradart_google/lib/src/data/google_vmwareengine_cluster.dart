// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_cluster`.
const Set<String> _googleVmwareengineClusterSensitive = <String>{};

/// Factory wrapper for `google_vmwareengine_cluster`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVmwareengineCluster extends Data {
  static const String tfType = 'google_vmwareengine_cluster';

  DataGoogleVmwareengineCluster({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parent,
  }) : super(terraformType: tfType, argMap: {'name': name, 'parent': parent});

  @override
  Set<String> get sensitiveFields => _googleVmwareengineClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `autoscaling_settings` attribute.
  TfRef<List<Map<String, Object?>>> get autoscalingSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'autoscaling_settings');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `datastore_mount_config` attribute.
  TfRef<List<Map<String, Object?>>> get datastoreMountConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'datastore_mount_config',
      );

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `management` attribute.
  TfRef<bool> get management => TfRef.attribute<bool>(this, 'management');

  /// Reference to `node_type_configs` attribute.
  TfRef<List<Map<String, Object?>>> get nodeTypeConfigs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'node_type_configs');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
