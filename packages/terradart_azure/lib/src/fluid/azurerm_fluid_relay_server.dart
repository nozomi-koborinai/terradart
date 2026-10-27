// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_fluid_relay_server`.
const Set<String> _azurermFluidRelayServerSensitive = <String>{
  'primary_key',
  'secondary_key',
};

/// Fluid Relay Server Storage enum for `storage_sku`.
extension type const FluidRelayServerStorageSku._(TfArg<String> _)
    implements TfArg<String> {
  FluidRelayServerStorageSku.variable(String name)
    : this._(TfArg.variable(name));
  FluidRelayServerStorageSku.expression(String template)
    : this._(TfArg.expression(template));
  const FluidRelayServerStorageSku.arg(TfArg<String> arg) : this._(arg);

  static const basic = FluidRelayServerStorageSku._(TfArgLiteral('basic'));
  static const standard = FluidRelayServerStorageSku._(
    TfArgLiteral('standard'),
  );

  static const List<FluidRelayServerStorageSku> values = [basic, standard];
}

/// Typed helper for the `customer_managed_key` block of
/// `azurerm_fluid_relay_server` (derived from provider schema).
@immutable
final class FluidRelayServerCustomerManagedKey {
  const FluidRelayServerCustomerManagedKey({
    required this.keyVaultKeyId,
    required this.userAssignedIdentityId,
  });

  final TfArg<String> keyVaultKeyId;

  final TfArg<String> userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_key_id': keyVaultKeyId.toTfJson(),
    'user_assigned_identity_id': userAssignedIdentityId.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_fluid_relay_server` (derived from provider schema).
@immutable
final class FluidRelayServerIdentity {
  const FluidRelayServerIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_fluid_relay_server`.
final class AzurermFluidRelayServer extends Resource {
  static const String tfType = 'azurerm_fluid_relay_server';

  AzurermFluidRelayServer(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    FluidRelayServerStorageSku? storageSku,
    TfArg<Map<String, String>>? tags,
    FluidRelayServerCustomerManagedKey? customerManagedKey,
    FluidRelayServerIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'storage_sku': ?storageSku,
           'tags': ?tags,
           if (customerManagedKey != null)
             'customer_managed_key': TfArg.literal(customerManagedKey.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermFluidRelayServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFluidRelayServer>`.
  RefTo<AzurermFluidRelayServer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `frs_tenant_id` attribute.
  TfRef<String> get frsTenantId =>
      TfRef.attribute<String>(this, 'frs_tenant_id');

  /// Reference to `orderer_endpoints` attribute.
  TfRef<List<String>> get ordererEndpoints =>
      TfRef.attribute<List<String>>(this, 'orderer_endpoints');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `service_endpoints` attribute.
  TfRef<List<String>> get serviceEndpoints =>
      TfRef.attribute<List<String>>(this, 'service_endpoints');

  /// Reference to `storage_endpoints` attribute.
  TfRef<List<String>> get storageEndpoints =>
      TfRef.attribute<List<String>>(this, 'storage_endpoints');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `storage_sku` attribute.
  TfRef<String> get storageSku => TfRef.attribute<String>(this, 'storage_sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
