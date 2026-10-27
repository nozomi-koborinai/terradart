// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../network/azurerm_virtual_network.dart' show AzurermVirtualNetwork;

/// Sensitive field paths for `azurerm_lb_backend_address_pool_address`.
const Set<String> _azurermLbBackendAddressPoolAddressSensitive = <String>{};

/// At most one of `backend_address_ip_configuration_id`, `virtual_network_id` on `azurerm_lb_backend_address_pool_address`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.backendAddressIpConfigurationId(...)`.
sealed class LbBackendAddressPoolAddressAttachment {
  const LbBackendAddressPoolAddressAttachment();

  /// Sets `backend_address_ip_configuration_id`.
  const factory LbBackendAddressPoolAddressAttachment.backendAddressIpConfigurationId(
    TfArg<String> backendAddressIpConfigurationId,
  ) = LbBackendAddressPoolAddressAttachmentBackendAddressIpConfigurationId;

  /// Sets `virtual_network_id`.
  const factory LbBackendAddressPoolAddressAttachment.virtualNetworkId(
    RefTo<AzurermVirtualNetwork> virtualNetworkId,
  ) = LbBackendAddressPoolAddressAttachmentVirtualNetworkId;

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

/// The [LbBackendAddressPoolAddressAttachment.backendAddressIpConfigurationId] choice: sets `backend_address_ip_configuration_id`.
final class LbBackendAddressPoolAddressAttachmentBackendAddressIpConfigurationId
    extends LbBackendAddressPoolAddressAttachment {
  const LbBackendAddressPoolAddressAttachmentBackendAddressIpConfigurationId(
    this.backendAddressIpConfigurationId,
  );

  final TfArg<String> backendAddressIpConfigurationId;

  @internal
  @override
  String get blockKey => 'backend_address_ip_configuration_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'backend_address_ip_configuration_id': backendAddressIpConfigurationId
        .toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'backend_address_ip_configuration_id': backendAddressIpConfigurationId,
  };
}

/// The [LbBackendAddressPoolAddressAttachment.virtualNetworkId] choice: sets `virtual_network_id`.
final class LbBackendAddressPoolAddressAttachmentVirtualNetworkId
    extends LbBackendAddressPoolAddressAttachment {
  const LbBackendAddressPoolAddressAttachmentVirtualNetworkId(
    this.virtualNetworkId,
  );

  final RefTo<AzurermVirtualNetwork> virtualNetworkId;

  @internal
  @override
  String get blockKey => 'virtual_network_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'virtual_network_id': virtualNetworkId.encodeAs('id').toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'virtual_network_id': virtualNetworkId.encodeAs('id'),
  };
}

/// Factory wrapper for `azurerm_lb_backend_address_pool_address`.
final class AzurermLbBackendAddressPoolAddress extends Resource {
  static const String tfType = 'azurerm_lb_backend_address_pool_address';

  AzurermLbBackendAddressPoolAddress(
    super.localName, {
    LbBackendAddressPoolAddressAttachment? attachment,
    required TfArg<String> backendAddressPoolId,
    TfArg<String>? ipAddress,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?attachment?.argMap,
           'backend_address_pool_id': backendAddressPoolId,
           'ip_address': ?ipAddress,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLbBackendAddressPoolAddressSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLbBackendAddressPoolAddress>`.
  RefTo<AzurermLbBackendAddressPoolAddress> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `inbound_nat_rule_port_mapping` attribute.
  TfRef<List<Map<String, Object?>>> get inboundNatRulePortMapping =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'inbound_nat_rule_port_mapping',
      );

  /// Reference to `backend_address_ip_configuration_id` attribute.
  TfRef<String> get backendAddressIpConfigurationId =>
      TfRef.attribute<String>(this, 'backend_address_ip_configuration_id');

  /// Reference to `backend_address_pool_id` attribute.
  TfRef<String> get backendAddressPoolId =>
      TfRef.attribute<String>(this, 'backend_address_pool_id');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');
}
