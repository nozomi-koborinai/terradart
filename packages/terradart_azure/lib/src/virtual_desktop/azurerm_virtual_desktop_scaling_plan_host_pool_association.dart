// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_desktop_scaling_plan_host_pool_association`.
const Set<String>
_azurermVirtualDesktopScalingPlanHostPoolAssociationSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_desktop_scaling_plan_host_pool_association`.
final class AzurermVirtualDesktopScalingPlanHostPoolAssociation
    extends Resource {
  static const String tfType =
      'azurerm_virtual_desktop_scaling_plan_host_pool_association';

  AzurermVirtualDesktopScalingPlanHostPoolAssociation(
    super.localName, {
    required TfArg<bool> enabled,
    required TfArg<String> hostPoolId,
    required TfArg<String> scalingPlanId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': enabled,
           'host_pool_id': hostPoolId,
           'scaling_plan_id': scalingPlanId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualDesktopScalingPlanHostPoolAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualDesktopScalingPlanHostPoolAssociation>`.
  RefTo<AzurermVirtualDesktopScalingPlanHostPoolAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `host_pool_id` attribute.
  TfRef<String> get hostPoolId => TfRef.attribute<String>(this, 'host_pool_id');

  /// Reference to `scaling_plan_id` attribute.
  TfRef<String> get scalingPlanId =>
      TfRef.attribute<String>(this, 'scaling_plan_id');
}
