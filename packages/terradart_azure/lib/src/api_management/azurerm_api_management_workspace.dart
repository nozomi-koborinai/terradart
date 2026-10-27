// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_workspace`.
const Set<String> _azurermApiManagementWorkspaceSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_workspace`.
final class AzurermApiManagementWorkspace extends Resource {
  static const String tfType = 'azurerm_api_management_workspace';

  AzurermApiManagementWorkspace(
    super.localName, {
    required TfArg<String> apiManagementId,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_id': apiManagementId,
           'description': ?description,
           'display_name': displayName,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementWorkspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementWorkspace>`.
  RefTo<AzurermApiManagementWorkspace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');
}
