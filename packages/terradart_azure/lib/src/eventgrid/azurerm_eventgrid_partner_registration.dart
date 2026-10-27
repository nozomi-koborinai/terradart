// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventgrid_partner_registration`.
const Set<String> _azurermEventgridPartnerRegistrationSensitive = <String>{};

/// Factory wrapper for `azurerm_eventgrid_partner_registration`.
final class AzurermEventgridPartnerRegistration extends Resource {
  static const String tfType = 'azurerm_eventgrid_partner_registration';

  AzurermEventgridPartnerRegistration(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermEventgridPartnerRegistrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventgridPartnerRegistration>`.
  RefTo<AzurermEventgridPartnerRegistration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `partner_registration_id` attribute.
  TfRef<String> get partnerRegistrationId =>
      TfRef.attribute<String>(this, 'partner_registration_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
