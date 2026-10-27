// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cdn/azurerm_cdn_frontdoor_firewall_policy.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cdn_frontdoor_firewall_policy`.
const Set<String> _azurermCdnFrontdoorFirewallPolicySensitive = <String>{};

/// Factory wrapper for `azurerm_cdn_frontdoor_firewall_policy`.
final class DataAzurermCdnFrontdoorFirewallPolicy extends Data {
  static const String tfType = 'azurerm_cdn_frontdoor_firewall_policy';

  DataAzurermCdnFrontdoorFirewallPolicy(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCdnFrontdoorFirewallPolicySensitive;

  /// A reference to the `azurerm_cdn_frontdoor_firewall_policy` this data source reads, for
  /// arguments typed `RefTo<AzurermCdnFrontdoorFirewallPolicy>`.
  RefTo<AzurermCdnFrontdoorFirewallPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `captcha_cookie_expiration_in_minutes` attribute.
  TfRef<num> get captchaCookieExpirationInMinutes =>
      TfRef.attribute<num>(this, 'captcha_cookie_expiration_in_minutes');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `frontend_endpoint_ids` attribute.
  TfRef<List<String>> get frontendEndpointIds =>
      TfRef.attribute<List<String>>(this, 'frontend_endpoint_ids');

  /// Reference to `js_challenge_cookie_expiration_in_minutes` attribute.
  TfRef<num> get jsChallengeCookieExpirationInMinutes =>
      TfRef.attribute<num>(this, 'js_challenge_cookie_expiration_in_minutes');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `redirect_url` attribute.
  TfRef<String> get redirectUrl =>
      TfRef.attribute<String>(this, 'redirect_url');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
