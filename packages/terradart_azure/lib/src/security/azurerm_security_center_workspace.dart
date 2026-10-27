// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_security_center_workspace`.
const Set<String> _azurermSecurityCenterWorkspaceSensitive = <String>{};

/// Factory wrapper for `azurerm_security_center_workspace`.
final class AzurermSecurityCenterWorkspace extends Resource {
  static const String tfType = 'azurerm_security_center_workspace';

  AzurermSecurityCenterWorkspace(
    super.localName, {
    required TfArg<String> scope,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'scope': scope, 'workspace_id': workspaceId},
       );

  @override
  Set<String> get sensitiveFields => _azurermSecurityCenterWorkspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSecurityCenterWorkspace>`.
  RefTo<AzurermSecurityCenterWorkspace> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
