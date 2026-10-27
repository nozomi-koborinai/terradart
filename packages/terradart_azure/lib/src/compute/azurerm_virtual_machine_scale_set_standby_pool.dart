// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_machine_scale_set_standby_pool`.
const Set<String> _azurermVirtualMachineScaleSetStandbyPoolSensitive =
    <String>{};

/// Virtual Machine Scale Set Standby Pool Virtual Machine enum for `virtual_machine_state`.
extension type const VirtualMachineScaleSetStandbyPoolVirtualMachineState._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualMachineScaleSetStandbyPoolVirtualMachineState.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineScaleSetStandbyPoolVirtualMachineState.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VirtualMachineScaleSetStandbyPoolVirtualMachineState.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const deallocated =
      VirtualMachineScaleSetStandbyPoolVirtualMachineState._(
        TfArgLiteral('Deallocated'),
      );
  static const hibernated =
      VirtualMachineScaleSetStandbyPoolVirtualMachineState._(
        TfArgLiteral('Hibernated'),
      );
  static const running = VirtualMachineScaleSetStandbyPoolVirtualMachineState._(
    TfArgLiteral('Running'),
  );

  static const List<VirtualMachineScaleSetStandbyPoolVirtualMachineState>
  values = [deallocated, hibernated, running];
}

/// Typed helper for the `elasticity_profile` block of
/// `azurerm_virtual_machine_scale_set_standby_pool` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetStandbyPoolElasticityProfile {
  const VirtualMachineScaleSetStandbyPoolElasticityProfile({
    required this.maxReadyCapacity,
    required this.minReadyCapacity,
  });

  final TfArg<num> maxReadyCapacity;

  final TfArg<num> minReadyCapacity;

  @internal
  Map<String, Object?> encode() => {
    'max_ready_capacity': maxReadyCapacity.toTfJson(),
    'min_ready_capacity': minReadyCapacity.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_virtual_machine_scale_set_standby_pool`.
final class AzurermVirtualMachineScaleSetStandbyPool extends Resource {
  static const String tfType = 'azurerm_virtual_machine_scale_set_standby_pool';

  AzurermVirtualMachineScaleSetStandbyPool(
    super.localName, {
    required TfArg<String> attachedVirtualMachineScaleSetId,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required VirtualMachineScaleSetStandbyPoolVirtualMachineState
    virtualMachineState,
    required VirtualMachineScaleSetStandbyPoolElasticityProfile
    elasticityProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attached_virtual_machine_scale_set_id':
               attachedVirtualMachineScaleSetId,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'virtual_machine_state': virtualMachineState,
           'elasticity_profile': TfArg.literal(elasticityProfile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualMachineScaleSetStandbyPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachineScaleSetStandbyPool>`.
  RefTo<AzurermVirtualMachineScaleSetStandbyPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attached_virtual_machine_scale_set_id` attribute.
  TfRef<String> get attachedVirtualMachineScaleSetId =>
      TfRef.attribute<String>(this, 'attached_virtual_machine_scale_set_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_machine_state` attribute.
  TfRef<String> get virtualMachineState =>
      TfRef.attribute<String>(this, 'virtual_machine_state');
}
