// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_api_operation_tag`.
const Set<String> _azurermApiManagementApiOperationTagSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_api_operation_tag`.
final class AzurermApiManagementApiOperationTag extends Resource {
  static const String tfType = 'azurerm_api_management_api_operation_tag';

  AzurermApiManagementApiOperationTag(
    super.localName, {
    required TfArg<String> apiOperationId,
    required TfArg<String> displayName,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_operation_id': apiOperationId,
           'display_name': displayName,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementApiOperationTagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementApiOperationTag>`.
  RefTo<AzurermApiManagementApiOperationTag> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_operation_id` attribute.
  TfRef<String> get apiOperationId =>
      TfRef.attribute<String>(this, 'api_operation_id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');
}
