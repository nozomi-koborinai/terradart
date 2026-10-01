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

  final List<NetworkSecurityAuthorizationPolicyDestinations>? destinations;

  final List<NetworkSecurityAuthorizationPolicySources>? sources;

  Map<String, Object?> encode() => {
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// Typed helper for the `rules.destinations` block of
/// `google_network_security_authorization_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthorizationPolicyDestinations {
  const NetworkSecurityAuthorizationPolicyDestinations({
    required this.hosts,
    required this.methods,
    required this.ports,
    this.httpHeaderMatch,
  });

  final TfArg<List<String>> hosts;

  final TfArg<List<String>> methods;

  final TfArg<List<num>> ports;

  final NetworkSecurityAuthorizationPolicyHttpHeaderMatch? httpHeaderMatch;

  Map<String, Object?> encode() => {
    'hosts': hosts.toTfJson(),
    'methods': methods.toTfJson(),
    'ports': ports.toTfJson(),
    'http_header_match': ?httpHeaderMatch?.encode(),
  };
}

/// Typed helper for the `rules.destinations.http_header_match` block of
/// `google_network_security_authorization_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthorizationPolicyHttpHeaderMatch {
  const NetworkSecurityAuthorizationPolicyHttpHeaderMatch({
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
final class NetworkSecurityAuthorizationPolicySources {
  const NetworkSecurityAuthorizationPolicySources({
    this.ipBlocks,
    this.principals,
  });

  final TfArg<List<String>>? ipBlocks;

  final TfArg<List<String>>? principals;

  Map<String, Object?> encode() => {
    'ip_blocks': ?ipBlocks?.toTfJson(),
    'principals': ?principals?.toTfJson(),
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

  GoogleNetworkSecurityAuthorizationPolicy(
    super.localName, {
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
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'labels': ?labels,
           'location': ?location,
           'name': name,
           'project': ?project,
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityAuthorizationPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityAuthorizationPolicy>`.
  RefTo<GoogleNetworkSecurityAuthorizationPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
