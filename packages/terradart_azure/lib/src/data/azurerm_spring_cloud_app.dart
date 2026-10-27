// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../spring_cloud/azurerm_spring_cloud_app.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_spring_cloud_app`.
const Set<String> _azurermSpringCloudAppSensitive = <String>{};

/// Factory wrapper for `azurerm_spring_cloud_app`.
final class DataAzurermSpringCloudApp extends Data {
  static const String tfType = 'azurerm_spring_cloud_app';

  DataAzurermSpringCloudApp(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> serviceName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_name': serviceName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudAppSensitive;

  /// A reference to the `azurerm_spring_cloud_app` this data source reads, for
  /// arguments typed `RefTo<AzurermSpringCloudApp>`.
  RefTo<AzurermSpringCloudApp> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `https_only` attribute.
  TfRef<bool> get httpsOnly => TfRef.attribute<bool>(this, 'https_only');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `is_public` attribute.
  TfRef<bool> get isPublic => TfRef.attribute<bool>(this, 'is_public');

  /// Reference to `persistent_disk` attribute.
  TfRef<List<Map<String, Object?>>> get persistentDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'persistent_disk');

  /// Reference to `tls_enabled` attribute.
  TfRef<bool> get tlsEnabled => TfRef.attribute<bool>(this, 'tls_enabled');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');
}
