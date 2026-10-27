// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../traffic/azurerm_traffic_manager_profile.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_traffic_manager_profile`.
const Set<String> _azurermTrafficManagerProfileSensitive = <String>{};

/// Factory wrapper for `azurerm_traffic_manager_profile`.
final class DataAzurermTrafficManagerProfile extends Data {
  static const String tfType = 'azurerm_traffic_manager_profile';

  DataAzurermTrafficManagerProfile(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? trafficViewEnabled,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'traffic_view_enabled': ?trafficViewEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermTrafficManagerProfileSensitive;

  /// A reference to the `azurerm_traffic_manager_profile` this data source reads, for
  /// arguments typed `RefTo<AzurermTrafficManagerProfile>`.
  RefTo<AzurermTrafficManagerProfile> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_config` attribute.
  TfRef<List<Map<String, Object?>>> get dnsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_config');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `maximum_return` attribute.
  TfRef<num> get maximumReturn => TfRef.attribute<num>(this, 'maximum_return');

  /// Reference to `monitor_config` attribute.
  TfRef<List<Map<String, Object?>>> get monitorConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'monitor_config');

  /// Reference to `profile_status` attribute.
  TfRef<String> get profileStatus =>
      TfRef.attribute<String>(this, 'profile_status');

  /// Reference to `traffic_routing_method` attribute.
  TfRef<String> get trafficRoutingMethod =>
      TfRef.attribute<String>(this, 'traffic_routing_method');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `traffic_view_enabled` attribute.
  TfRef<bool> get trafficViewEnabled =>
      TfRef.attribute<bool>(this, 'traffic_view_enabled');
}
