// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../spring_cloud/azurerm_spring_cloud_service.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_spring_cloud_service`.
const Set<String> _azurermSpringCloudServiceSensitive = <String>{};

/// Factory wrapper for `azurerm_spring_cloud_service`.
final class DataAzurermSpringCloudService extends Data {
  static const String tfType = 'azurerm_spring_cloud_service';

  DataAzurermSpringCloudService(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudServiceSensitive;

  /// A reference to the `azurerm_spring_cloud_service` this data source reads, for
  /// arguments typed `RefTo<AzurermSpringCloudService>`.
  RefTo<AzurermSpringCloudService> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `config_server_git_setting` attribute.
  TfRef<List<Map<String, Object?>>> get configServerGitSetting =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'config_server_git_setting',
      );

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `outbound_public_ip_addresses` attribute.
  TfRef<List<String>> get outboundPublicIpAddresses =>
      TfRef.attribute<List<String>>(this, 'outbound_public_ip_addresses');

  /// Reference to `required_network_traffic_rules` attribute.
  TfRef<List<Map<String, Object?>>> get requiredNetworkTrafficRules =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'required_network_traffic_rules',
      );

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
