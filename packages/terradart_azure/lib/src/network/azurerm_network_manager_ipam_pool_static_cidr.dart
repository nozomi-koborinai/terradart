// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_ipam_pool_static_cidr`.
const Set<String> _azurermNetworkManagerIpamPoolStaticCidrSensitive =
    <String>{};

/// Exactly one of `address_prefixes`, `number_of_ip_addresses_to_allocate` on `azurerm_network_manager_ipam_pool_static_cidr`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.addressPrefixes(...)`.
sealed class NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocate {
  const NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocate();

  /// Sets `address_prefixes`.
  const factory NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocate.addressPrefixes(
    TfArg<List<String>> addressPrefixes,
  ) = NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocateAddressPrefixes;

  /// Sets `number_of_ip_addresses_to_allocate`.
  const factory NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocate.numberOfIpAddressesToAllocate(
    TfArg<String> numberOfIpAddressesToAllocate,
  ) = NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocateChoice;

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

/// The [NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocate.addressPrefixes] choice: sets `address_prefixes`.
final class NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocateAddressPrefixes
    extends
        NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocate {
  const NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocateAddressPrefixes(
    this.addressPrefixes,
  );

  final TfArg<List<String>> addressPrefixes;

  @internal
  @override
  String get blockKey => 'address_prefixes';

  @internal
  @override
  Map<String, Object?> encode() => {
    'address_prefixes': addressPrefixes.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'address_prefixes': addressPrefixes,
  };
}

/// The [NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocate.numberOfIpAddressesToAllocate] choice: sets `number_of_ip_addresses_to_allocate`.
final class NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocateChoice
    extends
        NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocate {
  const NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocateChoice(
    this.numberOfIpAddressesToAllocate,
  );

  final TfArg<String> numberOfIpAddressesToAllocate;

  @internal
  @override
  String get blockKey => 'number_of_ip_addresses_to_allocate';

  @internal
  @override
  Map<String, Object?> encode() => {
    'number_of_ip_addresses_to_allocate': numberOfIpAddressesToAllocate
        .toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'number_of_ip_addresses_to_allocate': numberOfIpAddressesToAllocate,
  };
}

/// Factory wrapper for `azurerm_network_manager_ipam_pool_static_cidr`.
final class AzurermNetworkManagerIpamPoolStaticCidr extends Resource {
  static const String tfType = 'azurerm_network_manager_ipam_pool_static_cidr';

  AzurermNetworkManagerIpamPoolStaticCidr(
    super.localName, {
    required NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocate
    addressPrefixesOrNumberOfIpAddressesToAllocate,
    required TfArg<String> ipamPoolId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...addressPrefixesOrNumberOfIpAddressesToAllocate.argMap,
           'ipam_pool_id': ipamPoolId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerIpamPoolStaticCidrSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerIpamPoolStaticCidr>`.
  RefTo<AzurermNetworkManagerIpamPoolStaticCidr> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_prefixes` attribute.
  TfRef<List<String>> get addressPrefixes =>
      TfRef.attribute<List<String>>(this, 'address_prefixes');

  /// Reference to `ipam_pool_id` attribute.
  TfRef<String> get ipamPoolId => TfRef.attribute<String>(this, 'ipam_pool_id');

  /// Reference to `number_of_ip_addresses_to_allocate` attribute.
  TfRef<String> get numberOfIpAddressesToAllocate =>
      TfRef.attribute<String>(this, 'number_of_ip_addresses_to_allocate');
}
