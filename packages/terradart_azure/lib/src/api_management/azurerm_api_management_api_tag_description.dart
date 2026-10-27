// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_api_tag_description`.
const Set<String> _azurermApiManagementApiTagDescriptionSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_api_tag_description`.
final class AzurermApiManagementApiTagDescription extends Resource {
  static const String tfType = 'azurerm_api_management_api_tag_description';

  AzurermApiManagementApiTagDescription(
    super.localName, {
    required TfArg<String> apiTagId,
    TfArg<String>? description,
    TfArg<String>? externalDocumentationDescription,
    TfArg<String>? externalDocumentationUrl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_tag_id': apiTagId,
           'description': ?description,
           'external_documentation_description':
               ?externalDocumentationDescription,
           'external_documentation_url': ?externalDocumentationUrl,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementApiTagDescriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementApiTagDescription>`.
  RefTo<AzurermApiManagementApiTagDescription> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_tag_id` attribute.
  TfRef<String> get apiTagId => TfRef.attribute<String>(this, 'api_tag_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `external_documentation_description` attribute.
  TfRef<String> get externalDocumentationDescription =>
      TfRef.attribute<String>(this, 'external_documentation_description');

  /// Reference to `external_documentation_url` attribute.
  TfRef<String> get externalDocumentationUrl =>
      TfRef.attribute<String>(this, 'external_documentation_url');
}
