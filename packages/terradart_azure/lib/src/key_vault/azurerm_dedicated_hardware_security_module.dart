// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dedicated_hardware_security_module`.
const Set<String> _azurermDedicatedHardwareSecurityModuleSensitive = <String>{};

/// Dedicated Hardware Security Module Sku enum for `sku_name`.
extension type const DedicatedHardwareSecurityModuleSkuName._(TfArg<String> _)
    implements TfArg<String> {
  DedicatedHardwareSecurityModuleSkuName.variable(String name)
    : this._(TfArg.variable(name));
  DedicatedHardwareSecurityModuleSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const DedicatedHardwareSecurityModuleSkuName.arg(TfArg<String> arg)
    : this._(arg);

  static const payshield10kLmk1Cps60 = DedicatedHardwareSecurityModuleSkuName._(
    TfArgLiteral('payShield10K_LMK1_CPS60'),
  );
  static const payshield10kLmk1Cps250 =
      DedicatedHardwareSecurityModuleSkuName._(
        TfArgLiteral('payShield10K_LMK1_CPS250'),
      );
  static const payshield10kLmk1Cps2500 =
      DedicatedHardwareSecurityModuleSkuName._(
        TfArgLiteral('payShield10K_LMK1_CPS2500'),
      );
  static const payshield10kLmk2Cps60 = DedicatedHardwareSecurityModuleSkuName._(
    TfArgLiteral('payShield10K_LMK2_CPS60'),
  );
  static const payshield10kLmk2Cps250 =
      DedicatedHardwareSecurityModuleSkuName._(
        TfArgLiteral('payShield10K_LMK2_CPS250'),
      );
  static const payshield10kLmk2Cps2500 =
      DedicatedHardwareSecurityModuleSkuName._(
        TfArgLiteral('payShield10K_LMK2_CPS2500'),
      );
  static const safenetLunaNetworkHsmA790 =
      DedicatedHardwareSecurityModuleSkuName._(
        TfArgLiteral('SafeNet Luna Network HSM A790'),
      );

  static const List<DedicatedHardwareSecurityModuleSkuName> values = [
    payshield10kLmk1Cps60,
    payshield10kLmk1Cps250,
    payshield10kLmk1Cps2500,
    payshield10kLmk2Cps60,
    payshield10kLmk2Cps250,
    payshield10kLmk2Cps2500,
    safenetLunaNetworkHsmA790,
  ];
}

/// Dedicated Hardware Security Module Stamp enum for `stamp_id`.
extension type const DedicatedHardwareSecurityModuleStampId._(TfArg<String> _)
    implements TfArg<String> {
  DedicatedHardwareSecurityModuleStampId.variable(String name)
    : this._(TfArg.variable(name));
  DedicatedHardwareSecurityModuleStampId.expression(String template)
    : this._(TfArg.expression(template));
  const DedicatedHardwareSecurityModuleStampId.arg(TfArg<String> arg)
    : this._(arg);

  static const stamp1 = DedicatedHardwareSecurityModuleStampId._(
    TfArgLiteral('stamp1'),
  );
  static const stamp2 = DedicatedHardwareSecurityModuleStampId._(
    TfArgLiteral('stamp2'),
  );

  static const List<DedicatedHardwareSecurityModuleStampId> values = [
    stamp1,
    stamp2,
  ];
}

/// Typed helper for the `management_network_profile` block of
/// `azurerm_dedicated_hardware_security_module` (derived from provider schema).
@immutable
final class DedicatedHardwareSecurityModuleManagementNetworkProfile {
  const DedicatedHardwareSecurityModuleManagementNetworkProfile({
    required this.networkInterfacePrivateIpAddresses,
    required this.subnetId,
  });

  final TfArg<List<String>> networkInterfacePrivateIpAddresses;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'network_interface_private_ip_addresses': networkInterfacePrivateIpAddresses
        .toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Typed helper for the `network_profile` block of
/// `azurerm_dedicated_hardware_security_module` (derived from provider schema).
@immutable
final class DedicatedHardwareSecurityModuleNetworkProfile {
  const DedicatedHardwareSecurityModuleNetworkProfile({
    required this.networkInterfacePrivateIpAddresses,
    required this.subnetId,
  });

  final TfArg<List<String>> networkInterfacePrivateIpAddresses;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'network_interface_private_ip_addresses': networkInterfacePrivateIpAddresses
        .toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_dedicated_hardware_security_module`.
final class AzurermDedicatedHardwareSecurityModule extends Resource {
  static const String tfType = 'azurerm_dedicated_hardware_security_module';

  AzurermDedicatedHardwareSecurityModule(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required DedicatedHardwareSecurityModuleSkuName skuName,
    DedicatedHardwareSecurityModuleStampId? stampId,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? zones,
    DedicatedHardwareSecurityModuleManagementNetworkProfile?
    managementNetworkProfile,
    required DedicatedHardwareSecurityModuleNetworkProfile networkProfile,
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
           'sku_name': skuName,
           'stamp_id': ?stampId,
           'tags': ?tags,
           'zones': ?zones,
           if (managementNetworkProfile != null)
             'management_network_profile': TfArg.literal(
               managementNetworkProfile.encode(),
             ),
           'network_profile': TfArg.literal(networkProfile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDedicatedHardwareSecurityModuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDedicatedHardwareSecurityModule>`.
  RefTo<AzurermDedicatedHardwareSecurityModule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `stamp_id` attribute.
  TfRef<String> get stampId => TfRef.attribute<String>(this, 'stamp_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
