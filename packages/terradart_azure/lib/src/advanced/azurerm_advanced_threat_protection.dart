// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_advanced_threat_protection`.
const Set<String> _azurermAdvancedThreatProtectionSensitive = <String>{};

/// Factory wrapper for `azurerm_advanced_threat_protection`.
final class AzurermAdvancedThreatProtection extends Resource {
  static const String tfType = 'azurerm_advanced_threat_protection';

  AzurermAdvancedThreatProtection(
    super.localName, {
    required TfArg<bool> enabled,
    required TfArg<String> targetResourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'enabled': enabled, 'target_resource_id': targetResourceId},
       );

  @override
  Set<String> get sensitiveFields => _azurermAdvancedThreatProtectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAdvancedThreatProtection>`.
  RefTo<AzurermAdvancedThreatProtection> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');
}
