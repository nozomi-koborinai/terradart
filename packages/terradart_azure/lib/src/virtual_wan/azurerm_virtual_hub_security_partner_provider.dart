// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_hub_security_partner_provider`.
const Set<String> _azurermVirtualHubSecurityPartnerProviderSensitive =
    <String>{};

/// Virtual Hub Security Partner Provider Security Provider enum for `security_provider_name`.
extension type const VirtualHubSecurityPartnerProviderSecurityProviderName._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualHubSecurityPartnerProviderSecurityProviderName.variable(String name)
    : this._(TfArg.variable(name));
  VirtualHubSecurityPartnerProviderSecurityProviderName.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VirtualHubSecurityPartnerProviderSecurityProviderName.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const checkpoint =
      VirtualHubSecurityPartnerProviderSecurityProviderName._(
        TfArgLiteral('Checkpoint'),
      );
  static const iboss = VirtualHubSecurityPartnerProviderSecurityProviderName._(
    TfArgLiteral('IBoss'),
  );
  static const zscaler =
      VirtualHubSecurityPartnerProviderSecurityProviderName._(
        TfArgLiteral('ZScaler'),
      );

  static const List<VirtualHubSecurityPartnerProviderSecurityProviderName>
  values = [checkpoint, iboss, zscaler];
}

/// Factory wrapper for `azurerm_virtual_hub_security_partner_provider`.
final class AzurermVirtualHubSecurityPartnerProvider extends Resource {
  static const String tfType = 'azurerm_virtual_hub_security_partner_provider';

  AzurermVirtualHubSecurityPartnerProvider(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required VirtualHubSecurityPartnerProviderSecurityProviderName
    securityProviderName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? virtualHubId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'security_provider_name': securityProviderName,
           'tags': ?tags,
           'virtual_hub_id': ?virtualHubId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualHubSecurityPartnerProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualHubSecurityPartnerProvider>`.
  RefTo<AzurermVirtualHubSecurityPartnerProvider> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `security_provider_name` attribute.
  TfRef<String> get securityProviderName =>
      TfRef.attribute<String>(this, 'security_provider_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_hub_id` attribute.
  TfRef<String> get virtualHubId =>
      TfRef.attribute<String>(this, 'virtual_hub_id');
}
