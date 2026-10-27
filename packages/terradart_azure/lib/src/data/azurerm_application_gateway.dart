// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_application_gateway.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_application_gateway`.
const Set<String> _azurermApplicationGatewaySensitive = <String>{};

/// Factory wrapper for `azurerm_application_gateway`.
final class DataAzurermApplicationGateway extends Data {
  static const String tfType = 'azurerm_application_gateway';

  DataAzurermApplicationGateway(
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
  Set<String> get sensitiveFields => _azurermApplicationGatewaySensitive;

  /// A reference to the `azurerm_application_gateway` this data source reads, for
  /// arguments typed `RefTo<AzurermApplicationGateway>`.
  RefTo<AzurermApplicationGateway> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `autoscale_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get autoscaleConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'autoscale_configuration',
      );

  /// Reference to `backend` attribute.
  TfRef<List<Map<String, Object?>>> get backend =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backend');

  /// Reference to `backend_address_pool` attribute.
  TfRef<List<Map<String, Object?>>> get backendAddressPool =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backend_address_pool');

  /// Reference to `backend_http_settings` attribute.
  TfRef<List<Map<String, Object?>>> get backendHttpSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'backend_http_settings',
      );

  /// Reference to `custom_error_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get customErrorConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'custom_error_configuration',
      );

  /// Reference to `fips_enabled` attribute.
  TfRef<bool> get fipsEnabled => TfRef.attribute<bool>(this, 'fips_enabled');

  /// Reference to `firewall_policy_id` attribute.
  TfRef<String> get firewallPolicyId =>
      TfRef.attribute<String>(this, 'firewall_policy_id');

  /// Reference to `force_firewall_policy_association` attribute.
  TfRef<bool> get forceFirewallPolicyAssociation =>
      TfRef.attribute<bool>(this, 'force_firewall_policy_association');

  /// Reference to `frontend_ip_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get frontendIpConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'frontend_ip_configuration',
      );

  /// Reference to `frontend_port` attribute.
  TfRef<List<Map<String, Object?>>> get frontendPort =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'frontend_port');

  /// Reference to `gateway_ip_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get gatewayIpConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'gateway_ip_configuration',
      );

  /// Reference to `global` attribute.
  TfRef<List<Map<String, Object?>>> get global =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'global');

  /// Reference to `http2_enabled` attribute.
  TfRef<bool> get http2Enabled => TfRef.attribute<bool>(this, 'http2_enabled');

  /// Reference to `http_listener` attribute.
  TfRef<List<Map<String, Object?>>> get httpListener =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'http_listener');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `listener` attribute.
  TfRef<List<Map<String, Object?>>> get listener =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'listener');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_endpoint_connection` attribute.
  TfRef<List<Map<String, Object?>>> get privateEndpointConnection =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_endpoint_connection',
      );

  /// Reference to `private_link_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get privateLinkConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_link_configuration',
      );

  /// Reference to `probe` attribute.
  TfRef<List<Map<String, Object?>>> get probe =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'probe');

  /// Reference to `redirect_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get redirectConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'redirect_configuration',
      );

  /// Reference to `request_routing_rule` attribute.
  TfRef<List<Map<String, Object?>>> get requestRoutingRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'request_routing_rule');

  /// Reference to `rewrite_rule_set` attribute.
  TfRef<List<Map<String, Object?>>> get rewriteRuleSet =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rewrite_rule_set');

  /// Reference to `routing_rule` attribute.
  TfRef<List<Map<String, Object?>>> get routingRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'routing_rule');

  /// Reference to `sku` attribute.
  TfRef<List<Map<String, Object?>>> get sku =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'sku');

  /// Reference to `ssl_certificate` attribute.
  TfRef<List<Map<String, Object?>>> get sslCertificate =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ssl_certificate');

  /// Reference to `ssl_policy` attribute.
  TfRef<List<Map<String, Object?>>> get sslPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ssl_policy');

  /// Reference to `ssl_profile` attribute.
  TfRef<List<Map<String, Object?>>> get sslProfile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ssl_profile');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `trusted_client_certificate` attribute.
  TfRef<List<Map<String, Object?>>> get trustedClientCertificate =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'trusted_client_certificate',
      );

  /// Reference to `trusted_root_certificate` attribute.
  TfRef<List<Map<String, Object?>>> get trustedRootCertificate =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'trusted_root_certificate',
      );

  /// Reference to `url_path_map` attribute.
  TfRef<List<Map<String, Object?>>> get urlPathMap =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'url_path_map');

  /// Reference to `waf_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get wafConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'waf_configuration');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
