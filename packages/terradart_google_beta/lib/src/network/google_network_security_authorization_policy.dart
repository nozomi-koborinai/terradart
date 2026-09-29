// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_authorization_policy`.
const Set<String> _googleNetworkSecurityAuthorizationPolicySensitive =
    <String>{};

/// Network Security Authorization Policy enum for `action`.
enum NetworkSecurityAuthorizationPolicyAction implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const NetworkSecurityAuthorizationPolicyAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules` block of
/// `google_network_security_authorization_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthorizationPolicyRules {
  const NetworkSecurityAuthorizationPolicyRules({
    this.destinations,
    this.sources,
  });

  final List<NetworkSecurityAuthorizationPolicyRulesDestinations>? destinations;

  final List<NetworkSecurityAuthorizationPolicyRulesSources>? sources;

  Map<String, Object?> encode() => {
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// Typed helper for the `rules.destinations` block of
/// `google_network_security_authorization_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthorizationPolicyRulesDestinations {
  const NetworkSecurityAuthorizationPolicyRulesDestinations({
    required this.hosts,
    required this.methods,
    required this.ports,
    this.httpHeaderMatch,
  });

  final TfArg<List<Object?>> hosts;

  final TfArg<List<Object?>> methods;

  final TfArg<List<Object?>> ports;

  final NetworkSecurityAuthorizationPolicyRulesDestinationsHttpHeaderMatch?
  httpHeaderMatch;

  Map<String, Object?> encode() => {
    'hosts': hosts.toTfJson(),
    'methods': methods.toTfJson(),
    'ports': ports.toTfJson(),
    if (httpHeaderMatch != null) 'http_header_match': httpHeaderMatch!.encode(),
  };
}

/// Typed helper for the `rules.destinations.http_header_match` block of
/// `google_network_security_authorization_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthorizationPolicyRulesDestinationsHttpHeaderMatch {
  const NetworkSecurityAuthorizationPolicyRulesDestinationsHttpHeaderMatch({
    required this.headerName,
    required this.regexMatch,
  });

  final TfArg<String> headerName;

  final TfArg<String> regexMatch;

  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'regex_match': regexMatch.toTfJson(),
  };
}

/// Typed helper for the `rules.sources` block of
/// `google_network_security_authorization_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthorizationPolicyRulesSources {
  const NetworkSecurityAuthorizationPolicyRulesSources({
    this.ipBlocks,
    this.principals,
  });

  final TfArg<List<Object?>>? ipBlocks;

  final TfArg<List<Object?>>? principals;

  Map<String, Object?> encode() => {
    if (ipBlocks != null) 'ip_blocks': ipBlocks!.toTfJson(),
    if (principals != null) 'principals': principals!.toTfJson(),
  };
}

/// Factory wrapper for `google_network_security_authorization_policy`.
///
/// AuthorizationPolicy is a resource that specifies how a server should
/// authorize incoming connections. This resource in itself does not change the
/// configuration unless it's attached to a target https proxy or endpoint
/// config selector resource.
final class GoogleNetworkSecurityAuthorizationPolicy extends Resource {
  static const String tfType = 'google_network_security_authorization_policy';

  GoogleNetworkSecurityAuthorizationPolicy({
    required super.localName,
    required TfArg<NetworkSecurityAuthorizationPolicyAction> action,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? location,
    required TfArg<String> name,
    TfArg<String>? project,
    List<NetworkSecurityAuthorizationPolicyRules>? rules,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'action': action,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (location != null) 'location': location,
           'name': name,
           if (project != null) 'project': project,
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityAuthorizationPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
