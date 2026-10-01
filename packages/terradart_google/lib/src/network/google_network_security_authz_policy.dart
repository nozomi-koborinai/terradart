// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_authz_policy`.
const Set<String> _googleNetworkSecurityAuthzPolicySensitive = <String>{};

/// Network Security Authz Policy enum for `action`.
enum NetworkSecurityAuthzPolicyAction implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY'),
  custom('CUSTOM');

  const NetworkSecurityAuthzPolicyAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Network Security Authz Policy Policy enum for `policy_profile`.
enum NetworkSecurityAuthzPolicyPolicyProfile implements TerraformEnum {
  requestAuthz('REQUEST_AUTHZ'),
  contentAuthz('CONTENT_AUTHZ');

  const NetworkSecurityAuthzPolicyPolicyProfile(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `custom_provider` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyCustomProvider {
  const NetworkSecurityAuthzPolicyCustomProvider({
    this.authzExtension,
    this.cloudIap,
  });

  final NetworkSecurityAuthzPolicyAuthzExtension? authzExtension;

  final NetworkSecurityAuthzPolicyCloudIap? cloudIap;

  Map<String, Object?> encode() => {
    'authz_extension': ?authzExtension?.encode(),
    'cloud_iap': ?cloudIap?.encode(),
  };
}

/// Typed helper for the `custom_provider.authz_extension` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyAuthzExtension {
  const NetworkSecurityAuthzPolicyAuthzExtension({required this.resources});

  final TfArg<List<String>> resources;

  Map<String, Object?> encode() => {'resources': resources.toTfJson()};
}

/// Typed helper for the `custom_provider.cloud_iap` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyCloudIap {
  const NetworkSecurityAuthzPolicyCloudIap({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `http_rules` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRules {
  const NetworkSecurityAuthzPolicyHttpRules({this.when, this.from, this.to});

  final TfArg<String>? when;

  final NetworkSecurityAuthzPolicyHttpRulesFrom? from;

  final NetworkSecurityAuthzPolicyHttpRulesTo? to;

  Map<String, Object?> encode() => {
    'when': ?when?.toTfJson(),
    'from': ?from?.encode(),
    'to': ?to?.encode(),
  };
}

/// Typed helper for the `http_rules.from` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFrom {
  const NetworkSecurityAuthzPolicyHttpRulesFrom({
    this.notSources,
    this.sources,
  });

  final List<NetworkSecurityAuthzPolicyHttpRulesNotSources>? notSources;

  final List<NetworkSecurityAuthzPolicyHttpRulesSources>? sources;

  Map<String, Object?> encode() => {
    if (notSources != null)
      'not_sources': [for (final e in notSources!) e.encode()],
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// Typed helper for the `http_rules.from.not_sources` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesNotSources {
  const NetworkSecurityAuthzPolicyHttpRulesNotSources({
    this.ipBlocks,
    this.principals,
    this.resources,
  });

  final List<NetworkSecurityAuthzPolicyIpBlocks>? ipBlocks;

  final List<NetworkSecurityAuthzPolicyHttpRulesPrincipals>? principals;

  final List<NetworkSecurityAuthzPolicyResources>? resources;

  Map<String, Object?> encode() => {
    if (ipBlocks != null) 'ip_blocks': [for (final e in ipBlocks!) e.encode()],
    if (principals != null)
      'principals': [for (final e in principals!) e.encode()],
    if (resources != null)
      'resources': [for (final e in resources!) e.encode()],
  };
}

/// Typed helper for the `http_rules.from.not_sources.ip_blocks` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyIpBlocks {
  const NetworkSecurityAuthzPolicyIpBlocks({
    required this.length,
    required this.prefix,
  });

  final TfArg<num> length;

  final TfArg<String> prefix;

  Map<String, Object?> encode() => {
    'length': length.toTfJson(),
    'prefix': prefix.toTfJson(),
  };
}

/// Typed helper for the `http_rules.from.not_sources.principals` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesPrincipals {
  const NetworkSecurityAuthzPolicyHttpRulesPrincipals({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.principalSelector,
    this.suffix,
    this.principal,
  });

  final TfArg<String>? contains;

  final TfArg<String>? exact;

  final TfArg<bool>? ignoreCase;

  final TfArg<String>? prefix;

  final TfArg<NetworkSecurityAuthzPolicyPrincipalSelector>? principalSelector;

  final TfArg<String>? suffix;

  final NetworkSecurityAuthzPolicyHttpRulesPrincipal? principal;

  Map<String, Object?> encode() => {
    'contains': ?contains?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'ignore_case': ?ignoreCase?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'principal_selector': ?principalSelector?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
    'principal': ?principal?.encode(),
  };
}

/// `principal_selector` — derived from the provider schema description.
enum NetworkSecurityAuthzPolicyPrincipalSelector implements TerraformEnum {
  principalSelectorUnspecified('PRINCIPAL_SELECTOR_UNSPECIFIED'),
  clientCertUriSan('CLIENT_CERT_URI_SAN'),
  clientCertDnsNameSan('CLIENT_CERT_DNS_NAME_SAN'),
  clientCertCommonName('CLIENT_CERT_COMMON_NAME');

