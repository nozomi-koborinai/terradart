// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_chaos_studio_capability`.
const Set<String> _azurermChaosStudioCapabilitySensitive = <String>{};

/// Factory wrapper for `azurerm_chaos_studio_capability`.
final class AzurermChaosStudioCapability extends Resource {
  static const String tfType = 'azurerm_chaos_studio_capability';

  AzurermChaosStudioCapability(
    super.localName, {
    required TfArg<String> capabilityType,
    required TfArg<String> chaosStudioTargetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capability_type': capabilityType,
           'chaos_studio_target_id': chaosStudioTargetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermChaosStudioCapabilitySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermChaosStudioCapability>`.
  RefTo<AzurermChaosStudioCapability> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `urn` attribute.
  TfRef<String> get urn => TfRef.attribute<String>(this, 'urn');

  /// Reference to `capability_type` attribute.
  TfRef<String> get capabilityType =>
      TfRef.attribute<String>(this, 'capability_type');

  /// Reference to `chaos_studio_target_id` attribute.
  TfRef<String> get chaosStudioTargetId =>
      TfRef.attribute<String>(this, 'chaos_studio_target_id');
}
