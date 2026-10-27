// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_dps`.
const Set<String> _azurermIothubDpsSensitive = <String>{
  'linked_hub.connection_string',
};

/// Iothub Dps Allocation enum for `allocation_policy`.
extension type const IothubDpsAllocationPolicy._(TfArg<String> _)
    implements TfArg<String> {
  IothubDpsAllocationPolicy.variable(String name)
    : this._(TfArg.variable(name));
  IothubDpsAllocationPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const IothubDpsAllocationPolicy.arg(TfArg<String> arg) : this._(arg);

  static const geolatency = IothubDpsAllocationPolicy._(
    TfArgLiteral('GeoLatency'),
  );
  static const hashed = IothubDpsAllocationPolicy._(TfArgLiteral('Hashed'));
  static const static = IothubDpsAllocationPolicy._(TfArgLiteral('Static'));

  static const List<IothubDpsAllocationPolicy> values = [
    geolatency,
    hashed,
    static,
  ];
}

/// Typed helper for the `ip_filter_rule` block of
/// `azurerm_iothub_dps` (derived from provider schema).
@immutable
final class IothubDpsIpFilterRule {
  const IothubDpsIpFilterRule({
    required this.action,
    required this.ipMask,
    required this.name,
    this.target,
  });

  final TfArg<String> action;

  final TfArg<String> ipMask;

  final TfArg<String> name;

  final IothubDpsTarget? target;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'ip_mask': ipMask.toTfJson(),
    'name': name.toTfJson(),
    'target': ?target?.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
extension type const IothubDpsTarget._(TfArg<String> _)
    implements TfArg<String> {
  IothubDpsTarget.variable(String name) : this._(TfArg.variable(name));
  IothubDpsTarget.expression(String template)
    : this._(TfArg.expression(template));
  const IothubDpsTarget.arg(TfArg<String> arg) : this._(arg);

  static const all = IothubDpsTarget._(TfArgLiteral('all'));
  static const deviceapi = IothubDpsTarget._(TfArgLiteral('deviceApi'));
  static const serviceapi = IothubDpsTarget._(TfArgLiteral('serviceApi'));

  static const List<IothubDpsTarget> values = [all, deviceapi, serviceapi];
}

/// Typed helper for the `linked_hub` block of
/// `azurerm_iothub_dps` (derived from provider schema).
@immutable
final class IothubDpsLinkedHub {
  const IothubDpsLinkedHub({
    this.allocationWeight,
    this.applyAllocationPolicy,
    required this.connectionString,
    required this.location,
  });

  final TfArg<num>? allocationWeight;

  final TfArg<bool>? applyAllocationPolicy;

  final Sensitive<String> connectionString;

  final TfArg<String> location;

  @internal
  Map<String, Object?> encode() => {
    'allocation_weight': ?allocationWeight?.toTfJson(),
    'apply_allocation_policy': ?applyAllocationPolicy?.toTfJson(),
    'connection_string': connectionString.toTfJson(),
    'location': location.toTfJson(),
  };
}

/// Typed helper for the `sku` block of
/// `azurerm_iothub_dps` (derived from provider schema).
@immutable
final class IothubDpsSku {
  const IothubDpsSku({required this.capacity, required this.name});

  final TfArg<num> capacity;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'capacity': capacity.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_iothub_dps`.
final class AzurermIothubDps extends Resource {
  static const String tfType = 'azurerm_iothub_dps';

  AzurermIothubDps(
    super.localName, {
    IothubDpsAllocationPolicy? allocationPolicy,
    TfArg<bool>? dataResidencyEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    List<IothubDpsIpFilterRule>? ipFilterRule,
    List<IothubDpsLinkedHub>? linkedHub,
    required IothubDpsSku sku,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocation_policy': ?allocationPolicy,
           'data_residency_enabled': ?dataResidencyEnabled,
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (ipFilterRule != null)
             'ip_filter_rule': TfArg.literal([
               for (final e in ipFilterRule) e.encode(),
             ]),
           if (linkedHub != null)
             'linked_hub': TfArg.literal([
               for (final e in linkedHub) e.encode(),
             ]),
           'sku': TfArg.literal(sku.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIothubDpsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubDps>`.
  RefTo<AzurermIothubDps> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `device_provisioning_host_name` attribute.
  TfRef<String> get deviceProvisioningHostName =>
      TfRef.attribute<String>(this, 'device_provisioning_host_name');

  /// Reference to `id_scope` attribute.
  TfRef<String> get idScope => TfRef.attribute<String>(this, 'id_scope');

  /// Reference to `service_operations_host_name` attribute.
  TfRef<String> get serviceOperationsHostName =>
      TfRef.attribute<String>(this, 'service_operations_host_name');

  /// Reference to `allocation_policy` attribute.
  TfRef<String> get allocationPolicy =>
      TfRef.attribute<String>(this, 'allocation_policy');

  /// Reference to `data_residency_enabled` attribute.
  TfRef<bool> get dataResidencyEnabled =>
      TfRef.attribute<bool>(this, 'data_residency_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
