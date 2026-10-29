// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_resource_manager_capability_config`.
const Set<String> _googleResourceManagerCapabilityConfigSensitive = <String>{};

/// Factory wrapper for `google_resource_manager_capability_config`.
///
/// Capability configs define the enabled capabilities and their scope of
/// enforcement for folders, organizations, or projects within the resource
/// hierarchy.
final class GoogleResourceManagerCapabilityConfig extends Resource {
  static const String tfType = 'google_resource_manager_capability_config';

  GoogleResourceManagerCapabilityConfig(
    super.localName, {
    required TfArg<String> capabilityConfigId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<String>? managementProject,
    required TfArg<String> parent,
    required TfArg<List<String>> types,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capability_config_id': capabilityConfigId,
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'management_project': ?managementProject,
           'parent': parent,
           'types': types,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleResourceManagerCapabilityConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleResourceManagerCapabilityConfig>`.
  RefTo<GoogleResourceManagerCapabilityConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `capability_config_id` attribute.
  TfRef<String> get capabilityConfigId =>
      TfRef.attribute<String>(this, 'capability_config_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `management_project` attribute.
  TfRef<String> get managementProject =>
      TfRef.attribute<String>(this, 'management_project');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `types` attribute.
  TfRef<List<String>> get types => TfRef.attribute<List<String>>(this, 'types');
}
