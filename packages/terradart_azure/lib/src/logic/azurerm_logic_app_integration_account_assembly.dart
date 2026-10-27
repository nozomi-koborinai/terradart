// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_logic_app_integration_account_assembly`.
const Set<String> _azurermLogicAppIntegrationAccountAssemblySensitive =
    <String>{};

/// Factory wrapper for `azurerm_logic_app_integration_account_assembly`.
final class AzurermLogicAppIntegrationAccountAssembly extends Resource {
  static const String tfType = 'azurerm_logic_app_integration_account_assembly';

  AzurermLogicAppIntegrationAccountAssembly(
    super.localName, {
    required TfArg<String> assemblyName,
    TfArg<String>? assemblyVersion,
    TfArg<String>? content,
    TfArg<String>? contentLinkUri,
    required TfArg<String> integrationAccountName,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assembly_name': assemblyName,
           'assembly_version': ?assemblyVersion,
           'content': ?content,
           'content_link_uri': ?contentLinkUri,
           'integration_account_name': integrationAccountName,
           'metadata': ?metadata,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogicAppIntegrationAccountAssemblySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppIntegrationAccountAssembly>`.
  RefTo<AzurermLogicAppIntegrationAccountAssembly> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `assembly_name` attribute.
  TfRef<String> get assemblyName =>
      TfRef.attribute<String>(this, 'assembly_name');

  /// Reference to `assembly_version` attribute.
  TfRef<String> get assemblyVersion =>
      TfRef.attribute<String>(this, 'assembly_version');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `content_link_uri` attribute.
  TfRef<String> get contentLinkUri =>
      TfRef.attribute<String>(this, 'content_link_uri');

  /// Reference to `integration_account_name` attribute.
  TfRef<String> get integrationAccountName =>
      TfRef.attribute<String>(this, 'integration_account_name');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