  const NetworkSecurityAuthzPolicyPrincipalSelector(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `http_rules.from.not_sources.principals.principal` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesPrincipal {
  const NetworkSecurityAuthzPolicyHttpRulesPrincipal({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.suffix,
  });

  final TfArg<String>? contains;

  final TfArg<String>? exact;

  final TfArg<bool>? ignoreCase;

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    'contains': ?contains?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'ignore_case': ?ignoreCase?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
  };
}

/// Typed helper for the `http_rules.from.not_sources.resources` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyResources {
  const NetworkSecurityAuthzPolicyResources({
    this.iamServiceAccount,
    this.tagValueIdSet,
  });

  final NetworkSecurityAuthzPolicyIamServiceAccount? iamServiceAccount;

  final NetworkSecurityAuthzPolicyTagValueIdSet? tagValueIdSet;

  Map<String, Object?> encode() => {
    'iam_service_account': ?iamServiceAccount?.encode(),
    'tag_value_id_set': ?tagValueIdSet?.encode(),
  };
}

/// Typed helper for the `http_rules.from.not_sources.resources.iam_service_account` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyIamServiceAccount {
  const NetworkSecurityAuthzPolicyIamServiceAccount({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.suffix,
  });

  final TfArg<String>? contains;

  final TfArg<String>? exact;

  final TfArg<bool>? ignoreCase;

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    'contains': ?contains?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'ignore_case': ?ignoreCase?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
  };
}

/// Typed helper for the `http_rules.from.not_sources.resources.tag_value_id_set` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyTagValueIdSet {
  const NetworkSecurityAuthzPolicyTagValueIdSet({this.ids});

  final TfArg<List<String>>? ids;

  Map<String, Object?> encode() => {'ids': ?ids?.toTfJson()};
}

/// Typed helper for the `http_rules.from.sources` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesSources {
  const NetworkSecurityAuthzPolicyHttpRulesSources({
    this.ipBlocks,
    this.principals,
    this.resources,
  });

  final List<NetworkSecurityAuthzPolicyIpBlocks>? ipBlocks;

  final List<NetworkSecurityAuthzPolicyHttpRulesPrincipals>? principals;

  final List<NetworkSecurityAuthzPolicyResources>? resources;

  Map<String, Object?> encode() => {
    if (ipBlocks != null) 'ip_blocks': [for (final e in ipBlocks!) e.encode()],
    if (principals != null)
      'principals': [for (final e in principals!) e.encode()],
    if (resources != null)
      'resources': [for (final e in resources!) e.encode()],
  };
}

