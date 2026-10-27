// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_desktop_workspace_application_group_association`.
const Set<String>
_azurermVirtualDesktopWorkspaceApplicationGroupAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_virtual_desktop_workspace_application_group_association`.
final class AzurermVirtualDesktopWorkspaceApplicationGroupAssociation
    extends Resource {
  static const String tfType =
      'azurerm_virtual_desktop_workspace_application_group_association';

  AzurermVirtualDesktopWorkspaceApplicationGroupAssociation(
    super.localName, {
    required TfArg<String> applicationGroupId,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_group_id': applicationGroupId,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualDesktopWorkspaceApplicationGroupAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualDesktopWorkspaceApplicationGroupAssociation>`.
  RefTo<AzurermVirtualDesktopWorkspaceApplicationGroupAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_group_id` attribute.
  TfRef<String> get applicationGroupId =>
      TfRef.attribute<String>(this, 'application_group_id');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
