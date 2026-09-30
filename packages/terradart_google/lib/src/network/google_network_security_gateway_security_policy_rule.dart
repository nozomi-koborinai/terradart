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
    super.provider,
    super.timeouts,
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
           'application_matcher': ?applicationMatcher,
           'description': ?description,
           'tls_inspection_enabled': ?tlsInspectionEnabled,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityGatewaySecurityPolicyRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityGatewaySecurityPolicyRule>`.
  RefTo<GoogleNetworkSecurityGatewaySecurityPolicyRule> get ref =>
      RefTo.of(this);

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

  /// Reference to `application_matcher` attribute.
  TfRef<String> get applicationMatcherRef =>
      TfRef.attribute<String>(this, 'application_matcher');

  /// Reference to `basic_profile` attribute.
  TfRef<String> get basicProfileRef =>
      TfRef.attribute<String>(this, 'basic_profile');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `gateway_security_policy` attribute.
  TfRef<String> get gatewaySecurityPolicyRef =>
      TfRef.attribute<String>(this, 'gateway_security_policy');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `priority` attribute.
  TfRef<num> get priorityRef => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `session_matcher` attribute.
  TfRef<String> get sessionMatcherRef =>
      TfRef.attribute<String>(this, 'session_matcher');

  /// Reference to `tls_inspection_enabled` attribute.
  TfRef<bool> get tlsInspectionEnabledRef =>
      TfRef.attribute<bool>(this, 'tls_inspection_enabled');
}
