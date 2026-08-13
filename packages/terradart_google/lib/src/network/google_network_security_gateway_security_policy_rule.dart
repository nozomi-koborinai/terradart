// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_gateway_security_policy_rule`.
const Set<String> _googleNetworkSecurityGatewaySecurityPolicyRuleSensitive =
    <String>{};

/// Network Security Gateway Security Policy Rule Basic enum for `basic_profile`.
enum NetworkSecurityGatewaySecurityPolicyRuleBasicProfile
    implements TerraformEnum {
  basicProfileUnspecified('BASIC_PROFILE_UNSPECIFIED'),
  allow('ALLOW'),
  deny('DENY');

  const NetworkSecurityGatewaySecurityPolicyRuleBasicProfile(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_security_gateway_security_policy_rule`.
///
/// The GatewaySecurityPolicyRule resource is in a nested collection within a
/// GatewaySecurityPolicy and represents a traffic matching condition and
/// associated action to perform.
///
/// Network Security **gateway security policy rule** — a CEL session
/// matcher plus ALLOW/DENY on a [GoogleNetworkSecurityGatewaySecurityPolicy].
///
/// Creating a rule does not provision a Secure Web Proxy gateway or
/// inspect live traffic. Data-plane SKUs fire only when an SWP gateway
/// is attached and processes bytes.
///
/// Enable `networksecurity.googleapis.com` via [GoogleProjectService]
/// before apply. Location must match the parent policy.
///
/// Example:
/// ```dart
/// GoogleNetworkSecurityGatewaySecurityPolicyRule(
///   localName: 'allow_example',
///   name: TfArg.literal('terradart-allow-example'),
///   location: TfArg.literal('us-central1'),
///   gatewaySecurityPolicy: TfArg.ref(policy.nameRef),
///   enabled: TfArg.literal(true),
///   priority: TfArg.literal(1),
///   sessionMatcher: TfArg.literal("host() == 'example.com'"),
///   basicProfile: TfArg.literal(
///     NetworkSecurityGatewaySecurityPolicyRuleBasicProfile.allow,
///   ),
/// );
/// ```
final class GoogleNetworkSecurityGatewaySecurityPolicyRule extends Resource {
  static const String tfType =
      'google_network_security_gateway_security_policy_rule';

  GoogleNetworkSecurityGatewaySecurityPolicyRule({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> gatewaySecurityPolicy,
    required TfArg<bool> enabled,
    required TfArg<num> priority,
    required TfArg<String> sessionMatcher,
    required TfArg<NetworkSecurityGatewaySecurityPolicyRuleBasicProfile>
    basicProfile,
    TfArg<String>? applicationMatcher,
    TfArg<String>? description,
    TfArg<bool>? tlsInspectionEnabled,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'gateway_security_policy': gatewaySecurityPolicy,
           'enabled': enabled,
           'priority': priority,
           'session_matcher': sessionMatcher,
           'basic_profile': basicProfile,
           if (applicationMatcher != null)
             'application_matcher': applicationMatcher,
           if (description != null) 'description': description,
           if (tlsInspectionEnabled != null)
             'tls_inspection_enabled': tlsInspectionEnabled,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityGatewaySecurityPolicyRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
