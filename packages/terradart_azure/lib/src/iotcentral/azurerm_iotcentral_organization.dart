// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_iotcentral_organization`.
const Set<String> _azurermIotcentralOrganizationSensitive = <String>{};

/// Factory wrapper for `azurerm_iotcentral_organization`.
final class AzurermIotcentralOrganization extends Resource {
  static const String tfType = 'azurerm_iotcentral_organization';

  AzurermIotcentralOrganization(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> iotcentralApplicationId,
    required TfArg<String> organizationId,
    TfArg<String>? parentOrganizationId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'iotcentral_application_id': iotcentralApplicationId,
           'organization_id': organizationId,
           'parent_organization_id': ?parentOrganizationId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIotcentralOrganizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIotcentralOrganization>`.
  RefTo<AzurermIotcentralOrganization> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `iotcentral_application_id` attribute.
  TfRef<String> get iotcentralApplicationId =>
      TfRef.attribute<String>(this, 'iotcentral_application_id');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `parent_organization_id` attribute.
  TfRef<String> get parentOrganizationId =>
      TfRef.attribute<String>(this, 'parent_organization_id');
}
