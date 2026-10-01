// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_attached_install_manifest`.
const Set<String> _googleContainerAttachedInstallManifestSensitive = <String>{};

/// Factory wrapper for `google_container_attached_install_manifest`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleContainerAttachedInstallManifest extends Data {
  static const String tfType = 'google_container_attached_install_manifest';

  DataGoogleContainerAttachedInstallManifest(
    super.localName, {
    required TfArg<String> clusterId,
    required TfArg<String> location,
    required TfArg<String> platformVersion,
    required TfArg<String> project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           'location': location,
           'platform_version': platformVersion,
           'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContainerAttachedInstallManifestSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `manifest` attribute.
  TfRef<String> get manifest => TfRef.attribute<String>(this, 'manifest');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `platform_version` attribute.
  TfRef<String> get platformVersion =>
      TfRef.attribute<String>(this, 'platform_version');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
