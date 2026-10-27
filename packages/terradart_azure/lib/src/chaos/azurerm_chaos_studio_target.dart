// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_chaos_studio_target`.
const Set<String> _azurermChaosStudioTargetSensitive = <String>{};

/// Factory wrapper for `azurerm_chaos_studio_target`.
final class AzurermChaosStudioTarget extends Resource {
  static const String tfType = 'azurerm_chaos_studio_target';

  AzurermChaosStudioTarget(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> targetResourceId,
    required TfArg<String> targetType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'target_resource_id': targetResourceId,
           'target_type': targetType,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermChaosStudioTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermChaosStudioTarget>`.
  RefTo<AzurermChaosStudioTarget> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetType => TfRef.attribute<String>(this, 'target_type');
}
