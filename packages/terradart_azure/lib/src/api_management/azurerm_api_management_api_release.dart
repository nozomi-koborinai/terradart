// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_api_release`.
const Set<String> _azurermApiManagementApiReleaseSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_api_release`.
final class AzurermApiManagementApiRelease extends Resource {
  static const String tfType = 'azurerm_api_management_api_release';

  AzurermApiManagementApiRelease(
    super.localName, {
    required TfArg<String> apiId,
    required TfArg<String> name,
    TfArg<String>? notes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'api_id': apiId, 'name': name, 'notes': ?notes},
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementApiReleaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementApiRelease>`.
  RefTo<AzurermApiManagementApiRelease> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `notes` attribute.
  TfRef<String> get notes => TfRef.attribute<String>(this, 'notes');
}
