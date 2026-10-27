// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cdn/azurerm_cdn_frontdoor_custom_domain.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cdn_frontdoor_custom_domain`.
const Set<String> _azurermCdnFrontdoorCustomDomainSensitive = <String>{};

/// Factory wrapper for `azurerm_cdn_frontdoor_custom_domain`.
final class DataAzurermCdnFrontdoorCustomDomain extends Data {
  static const String tfType = 'azurerm_cdn_frontdoor_custom_domain';

  DataAzurermCdnFrontdoorCustomDomain(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> profileName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'profile_name': profileName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorCustomDomainSensitive;

  /// A reference to the `azurerm_cdn_frontdoor_custom_domain` this data source reads, for
  /// arguments typed `RefTo<AzurermCdnFrontdoorCustomDomain>`.
  RefTo<AzurermCdnFrontdoorCustomDomain> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_frontdoor_profile_id` attribute.
  TfRef<String> get cdnFrontdoorProfileId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_profile_id');

  /// Reference to `dns_zone_id` attribute.
  TfRef<String> get dnsZoneId => TfRef.attribute<String>(this, 'dns_zone_id');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `host_name` attribute.
  TfRef<String> get hostName => TfRef.attribute<String>(this, 'host_name');

  /// Reference to `tls` attribute.
  TfRef<List<Map<String, Object?>>> get tls =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tls');

  /// Reference to `validation_token` attribute.
  TfRef<String> get validationToken =>
      TfRef.attribute<String>(this, 'validation_token');

  /// Reference to `profile_name` attribute.
  TfRef<String> get profileName =>
      TfRef.attribute<String>(this, 'profile_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
