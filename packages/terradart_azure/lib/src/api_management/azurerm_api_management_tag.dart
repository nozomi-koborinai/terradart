// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_tag`.
const Set<String> _azurermApiManagementTagSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_tag`.
final class AzurermApiManagementTag extends Resource {
  static const String tfType = 'azurerm_api_management_tag';

  AzurermApiManagementTag(
    super.localName, {
    required TfArg<String> apiManagementId,
    TfArg<String>? displayName,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_id': apiManagementId,
           'display_name': ?displayName,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementTagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementTag>`.
  RefTo<AzurermApiManagementTag> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');
}
