// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_engine_versions`.
const Set<String> _googleContainerEngineVersionsSensitive = <String>{};

/// Factory wrapper for `google_container_engine_versions`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleContainerEngineVersions extends Data {
  static const String tfType = 'google_container_engine_versions';

  DataGoogleContainerEngineVersions({
    required super.localName,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<String>? versionPrefix,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (versionPrefix != null) 'version_prefix': versionPrefix,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerEngineVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_cluster_version` attribute.
  TfRef<String> get defaultClusterVersion =>
      TfRef.attribute<String>(this, 'default_cluster_version');

  /// Reference to `latest_master_version` attribute.
  TfRef<String> get latestMasterVersion =>
      TfRef.attribute<String>(this, 'latest_master_version');

  /// Reference to `latest_node_version` attribute.
  TfRef<String> get latestNodeVersion =>
      TfRef.attribute<String>(this, 'latest_node_version');

  /// Reference to `release_channel_default_version` attribute.
  TfRef<Map<String, String>> get releaseChannelDefaultVersion =>
      TfRef.attribute<Map<String, String>>(
        this,
        'release_channel_default_version',
      );

  /// Reference to `release_channel_latest_version` attribute.
  TfRef<Map<String, String>> get releaseChannelLatestVersion =>
      TfRef.attribute<Map<String, String>>(
        this,
        'release_channel_latest_version',
      );

  /// Reference to `release_channel_upgrade_target_version` attribute.
  TfRef<Map<String, String>> get releaseChannelUpgradeTargetVersion =>
      TfRef.attribute<Map<String, String>>(
        this,
        'release_channel_upgrade_target_version',
      );

  /// Reference to `valid_master_versions` attribute.
  TfRef<List<String>> get validMasterVersions =>
      TfRef.attribute<List<String>>(this, 'valid_master_versions');

  /// Reference to `valid_node_versions` attribute.
  TfRef<List<String>> get validNodeVersions =>
      TfRef.attribute<List<String>>(this, 'valid_node_versions');
}
