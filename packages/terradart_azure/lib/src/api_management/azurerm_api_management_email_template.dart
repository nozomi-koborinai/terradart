// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_email_template`.
const Set<String> _azurermApiManagementEmailTemplateSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_email_template`.
final class AzurermApiManagementEmailTemplate extends Resource {
  static const String tfType = 'azurerm_api_management_email_template';

  AzurermApiManagementEmailTemplate(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> body,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> subject,
    required TfArg<String> templateName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'body': body,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subject': subject,
           'template_name': templateName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementEmailTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementEmailTemplate>`.
  RefTo<AzurermApiManagementEmailTemplate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `subject` attribute.
  TfRef<String> get subject => TfRef.attribute<String>(this, 'subject');

  /// Reference to `template_name` attribute.
  TfRef<String> get templateName =>
      TfRef.attribute<String>(this, 'template_name');
}