/// Typed helper for the `http_rules.to` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesTo {
  const NetworkSecurityAuthzPolicyHttpRulesTo({
    this.notOperations,
    this.operations,
  });

  final List<NetworkSecurityAuthzPolicyNotOperations>? notOperations;

  final List<NetworkSecurityAuthzPolicyHttpRulesOperations>? operations;

  Map<String, Object?> encode() => {
    if (notOperations != null)
      'not_operations': [for (final e in notOperations!) e.encode()],
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `http_rules.to.not_operations` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNotOperations {
  const NetworkSecurityAuthzPolicyNotOperations({
    this.methods,
    this.headerSet,
    this.hosts,
    this.paths,
  });

  final TfArg<List<String>>? methods;

  final NetworkSecurityAuthzPolicyHeaderSet? headerSet;

  final List<NetworkSecurityAuthzPolicyHosts>? hosts;

  final List<NetworkSecurityAuthzPolicyPaths>? paths;

  Map<String, Object?> encode() => {
    'methods': ?methods?.toTfJson(),
    'header_set': ?headerSet?.encode(),
    if (hosts != null) 'hosts': [for (final e in hosts!) e.encode()],
    if (paths != null) 'paths': [for (final e in paths!) e.encode()],
  };
}

/// Typed helper for the `http_rules.to.not_operations.header_set` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyHeaderSet {
  const NetworkSecurityAuthzPolicyHeaderSet({this.headers});

  final List<NetworkSecurityAuthzPolicyHeaders>? headers;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
  };
}

/// Typed helper for the `http_rules.to.not_operations.header_set.headers` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyHeaders {
  const NetworkSecurityAuthzPolicyHeaders({this.name, this.value});

  final TfArg<String>? name;

  final NetworkSecurityAuthzPolicyValue? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.encode(),
  };
}

/// Typed helper for the `http_rules.to.not_operations.header_set.headers.value` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyValue {
  const NetworkSecurityAuthzPolicyValue({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.suffix,
  });

  final TfArg<String>? contains;

  final TfArg<String>? exact;

  final TfArg<bool>? ignoreCase;

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    'contains': ?contains?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'ignore_case': ?ignoreCase?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
  };
}

/// Typed helper for the `http_rules.to.not_operations.hosts` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyHosts {
  const NetworkSecurityAuthzPolicyHosts({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.suffix,
  });

  final TfArg<String>? contains;

  final TfArg<String>? exact;

  final TfArg<bool>? ignoreCase;

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    'contains': ?contains?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'ignore_case': ?ignoreCase?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
  };
}

/// Typed helper for the `http_rules.to.not_operations.paths` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyPaths {
  const NetworkSecurityAuthzPolicyPaths({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.suffix,
  });

  final TfArg<String>? contains;

  final TfArg<String>? exact;

  final TfArg<bool>? ignoreCase;

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    'contains': ?contains?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'ignore_case': ?ignoreCase?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
  };
}

/// Typed helper for the `http_rules.to.operations` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesOperations {
  const NetworkSecurityAuthzPolicyHttpRulesOperations({
    this.methods,
    this.headerSet,
    this.hosts,
    this.mcp,
    this.paths,
  });

  final TfArg<List<String>>? methods;

  final NetworkSecurityAuthzPolicyHeaderSet? headerSet;

  final List<NetworkSecurityAuthzPolicyHosts>? hosts;

  final NetworkSecurityAuthzPolicyMcp? mcp;

  final List<NetworkSecurityAuthzPolicyPaths>? paths;

  Map<String, Object?> encode() => {
    'methods': ?methods?.toTfJson(),
    'header_set': ?headerSet?.encode(),
    if (hosts != null) 'hosts': [for (final e in hosts!) e.encode()],
    'mcp': ?mcp?.encode(),
    if (paths != null) 'paths': [for (final e in paths!) e.encode()],
  };
}

/// Typed helper for the `http_rules.to.operations.mcp` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyMcp {
  const NetworkSecurityAuthzPolicyMcp({
    this.baseProtocolMethodsOption,
    this.methods,
  });

  final TfArg<NetworkSecurityAuthzPolicyBaseProtocolMethodsOption>?
  baseProtocolMethodsOption;

  final List<NetworkSecurityAuthzPolicyMethods>? methods;

  Map<String, Object?> encode() => {
    'base_protocol_methods_option': ?baseProtocolMethodsOption?.toTfJson(),
    if (methods != null) 'methods': [for (final e in methods!) e.encode()],
  };
}

