// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dev_test_windows_virtual_machine`.
const Set<String> _azurermDevTestWindowsVirtualMachineSensitive = <String>{
  'password',
};

/// Dev Test Windows Virtual Machine Storage enum for `storage_type`.
extension type const DevTestWindowsVirtualMachineStorageType._(TfArg<String> _)
    implements TfArg<String> {
  DevTestWindowsVirtualMachineStorageType.variable(String name)
    : this._(TfArg.variable(name));
  DevTestWindowsVirtualMachineStorageType.expression(String template)
    : this._(TfArg.expression(template));
  const DevTestWindowsVirtualMachineStorageType.arg(TfArg<String> arg)
    : this._(arg);

  static const standard = DevTestWindowsVirtualMachineStorageType._(
    TfArgLiteral('Standard'),
  );
  static const premium = DevTestWindowsVirtualMachineStorageType._(
    TfArgLiteral('Premium'),
  );

  static const List<DevTestWindowsVirtualMachineStorageType> values = [
    standard,
    premium,
  ];
}

/// Typed helper for the `gallery_image_reference` block of
/// `azurerm_dev_test_windows_virtual_machine` (derived from provider schema).
@immutable
final class DevTestWindowsVirtualMachineGalleryImageReference {
  const DevTestWindowsVirtualMachineGalleryImageReference({
    required this.offer,
    required this.publisher,
    required this.sku,
    required this.version,
  });

  final TfArg<String> offer;

  final TfArg<String> publisher;

  final TfArg<String> sku;

  final TfArg<String> version;

  @internal
  Map<String, Object?> encode() => {
    'offer': offer.toTfJson(),
    'publisher': publisher.toTfJson(),
    'sku': sku.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `inbound_nat_rule` block of
/// `azurerm_dev_test_windows_virtual_machine` (derived from provider schema).
@immutable
final class DevTestWindowsVirtualMachineInboundNatRule {
  const DevTestWindowsVirtualMachineInboundNatRule({
    required this.backendPort,
    required this.protocol,
  });

  final TfArg<num> backendPort;

  final DevTestWindowsVirtualMachineProtocol protocol;

  @internal
  Map<String, Object?> encode() => {
    'backend_port': backendPort.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const DevTestWindowsVirtualMachineProtocol._(TfArg<String> _)
    implements TfArg<String> {
  DevTestWindowsVirtualMachineProtocol.variable(String name)
    : this._(TfArg.variable(name));
  DevTestWindowsVirtualMachineProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const DevTestWindowsVirtualMachineProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const tcp = DevTestWindowsVirtualMachineProtocol._(
    TfArgLiteral('Tcp'),
  );
  static const udp = DevTestWindowsVirtualMachineProtocol._(
    TfArgLiteral('Udp'),
  );

  static const List<DevTestWindowsVirtualMachineProtocol> values = [tcp, udp];
}

/// Factory wrapper for `azurerm_dev_test_windows_virtual_machine`.
final class AzurermDevTestWindowsVirtualMachine extends Resource {
  static const String tfType = 'azurerm_dev_test_windows_virtual_machine';

  AzurermDevTestWindowsVirtualMachine(
    super.localName, {
    TfArg<bool>? allowClaim,
    TfArg<bool>? disallowPublicIpAddress,
    required TfArg<String> labName,
    required TfArg<String> labSubnetName,
    required TfArg<String> labVirtualNetworkId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? notes,
    required Sensitive<String> password,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> size,
    required DevTestWindowsVirtualMachineStorageType storageType,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> username,
    required DevTestWindowsVirtualMachineGalleryImageReference
    galleryImageReference,
    List<DevTestWindowsVirtualMachineInboundNatRule>? inboundNatRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_claim': ?allowClaim,
           'disallow_public_ip_address': ?disallowPublicIpAddress,
           'lab_name': labName,
           'lab_subnet_name': labSubnetName,
           'lab_virtual_network_id': labVirtualNetworkId,
           'location': location,
           'name': name,
           'notes': ?notes,
           'password': password,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'size': size,
           'storage_type': storageType,
           'tags': ?tags,
           'username': username,
           'gallery_image_reference': TfArg.literal(
             galleryImageReference.encode(),
           ),
           if (inboundNatRule != null)
             'inbound_nat_rule': TfArg.literal([
               for (final e in inboundNatRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDevTestWindowsVirtualMachineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevTestWindowsVirtualMachine>`.
  RefTo<AzurermDevTestWindowsVirtualMachine> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `unique_identifier` attribute.
  TfRef<String> get uniqueIdentifier =>
      TfRef.attribute<String>(this, 'unique_identifier');

  /// Reference to `allow_claim` attribute.
  TfRef<bool> get allowClaim => TfRef.attribute<bool>(this, 'allow_claim');

  /// Reference to `disallow_public_ip_address` attribute.
  TfRef<bool> get disallowPublicIpAddress =>
      TfRef.attribute<bool>(this, 'disallow_public_ip_address');

  /// Reference to `lab_name` attribute.
  TfRef<String> get labName => TfRef.attribute<String>(this, 'lab_name');

  /// Reference to `lab_subnet_name` attribute.
  TfRef<String> get labSubnetName =>
      TfRef.attribute<String>(this, 'lab_subnet_name');

  /// Reference to `lab_virtual_network_id` attribute.
  TfRef<String> get labVirtualNetworkId =>
      TfRef.attribute<String>(this, 'lab_virtual_network_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `notes` attribute.
  TfRef<String> get notes => TfRef.attribute<String>(this, 'notes');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `size` attribute.
  TfRef<String> get size => TfRef.attribute<String>(this, 'size');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
