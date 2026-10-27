// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_portal_tenant_configuration`.
const Set<String> _azurermPortalTenantConfigurationSensitive = <String>{};

/// Factory wrapper for `azurerm_portal_tenant_configuration`.
final class AzurermPortalTenantConfiguration extends Resource {
  static const String tfType = 'azurerm_portal_tenant_configuration';

  AzurermPortalTenantConfiguration(
    super.localName, {
    required TfArg<bool> privateMarkdownStorageEnforced,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'private_markdown_storage_enforced': privateMarkdownStorageEnforced,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPortalTenantConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPortalTenantConfiguration>`.
  RefTo<AzurermPortalTenantConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `private_markdown_storage_enforced` attribute.
  TfRef<bool> get privateMarkdownStorageEnforced =>
      TfRef.attribute<bool>(this, 'private_markdown_storage_enforced');
}
