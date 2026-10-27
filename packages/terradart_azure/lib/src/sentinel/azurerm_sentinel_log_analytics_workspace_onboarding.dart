// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_log_analytics_workspace_onboarding`.
const Set<String> _azurermSentinelLogAnalyticsWorkspaceOnboardingSensitive =
    <String>{};

/// Factory wrapper for `azurerm_sentinel_log_analytics_workspace_onboarding`.
final class AzurermSentinelLogAnalyticsWorkspaceOnboarding extends Resource {
  static const String tfType =
      'azurerm_sentinel_log_analytics_workspace_onboarding';

  AzurermSentinelLogAnalyticsWorkspaceOnboarding(
    super.localName, {
    TfArg<bool>? customerManagedKeyEnabled,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'customer_managed_key_enabled': ?customerManagedKeyEnabled,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelLogAnalyticsWorkspaceOnboardingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelLogAnalyticsWorkspaceOnboarding>`.
  RefTo<AzurermSentinelLogAnalyticsWorkspaceOnboarding> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `customer_managed_key_enabled` attribute.
  TfRef<bool> get customerManagedKeyEnabled =>
      TfRef.attribute<bool>(this, 'customer_managed_key_enabled');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
