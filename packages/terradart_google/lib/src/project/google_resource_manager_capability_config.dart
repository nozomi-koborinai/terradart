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
}