/// `base_protocol_methods_option` — derived from the provider schema description.
enum NetworkSecurityAuthzPolicyBaseProtocolMethodsOption
    implements TerraformEnum {
  skipBaseProtocolMethods('SKIP_BASE_PROTOCOL_METHODS'),
  matchBaseProtocolMethods('MATCH_BASE_PROTOCOL_METHODS');

  const NetworkSecurityAuthzPolicyBaseProtocolMethodsOption(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `http_rules.to.operations.mcp.methods` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyMethods {
  const NetworkSecurityAuthzPolicyMethods({required this.name, this.params});

  final TfArg<String> name;

  final List<NetworkSecurityAuthzPolicyParams>? params;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (params != null) 'params': [for (final e in params!) e.encode()],
  };
}

/// Typed helper for the `http_rules.to.operations.mcp.methods.params` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyParams {
  const NetworkSecurityAuthzPolicyParams({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.suffix,
  });

  final TfArg<String>? contains;

  final TfArg<String>? exact;

  final TfArg<bool>? ignoreCase;

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    'contains': ?contains?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'ignore_case': ?ignoreCase?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
  };
}

/// Typed helper for the `network_rules` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRules {
  const NetworkSecurityAuthzPolicyNetworkRules({this.from, this.to});

  final NetworkSecurityAuthzPolicyNetworkRulesFrom? from;

  final NetworkSecurityAuthzPolicyNetworkRulesTo? to;

  Map<String, Object?> encode() => {
    'from': ?from?.encode(),
    'to': ?to?.encode(),
  };
}

/// Typed helper for the `network_rules.from` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesFrom {
  const NetworkSecurityAuthzPolicyNetworkRulesFrom({
    this.notSources,
    this.sources,
  });

  final List<NetworkSecurityAuthzPolicyNetworkRulesNotSources>? notSources;

  final List<NetworkSecurityAuthzPolicyNetworkRulesSources>? sources;

  Map<String, Object?> encode() => {
    if (notSources != null)
      'not_sources': [for (final e in notSources!) e.encode()],
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// Typed helper for the `network_rules.from.not_sources` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesNotSources {
  const NetworkSecurityAuthzPolicyNetworkRulesNotSources({
    this.ipBlocks,
    this.principals,
  });

  final List<NetworkSecurityAuthzPolicyIpBlocks>? ipBlocks;

  final List<NetworkSecurityAuthzPolicyNetworkRulesPrincipals>? principals;

  Map<String, Object?> encode() => {
    if (ipBlocks != null) 'ip_blocks': [for (final e in ipBlocks!) e.encode()],
    if (principals != null)
      'principals': [for (final e in principals!) e.encode()],
  };
}

/// Typed helper for the `network_rules.from.not_sources.principals` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesPrincipals {
  const NetworkSecurityAuthzPolicyNetworkRulesPrincipals({
    this.principalSelector,
    this.principal,
  });

  final TfArg<NetworkSecurityAuthzPolicyPrincipalSelector>? principalSelector;

  final NetworkSecurityAuthzPolicyNetworkRulesPrincipal? principal;

  Map<String, Object?> encode() => {
    'principal_selector': ?principalSelector?.toTfJson(),
    'principal': ?principal?.encode(),
  };
}

/// Typed helper for the `network_rules.from.not_sources.principals.principal` block of
/// `google_network_security_authz_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesPrincipal {
  const NetworkSecurityAuthzPolicyNetworkRulesPrincipal({this.exact});

  final TfArg<String>? exact;

  Map<String, Object?> encode() => {'exact': ?exact?.toTfJson()};
}

