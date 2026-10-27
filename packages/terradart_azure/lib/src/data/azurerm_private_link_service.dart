// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_private_link_service.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_private_link_service`.
const Set<String> _azurermPrivateLinkServiceSensitive = <String>{};

/// Factory wrapper for `azurerm_private_link_service`.
final class DataAzurermPrivateLinkService extends Data {
  static const String tfType = 'azurerm_private_link_service';

  DataAzurermPrivateLinkService(
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
  Set<String> get sensitiveFields => _azurermPrivateLinkServiceSensitive;

  /// A reference to the `azurerm_private_link_service` this data source reads, for
  /// arguments typed `RefTo<AzurermPrivateLinkService>`.
  RefTo<AzurermPrivateLinkService> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `auto_approval_subscription_ids` attribute.
  TfRef<List<String>> get autoApprovalSubscriptionIds =>
      TfRef.attribute<List<String>>(this, 'auto_approval_subscription_ids');

  /// Reference to `destination_ip_address` attribute.
  TfRef<String> get destinationIpAddress =>
      TfRef.attribute<String>(this, 'destination_ip_address');

  /// Reference to `fqdns` attribute.
  TfRef<List<String>> get fqdns => TfRef.attribute<List<String>>(this, 'fqdns');

  /// Reference to `load_balancer_frontend_ip_configuration_ids` attribute.
  TfRef<List<String>> get loadBalancerFrontendIpConfigurationIds =>
      TfRef.attribute<List<String>>(
        this,
        'load_balancer_frontend_ip_configuration_ids',
      );

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `nat_ip_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get natIpConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'nat_ip_configuration');

  /// Reference to `proxy_protocol_enabled` attribute.
  TfRef<bool> get proxyProtocolEnabled =>
      TfRef.attribute<bool>(this, 'proxy_protocol_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `visibility_subscription_ids` attribute.
  TfRef<List<String>> get visibilitySubscriptionIds =>
      TfRef.attribute<List<String>>(this, 'visibility_subscription_ids');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
