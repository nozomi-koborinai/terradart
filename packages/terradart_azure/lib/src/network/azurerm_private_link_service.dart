// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_private_link_service`.
const Set<String> _azurermPrivateLinkServiceSensitive = <String>{};

/// Exactly one of `destination_ip_address`, `load_balancer_frontend_ip_configuration_ids` on `azurerm_private_link_service`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.destinationIpAddress(...)`.
sealed class PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIds {
  const PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIds();

  /// Sets `destination_ip_address`.
  const factory PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIds.destinationIpAddress(
    TfArg<String> destinationIpAddress,
  ) = PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIdsDestinationIpAddress;

  /// Sets `load_balancer_frontend_ip_configuration_ids`.
  const factory PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIds.loadBalancerFrontendIpConfigurationIds(
    TfArg<List<String>> loadBalancerFrontendIpConfigurationIds,
  ) = PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIdsChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIds.destinationIpAddress] choice: sets `destination_ip_address`.
final class PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIdsDestinationIpAddress
    extends
        PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIds {
  const PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIdsDestinationIpAddress(
    this.destinationIpAddress,
  );

  final TfArg<String> destinationIpAddress;

  @internal
  @override
  String get blockKey => 'destination_ip_address';

  @internal
  @override
  Map<String, Object?> encode() => {
    'destination_ip_address': destinationIpAddress.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'destination_ip_address': destinationIpAddress,
  };
}

/// The [PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIds.loadBalancerFrontendIpConfigurationIds] choice: sets `load_balancer_frontend_ip_configuration_ids`.
final class PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIdsChoice
    extends
        PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIds {
  const PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIdsChoice(
    this.loadBalancerFrontendIpConfigurationIds,
  );

  final TfArg<List<String>> loadBalancerFrontendIpConfigurationIds;

  @internal
  @override
  String get blockKey => 'load_balancer_frontend_ip_configuration_ids';

  @internal
  @override
  Map<String, Object?> encode() => {
    'load_balancer_frontend_ip_configuration_ids':
        loadBalancerFrontendIpConfigurationIds.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'load_balancer_frontend_ip_configuration_ids':
        loadBalancerFrontendIpConfigurationIds,
  };
}

/// Typed helper for the `nat_ip_configuration` block of
/// `azurerm_private_link_service` (derived from provider schema).
@immutable
final class PrivateLinkServiceNatIpConfiguration {
  const PrivateLinkServiceNatIpConfiguration({
    required this.name,
    required this.primary,
    this.privateIpAddress,
    this.privateIpAddressVersion,
    required this.subnetId,
  });

  final TfArg<String> name;

  final TfArg<bool> primary;

  final TfArg<String>? privateIpAddress;

  final TfArg<String>? privateIpAddressVersion;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'primary': primary.toTfJson(),
    'private_ip_address': ?privateIpAddress?.toTfJson(),
    'private_ip_address_version': ?privateIpAddressVersion?.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_private_link_service`.
final class AzurermPrivateLinkService extends Resource {
  static const String tfType = 'azurerm_private_link_service';

  AzurermPrivateLinkService(
    super.localName, {
    TfArg<List<String>>? autoApprovalSubscriptionIds,
    required PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIds
    destinationIpAddressOrLoadBalancerFrontendIpConfigurationIds,
    TfArg<List<String>>? fqdns,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? proxyProtocolEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? visibilitySubscriptionIds,
    required List<PrivateLinkServiceNatIpConfiguration> natIpConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_approval_subscription_ids': ?autoApprovalSubscriptionIds,
           ...destinationIpAddressOrLoadBalancerFrontendIpConfigurationIds
               .argMap,
           'fqdns': ?fqdns,
           'location': location,
           'name': name,
           'proxy_protocol_enabled': ?proxyProtocolEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'visibility_subscription_ids': ?visibilitySubscriptionIds,
           'nat_ip_configuration': TfArg.literal([
             for (final e in natIpConfiguration) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPrivateLinkServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPrivateLinkService>`.
  RefTo<AzurermPrivateLinkService> get ref => RefTo.of(this);

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

  /// Reference to `proxy_protocol_enabled` attribute.
  TfRef<bool> get proxyProtocolEnabled =>
      TfRef.attribute<bool>(this, 'proxy_protocol_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `visibility_subscription_ids` attribute.
  TfRef<List<String>> get visibilitySubscriptionIds =>
      TfRef.attribute<List<String>>(this, 'visibility_subscription_ids');
}
