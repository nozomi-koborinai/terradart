// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_private_endpoint_application_security_group_association`.
const Set<String>
_azurermPrivateEndpointApplicationSecurityGroupAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_private_endpoint_application_security_group_association`.
final class AzurermPrivateEndpointApplicationSecurityGroupAssociation
    extends Resource {
  static const String tfType =
      'azurerm_private_endpoint_application_security_group_association';

  AzurermPrivateEndpointApplicationSecurityGroupAssociation(
    super.localName, {
    required TfArg<String> applicationSecurityGroupId,
    required TfArg<String> privateEndpointId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_security_group_id': applicationSecurityGroupId,
           'private_endpoint_id': privateEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPrivateEndpointApplicationSecurityGroupAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPrivateEndpointApplicationSecurityGroupAssociation>`.
  RefTo<AzurermPrivateEndpointApplicationSecurityGroupAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_security_group_id` attribute.
  TfRef<String> get applicationSecurityGroupId =>
      TfRef.attribute<String>(this, 'application_security_group_id');

  /// Reference to `private_endpoint_id` attribute.
  TfRef<String> get privateEndpointId =>
      TfRef.attribute<String>(this, 'private_endpoint_id');
}
