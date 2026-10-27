// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_application_load_balancer_security_policy`.
const Set<String> _azurermApplicationLoadBalancerSecurityPolicySensitive =
    <String>{};

/// Factory wrapper for `azurerm_application_load_balancer_security_policy`.
final class AzurermApplicationLoadBalancerSecurityPolicy extends Resource {
  static const String tfType =
      'azurerm_application_load_balancer_security_policy';

  AzurermApplicationLoadBalancerSecurityPolicy(
    super.localName, {
    required TfArg<String> applicationLoadBalancerId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> webApplicationFirewallPolicyId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_load_balancer_id': applicationLoadBalancerId,
           'location': location,
           'name': name,
           'tags': ?tags,
           'web_application_firewall_policy_id': webApplicationFirewallPolicyId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApplicationLoadBalancerSecurityPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationLoadBalancerSecurityPolicy>`.
  RefTo<AzurermApplicationLoadBalancerSecurityPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_load_balancer_id` attribute.
  TfRef<String> get applicationLoadBalancerId =>
      TfRef.attribute<String>(this, 'application_load_balancer_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `web_application_firewall_policy_id` attribute.
  TfRef<String> get webApplicationFirewallPolicyId =>
      TfRef.attribute<String>(this, 'web_application_firewall_policy_id');
}
