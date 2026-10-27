// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_kubernetes_service_versions`.
const Set<String> _azurermKubernetesServiceVersionsSensitive = <String>{};

/// Factory wrapper for `azurerm_kubernetes_service_versions`.
final class DataAzurermKubernetesServiceVersions extends Data {
  static const String tfType = 'azurerm_kubernetes_service_versions';

  DataAzurermKubernetesServiceVersions(
    super.localName, {
    TfArg<bool>? includePreview,
    required TfArg<String> location,
    TfArg<String>? versionPrefix,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'include_preview': ?includePreview,
           'location': location,
           'version_prefix': ?versionPrefix,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKubernetesServiceVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_version` attribute.
  TfRef<String> get defaultVersion =>
      TfRef.attribute<String>(this, 'default_version');

  /// Reference to `latest_version` attribute.
  TfRef<String> get latestVersion =>
      TfRef.attribute<String>(this, 'latest_version');

  /// Reference to `versions` attribute.
  TfRef<List<String>> get versions =>
      TfRef.attribute<List<String>>(this, 'versions');

  /// Reference to `include_preview` attribute.
  TfRef<bool> get includePreview =>
      TfRef.attribute<bool>(this, 'include_preview');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `version_prefix` attribute.
  TfRef<String> get versionPrefix =>
      TfRef.attribute<String>(this, 'version_prefix');
}
