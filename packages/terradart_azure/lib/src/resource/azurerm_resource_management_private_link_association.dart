// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_resource_management_private_link_association`.
const Set<String> _azurermResourceManagementPrivateLinkAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_resource_management_private_link_association`.
final class AzurermResourceManagementPrivateLinkAssociation extends Resource {
  static const String tfType =
      'azurerm_resource_management_private_link_association';

  AzurermResourceManagementPrivateLinkAssociation(
    super.localName, {
    required TfArg<String> managementGroupId,
    TfArg<String>? name,
    required TfArg<bool> publicNetworkAccessEnabled,
    required TfArg<String> resourceManagementPrivateLinkId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'management_group_id': managementGroupId,
           'name': ?name,
           'public_network_access_enabled': publicNetworkAccessEnabled,
           'resource_management_private_link_id':
               resourceManagementPrivateLinkId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermResourceManagementPrivateLinkAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermResourceManagementPrivateLinkAssociation>`.
  RefTo<AzurermResourceManagementPrivateLinkAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `management_group_id` attribute.
  TfRef<String> get managementGroupId =>
      TfRef.attribute<String>(this, 'management_group_id');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_management_private_link_id` attribute.
  TfRef<String> get resourceManagementPrivateLinkId =>
      TfRef.attribute<String>(this, 'resource_management_private_link_id');
}
