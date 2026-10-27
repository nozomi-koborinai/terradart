// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_web_app_active_slot`.
const Set<String> _azurermWebAppActiveSlotSensitive = <String>{};

/// Factory wrapper for `azurerm_web_app_active_slot`.
final class AzurermWebAppActiveSlot extends Resource {
  static const String tfType = 'azurerm_web_app_active_slot';

  AzurermWebAppActiveSlot(
    super.localName, {
    TfArg<bool>? overwriteNetworkConfig,
    required TfArg<String> slotId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'overwrite_network_config': ?overwriteNetworkConfig,
           'slot_id': slotId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermWebAppActiveSlotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWebAppActiveSlot>`.
  RefTo<AzurermWebAppActiveSlot> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `last_successful_swap` attribute.
  TfRef<String> get lastSuccessfulSwap =>
      TfRef.attribute<String>(this, 'last_successful_swap');

  /// Reference to `overwrite_network_config` attribute.
  TfRef<bool> get overwriteNetworkConfig =>
      TfRef.attribute<bool>(this, 'overwrite_network_config');

  /// Reference to `slot_id` attribute.
  TfRef<String> get slotId => TfRef.attribute<String>(this, 'slot_id');
}