/// Typed helper for the `network_rules.from.sources` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesSources {
  const NetworkSecurityAuthzPolicyNetworkRulesSources({
    this.ipBlocks,
    this.principals,
  });

  final List<NetworkSecurityAuthzPolicyIpBlocks>? ipBlocks;

  final List<NetworkSecurityAuthzPolicyNetworkRulesPrincipals>? principals;

  Map<String, Object?> encode() => {
    if (ipBlocks != null) 'ip_blocks': [for (final e in ipBlocks!) e.encode()],
    if (principals != null)
      'principals': [for (final e in principals!) e.encode()],
  };
}

/// Typed helper for the `network_rules.to` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesTo {
  const NetworkSecurityAuthzPolicyNetworkRulesTo({this.operations});

  final List<NetworkSecurityAuthzPolicyNetworkRulesOperations>? operations;

  Map<String, Object?> encode() => {
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `network_rules.to.operations` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesOperations {
  const NetworkSecurityAuthzPolicyNetworkRulesOperations({this.snis});

  final List<NetworkSecurityAuthzPolicySnis>? snis;

  Map<String, Object?> encode() => {
    if (snis != null) 'snis': [for (final e in snis!) e.encode()],
  };
}

/// Typed helper for the `network_rules.to.operations.snis` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicySnis {
  const NetworkSecurityAuthzPolicySnis({this.exact});

  final TfArg<String>? exact;

  Map<String, Object?> encode() => {'exact': ?exact?.toTfJson()};
}

/// Typed helper for the `target` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyTarget {
  const NetworkSecurityAuthzPolicyTarget({
    this.loadBalancingScheme,
    this.resources,
  });

  final TfArg<NetworkSecurityAuthzPolicyLoadBalancingScheme>?
  loadBalancingScheme;

  final TfArg<List<String>>? resources;

  Map<String, Object?> encode() => {
    'load_balancing_scheme': ?loadBalancingScheme?.toTfJson(),
    'resources': ?resources?.toTfJson(),
  };
}

/// `load_balancing_scheme` — derived from the provider schema description.
enum NetworkSecurityAuthzPolicyLoadBalancingScheme implements TerraformEnum {
  internalManaged('INTERNAL_MANAGED'),
  externalManaged('EXTERNAL_MANAGED'),
  internalSelfManaged('INTERNAL_SELF_MANAGED');

  const NetworkSecurityAuthzPolicyLoadBalancingScheme(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_security_authz_policy`.
///
/// AuthzPolicy is a resource that allows to forward traffic to a callout
/// backend designed to scan the traffic for security purposes.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleNetworkSecurityAuthzPolicy extends Resource {
  static const String tfType = 'google_network_security_authz_policy';

  GoogleNetworkSecurityAuthzPolicy({
    required super.localName,
    required TfArg<NetworkSecurityAuthzPolicyAction> action,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? policyProfile,
    TfArg<String>? project,
    NetworkSecurityAuthzPolicyCustomProvider? customProvider,
    List<NetworkSecurityAuthzPolicyHttpRules>? httpRules,
    List<NetworkSecurityAuthzPolicyNetworkRules>? networkRules,
    required NetworkSecurityAuthzPolicyTarget target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'labels': ?labels,
           'location': location,
           'name': name,
           'policy_profile': ?policyProfile,
           'project': ?project,
           if (customProvider != null)
             'custom_provider': TfArg.literal(customProvider.encode()),
           if (httpRules != null)
             'http_rules': TfArg.literal([
               for (final e in httpRules) e.encode(),
             ]),
           if (networkRules != null)
             'network_rules': TfArg.literal([
               for (final e in networkRules) e.encode(),
             ]),
           'target': TfArg.literal(target.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkSecurityAuthzPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityAuthzPolicy>`.
  RefTo<GoogleNetworkSecurityAuthzPolicy> get ref => RefTo.of(this);

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

  /// Reference to `action` attribute.
  TfRef<String> get actionRef => TfRef.attribute<String>(this, 'action');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_profile` attribute.
  TfRef<String> get policyProfileRef =>
      TfRef.attribute<String>(this, 'policy_profile');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
