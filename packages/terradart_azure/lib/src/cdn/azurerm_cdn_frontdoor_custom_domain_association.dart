// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_frontdoor_custom_domain_association`.
const Set<String> _azurermCdnFrontdoorCustomDomainAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_cdn_frontdoor_custom_domain_association`.
final class AzurermCdnFrontdoorCustomDomainAssociation extends Resource {
  static const String tfType =
      'azurerm_cdn_frontdoor_custom_domain_association';

  AzurermCdnFrontdoorCustomDomainAssociation(
    super.localName, {
    required TfArg<String> cdnFrontdoorCustomDomainId,
    required TfArg<List<String>> cdnFrontdoorRouteIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cdn_frontdoor_custom_domain_id': cdnFrontdoorCustomDomainId,
           'cdn_frontdoor_route_ids': cdnFrontdoorRouteIds,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCdnFrontdoorCustomDomainAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorCustomDomainAssociation>`.
  RefTo<AzurermCdnFrontdoorCustomDomainAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_frontdoor_custom_domain_id` attribute.
  TfRef<String> get cdnFrontdoorCustomDomainId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_custom_domain_id');

  /// Reference to `cdn_frontdoor_route_ids` attribute.
  TfRef<List<String>> get cdnFrontdoorRouteIds =>
      TfRef.attribute<List<String>>(this, 'cdn_frontdoor_route_ids');
}
