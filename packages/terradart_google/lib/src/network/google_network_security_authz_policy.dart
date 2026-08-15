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

  final NetworkSecurityAuthzPolicyCustomProviderAuthzExtension? authzExtension;

  final NetworkSecurityAuthzPolicyCustomProviderCloudIap? cloudIap;

  Map<String, Object?> encode() => {
    if (authzExtension != null) 'authz_extension': authzExtension!.encode(),
    if (cloudIap != null) 'cloud_iap': cloudIap!.encode(),
  };
}

/// Typed helper for the `custom_provider.authz_extension` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyCustomProviderAuthzExtension {
  const NetworkSecurityAuthzPolicyCustomProviderAuthzExtension({
    required this.resources,
  });

  final TfArg<List<Object?>> resources;

  Map<String, Object?> encode() => {'resources': resources.toTfJson()};
}

/// Typed helper for the `custom_provider.cloud_iap` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyCustomProviderCloudIap {
  const NetworkSecurityAuthzPolicyCustomProviderCloudIap({
    required this.enabled,
  });

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
    if (when != null) 'when': when!.toTfJson(),
    if (from != null) 'from': from!.encode(),
    if (to != null) 'to': to!.encode(),
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

  final List<NetworkSecurityAuthzPolicyHttpRulesFromNotSources>? notSources;

  final List<NetworkSecurityAuthzPolicyHttpRulesFromSources>? sources;

  Map<String, Object?> encode() => {
    if (notSources != null)
      'not_sources': [for (final e in notSources!) e.encode()],
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// Typed helper for the `http_rules.from.not_sources` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromNotSources {
  const NetworkSecurityAuthzPolicyHttpRulesFromNotSources({
    this.ipBlocks,
    this.principals,
    this.resources,
  });

  final List<NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesIpBlocks>?
  ipBlocks;

  final List<NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesPrincipals>?
  principals;

  final List<NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesResources>?
  resources;

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
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesIpBlocks {
  const NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesIpBlocks({
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
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesPrincipals {
  const NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesPrincipals({
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

  final TfArg<
    NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesPrincipalsPrincipalSelector
  >?
  principalSelector;

  final TfArg<String>? suffix;

  final NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesPrincipalsPrincipal?
  principal;

  Map<String, Object?> encode() => {
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (principalSelector != null)
      'principal_selector': principalSelector!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
    if (principal != null) 'principal': principal!.encode(),
  };
}

/// `principal_selector` — derived from the provider schema description.
enum NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesPrincipalsPrincipalSelector
    implements TerraformEnum {
  principalSelectorUnspecified('PRINCIPAL_SELECTOR_UNSPECIFIED'),
  clientCertUriSan('CLIENT_CERT_URI_SAN'),
  clientCertDnsNameSan('CLIENT_CERT_DNS_NAME_SAN'),
  clientCertCommonName('CLIENT_CERT_COMMON_NAME');

  const NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesPrincipalsPrincipalSelector(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `http_rules.from.not_sources.principals.principal` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesPrincipalsPrincipal {
  const NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesPrincipalsPrincipal({
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `http_rules.from.not_sources.resources` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesResources {
  const NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesResources({
    this.iamServiceAccount,
    this.tagValueIdSet,
  });

  final NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesResourcesIamServiceAccount?
  iamServiceAccount;

  final NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesResourcesTagValueIdSet?
  tagValueIdSet;

  Map<String, Object?> encode() => {
    if (iamServiceAccount != null)
      'iam_service_account': iamServiceAccount!.encode(),
    if (tagValueIdSet != null) 'tag_value_id_set': tagValueIdSet!.encode(),
  };
}

/// Typed helper for the `http_rules.from.not_sources.resources.iam_service_account` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesResourcesIamServiceAccount {
  const NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesResourcesIamServiceAccount({
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `http_rules.from.not_sources.resources.tag_value_id_set` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesResourcesTagValueIdSet {
  const NetworkSecurityAuthzPolicyHttpRulesFromNotSourcesResourcesTagValueIdSet({
    this.ids,
  });

  final TfArg<List<Object?>>? ids;

  Map<String, Object?> encode() => {if (ids != null) 'ids': ids!.toTfJson()};
}

/// Typed helper for the `http_rules.from.sources` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromSources {
  const NetworkSecurityAuthzPolicyHttpRulesFromSources({
    this.ipBlocks,
    this.principals,
    this.resources,
  });

  final List<NetworkSecurityAuthzPolicyHttpRulesFromSourcesIpBlocks>? ipBlocks;

  final List<NetworkSecurityAuthzPolicyHttpRulesFromSourcesPrincipals>?
  principals;

  final List<NetworkSecurityAuthzPolicyHttpRulesFromSourcesResources>?
  resources;

  Map<String, Object?> encode() => {
    if (ipBlocks != null) 'ip_blocks': [for (final e in ipBlocks!) e.encode()],
    if (principals != null)
      'principals': [for (final e in principals!) e.encode()],
    if (resources != null)
      'resources': [for (final e in resources!) e.encode()],
  };
}

/// Typed helper for the `http_rules.from.sources.ip_blocks` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromSourcesIpBlocks {
  const NetworkSecurityAuthzPolicyHttpRulesFromSourcesIpBlocks({
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

/// Typed helper for the `http_rules.from.sources.principals` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromSourcesPrincipals {
  const NetworkSecurityAuthzPolicyHttpRulesFromSourcesPrincipals({
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

  final TfArg<
    NetworkSecurityAuthzPolicyHttpRulesFromSourcesPrincipalsPrincipalSelector
  >?
  principalSelector;

  final TfArg<String>? suffix;

  final NetworkSecurityAuthzPolicyHttpRulesFromSourcesPrincipalsPrincipal?
  principal;

  Map<String, Object?> encode() => {
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (principalSelector != null)
      'principal_selector': principalSelector!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
    if (principal != null) 'principal': principal!.encode(),
  };
}

/// `principal_selector` — derived from the provider schema description.
enum NetworkSecurityAuthzPolicyHttpRulesFromSourcesPrincipalsPrincipalSelector
    implements TerraformEnum {
  principalSelectorUnspecified('PRINCIPAL_SELECTOR_UNSPECIFIED'),
  clientCertUriSan('CLIENT_CERT_URI_SAN'),
  clientCertDnsNameSan('CLIENT_CERT_DNS_NAME_SAN'),
  clientCertCommonName('CLIENT_CERT_COMMON_NAME');

  const NetworkSecurityAuthzPolicyHttpRulesFromSourcesPrincipalsPrincipalSelector(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `http_rules.from.sources.principals.principal` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromSourcesPrincipalsPrincipal {
  const NetworkSecurityAuthzPolicyHttpRulesFromSourcesPrincipalsPrincipal({
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `http_rules.from.sources.resources` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromSourcesResources {
  const NetworkSecurityAuthzPolicyHttpRulesFromSourcesResources({
    this.iamServiceAccount,
    this.tagValueIdSet,
  });

  final NetworkSecurityAuthzPolicyHttpRulesFromSourcesResourcesIamServiceAccount?
  iamServiceAccount;

  final NetworkSecurityAuthzPolicyHttpRulesFromSourcesResourcesTagValueIdSet?
  tagValueIdSet;

  Map<String, Object?> encode() => {
    if (iamServiceAccount != null)
      'iam_service_account': iamServiceAccount!.encode(),
    if (tagValueIdSet != null) 'tag_value_id_set': tagValueIdSet!.encode(),
  };
}

/// Typed helper for the `http_rules.from.sources.resources.iam_service_account` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromSourcesResourcesIamServiceAccount {
  const NetworkSecurityAuthzPolicyHttpRulesFromSourcesResourcesIamServiceAccount({
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `http_rules.from.sources.resources.tag_value_id_set` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesFromSourcesResourcesTagValueIdSet {
  const NetworkSecurityAuthzPolicyHttpRulesFromSourcesResourcesTagValueIdSet({
    this.ids,
  });

  final TfArg<List<Object?>>? ids;

  Map<String, Object?> encode() => {if (ids != null) 'ids': ids!.toTfJson()};
}

/// Typed helper for the `http_rules.to` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesTo {
  const NetworkSecurityAuthzPolicyHttpRulesTo({
    this.notOperations,
    this.operations,
  });

  final List<NetworkSecurityAuthzPolicyHttpRulesToNotOperations>? notOperations;

  final List<NetworkSecurityAuthzPolicyHttpRulesToOperations>? operations;

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
final class NetworkSecurityAuthzPolicyHttpRulesToNotOperations {
  const NetworkSecurityAuthzPolicyHttpRulesToNotOperations({
    this.methods,
    this.headerSet,
    this.hosts,
    this.paths,
  });

  final TfArg<List<Object?>>? methods;

  final NetworkSecurityAuthzPolicyHttpRulesToNotOperationsHeaderSet? headerSet;

  final List<NetworkSecurityAuthzPolicyHttpRulesToNotOperationsHosts>? hosts;

  final List<NetworkSecurityAuthzPolicyHttpRulesToNotOperationsPaths>? paths;

  Map<String, Object?> encode() => {
    if (methods != null) 'methods': methods!.toTfJson(),
    if (headerSet != null) 'header_set': headerSet!.encode(),
    if (hosts != null) 'hosts': [for (final e in hosts!) e.encode()],
    if (paths != null) 'paths': [for (final e in paths!) e.encode()],
  };
}

/// Typed helper for the `http_rules.to.not_operations.header_set` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToNotOperationsHeaderSet {
  const NetworkSecurityAuthzPolicyHttpRulesToNotOperationsHeaderSet({
    this.headers,
  });

  final List<
    NetworkSecurityAuthzPolicyHttpRulesToNotOperationsHeaderSetHeaders
  >?
  headers;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
  };
}

/// Typed helper for the `http_rules.to.not_operations.header_set.headers` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToNotOperationsHeaderSetHeaders {
  const NetworkSecurityAuthzPolicyHttpRulesToNotOperationsHeaderSetHeaders({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final NetworkSecurityAuthzPolicyHttpRulesToNotOperationsHeaderSetHeadersValue?
  value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `http_rules.to.not_operations.header_set.headers.value` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToNotOperationsHeaderSetHeadersValue {
  const NetworkSecurityAuthzPolicyHttpRulesToNotOperationsHeaderSetHeadersValue({
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `http_rules.to.not_operations.hosts` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToNotOperationsHosts {
  const NetworkSecurityAuthzPolicyHttpRulesToNotOperationsHosts({
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `http_rules.to.not_operations.paths` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToNotOperationsPaths {
  const NetworkSecurityAuthzPolicyHttpRulesToNotOperationsPaths({
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `http_rules.to.operations` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToOperations {
  const NetworkSecurityAuthzPolicyHttpRulesToOperations({
    this.methods,
    this.headerSet,
    this.hosts,
    this.mcp,
    this.paths,
  });

  final TfArg<List<Object?>>? methods;

  final NetworkSecurityAuthzPolicyHttpRulesToOperationsHeaderSet? headerSet;

  final List<NetworkSecurityAuthzPolicyHttpRulesToOperationsHosts>? hosts;

  final NetworkSecurityAuthzPolicyHttpRulesToOperationsMcp? mcp;

  final List<NetworkSecurityAuthzPolicyHttpRulesToOperationsPaths>? paths;

  Map<String, Object?> encode() => {
    if (methods != null) 'methods': methods!.toTfJson(),
    if (headerSet != null) 'header_set': headerSet!.encode(),
    if (hosts != null) 'hosts': [for (final e in hosts!) e.encode()],
    if (mcp != null) 'mcp': mcp!.encode(),
    if (paths != null) 'paths': [for (final e in paths!) e.encode()],
  };
}

/// Typed helper for the `http_rules.to.operations.header_set` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToOperationsHeaderSet {
  const NetworkSecurityAuthzPolicyHttpRulesToOperationsHeaderSet({
    this.headers,
  });

  final List<NetworkSecurityAuthzPolicyHttpRulesToOperationsHeaderSetHeaders>?
  headers;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
  };
}

/// Typed helper for the `http_rules.to.operations.header_set.headers` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToOperationsHeaderSetHeaders {
  const NetworkSecurityAuthzPolicyHttpRulesToOperationsHeaderSetHeaders({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final NetworkSecurityAuthzPolicyHttpRulesToOperationsHeaderSetHeadersValue?
  value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.encode(),
  };
}

/// Typed helper for the `http_rules.to.operations.header_set.headers.value` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToOperationsHeaderSetHeadersValue {
  const NetworkSecurityAuthzPolicyHttpRulesToOperationsHeaderSetHeadersValue({
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `http_rules.to.operations.hosts` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToOperationsHosts {
  const NetworkSecurityAuthzPolicyHttpRulesToOperationsHosts({
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `http_rules.to.operations.mcp` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToOperationsMcp {
  const NetworkSecurityAuthzPolicyHttpRulesToOperationsMcp({
    this.baseProtocolMethodsOption,
    this.methods,
  });

  final TfArg<
    NetworkSecurityAuthzPolicyHttpRulesToOperationsMcpBaseProtocolMethodsOption
  >?
  baseProtocolMethodsOption;

  final List<NetworkSecurityAuthzPolicyHttpRulesToOperationsMcpMethods>?
  methods;

  Map<String, Object?> encode() => {
    if (baseProtocolMethodsOption != null)
      'base_protocol_methods_option': baseProtocolMethodsOption!.toTfJson(),
    if (methods != null) 'methods': [for (final e in methods!) e.encode()],
  };
}

/// `base_protocol_methods_option` — derived from the provider schema description.
enum NetworkSecurityAuthzPolicyHttpRulesToOperationsMcpBaseProtocolMethodsOption
    implements TerraformEnum {
  skipBaseProtocolMethods('SKIP_BASE_PROTOCOL_METHODS'),
  matchBaseProtocolMethods('MATCH_BASE_PROTOCOL_METHODS');

  const NetworkSecurityAuthzPolicyHttpRulesToOperationsMcpBaseProtocolMethodsOption(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `http_rules.to.operations.mcp.methods` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToOperationsMcpMethods {
  const NetworkSecurityAuthzPolicyHttpRulesToOperationsMcpMethods({
    required this.name,
    this.params,
  });

  final TfArg<String> name;

  final List<NetworkSecurityAuthzPolicyHttpRulesToOperationsMcpMethodsParams>?
  params;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (params != null) 'params': [for (final e in params!) e.encode()],
  };
}

/// Typed helper for the `http_rules.to.operations.mcp.methods.params` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToOperationsMcpMethodsParams {
  const NetworkSecurityAuthzPolicyHttpRulesToOperationsMcpMethodsParams({
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `http_rules.to.operations.paths` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyHttpRulesToOperationsPaths {
  const NetworkSecurityAuthzPolicyHttpRulesToOperationsPaths({
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
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
    if (from != null) 'from': from!.encode(),
    if (to != null) 'to': to!.encode(),
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

  final List<NetworkSecurityAuthzPolicyNetworkRulesFromNotSources>? notSources;

  final List<NetworkSecurityAuthzPolicyNetworkRulesFromSources>? sources;

  Map<String, Object?> encode() => {
    if (notSources != null)
      'not_sources': [for (final e in notSources!) e.encode()],
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// Typed helper for the `network_rules.from.not_sources` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesFromNotSources {
  const NetworkSecurityAuthzPolicyNetworkRulesFromNotSources({
    this.ipBlocks,
    this.principals,
  });

  final List<NetworkSecurityAuthzPolicyNetworkRulesFromNotSourcesIpBlocks>?
  ipBlocks;

  final List<NetworkSecurityAuthzPolicyNetworkRulesFromNotSourcesPrincipals>?
  principals;

  Map<String, Object?> encode() => {
    if (ipBlocks != null) 'ip_blocks': [for (final e in ipBlocks!) e.encode()],
    if (principals != null)
      'principals': [for (final e in principals!) e.encode()],
  };
}

/// Typed helper for the `network_rules.from.not_sources.ip_blocks` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesFromNotSourcesIpBlocks {
  const NetworkSecurityAuthzPolicyNetworkRulesFromNotSourcesIpBlocks({
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

/// Typed helper for the `network_rules.from.not_sources.principals` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesFromNotSourcesPrincipals {
  const NetworkSecurityAuthzPolicyNetworkRulesFromNotSourcesPrincipals({
    this.principalSelector,
    this.principal,
  });

  final TfArg<
    NetworkSecurityAuthzPolicyNetworkRulesFromNotSourcesPrincipalsPrincipalSelector
  >?
  principalSelector;

  final NetworkSecurityAuthzPolicyNetworkRulesFromNotSourcesPrincipalsPrincipal?
  principal;

  Map<String, Object?> encode() => {
    if (principalSelector != null)
      'principal_selector': principalSelector!.toTfJson(),
    if (principal != null) 'principal': principal!.encode(),
  };
}

/// `principal_selector` — derived from the provider schema description.
enum NetworkSecurityAuthzPolicyNetworkRulesFromNotSourcesPrincipalsPrincipalSelector
    implements TerraformEnum {
  principalSelectorUnspecified('PRINCIPAL_SELECTOR_UNSPECIFIED'),
  clientCertUriSan('CLIENT_CERT_URI_SAN'),
  clientCertDnsNameSan('CLIENT_CERT_DNS_NAME_SAN'),
  clientCertCommonName('CLIENT_CERT_COMMON_NAME');

  const NetworkSecurityAuthzPolicyNetworkRulesFromNotSourcesPrincipalsPrincipalSelector(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `network_rules.from.not_sources.principals.principal` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesFromNotSourcesPrincipalsPrincipal {
  const NetworkSecurityAuthzPolicyNetworkRulesFromNotSourcesPrincipalsPrincipal({
    this.exact,
  });

  final TfArg<String>? exact;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
  };
}

/// Typed helper for the `network_rules.from.sources` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesFromSources {
  const NetworkSecurityAuthzPolicyNetworkRulesFromSources({
    this.ipBlocks,
    this.principals,
  });

  final List<NetworkSecurityAuthzPolicyNetworkRulesFromSourcesIpBlocks>?
  ipBlocks;

  final List<NetworkSecurityAuthzPolicyNetworkRulesFromSourcesPrincipals>?
  principals;

  Map<String, Object?> encode() => {
    if (ipBlocks != null) 'ip_blocks': [for (final e in ipBlocks!) e.encode()],
    if (principals != null)
      'principals': [for (final e in principals!) e.encode()],
  };
}

/// Typed helper for the `network_rules.from.sources.ip_blocks` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesFromSourcesIpBlocks {
  const NetworkSecurityAuthzPolicyNetworkRulesFromSourcesIpBlocks({
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

/// Typed helper for the `network_rules.from.sources.principals` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesFromSourcesPrincipals {
  const NetworkSecurityAuthzPolicyNetworkRulesFromSourcesPrincipals({
    this.principalSelector,
    this.principal,
  });

  final TfArg<
    NetworkSecurityAuthzPolicyNetworkRulesFromSourcesPrincipalsPrincipalSelector
  >?
  principalSelector;

  final NetworkSecurityAuthzPolicyNetworkRulesFromSourcesPrincipalsPrincipal?
  principal;

  Map<String, Object?> encode() => {
    if (principalSelector != null)
      'principal_selector': principalSelector!.toTfJson(),
    if (principal != null) 'principal': principal!.encode(),
  };
}

/// `principal_selector` — derived from the provider schema description.
enum NetworkSecurityAuthzPolicyNetworkRulesFromSourcesPrincipalsPrincipalSelector
    implements TerraformEnum {
  principalSelectorUnspecified('PRINCIPAL_SELECTOR_UNSPECIFIED'),
  clientCertUriSan('CLIENT_CERT_URI_SAN'),
  clientCertDnsNameSan('CLIENT_CERT_DNS_NAME_SAN'),
  clientCertCommonName('CLIENT_CERT_COMMON_NAME');

  const NetworkSecurityAuthzPolicyNetworkRulesFromSourcesPrincipalsPrincipalSelector(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `network_rules.from.sources.principals.principal` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesFromSourcesPrincipalsPrincipal {
  const NetworkSecurityAuthzPolicyNetworkRulesFromSourcesPrincipalsPrincipal({
    this.exact,
  });

  final TfArg<String>? exact;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
  };
}

/// Typed helper for the `network_rules.to` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesTo {
  const NetworkSecurityAuthzPolicyNetworkRulesTo({this.operations});

  final List<NetworkSecurityAuthzPolicyNetworkRulesToOperations>? operations;

  Map<String, Object?> encode() => {
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `network_rules.to.operations` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesToOperations {
  const NetworkSecurityAuthzPolicyNetworkRulesToOperations({this.snis});

  final List<NetworkSecurityAuthzPolicyNetworkRulesToOperationsSnis>? snis;

  Map<String, Object?> encode() => {
    if (snis != null) 'snis': [for (final e in snis!) e.encode()],
  };
}

/// Typed helper for the `network_rules.to.operations.snis` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyNetworkRulesToOperationsSnis {
  const NetworkSecurityAuthzPolicyNetworkRulesToOperationsSnis({this.exact});

  final TfArg<String>? exact;

  Map<String, Object?> encode() => {
    if (exact != null) 'exact': exact!.toTfJson(),
  };
}

/// Typed helper for the `target` block of
/// `google_network_security_authz_policy` (derived from provider schema).
@immutable
final class NetworkSecurityAuthzPolicyTarget {
  const NetworkSecurityAuthzPolicyTarget({
    this.loadBalancingScheme,
    this.resources,
  });

  final TfArg<NetworkSecurityAuthzPolicyTargetLoadBalancingScheme>?
  loadBalancingScheme;

  final TfArg<List<Object?>>? resources;

  Map<String, Object?> encode() => {
    if (loadBalancingScheme != null)
      'load_balancing_scheme': loadBalancingScheme!.toTfJson(),
    if (resources != null) 'resources': resources!.toTfJson(),
  };
}

/// `load_balancing_scheme` — derived from the provider schema description.
enum NetworkSecurityAuthzPolicyTargetLoadBalancingScheme
    implements TerraformEnum {
  internalManaged('INTERNAL_MANAGED'),
  externalManaged('EXTERNAL_MANAGED'),
  internalSelfManaged('INTERNAL_SELF_MANAGED');

  const NetworkSecurityAuthzPolicyTargetLoadBalancingScheme(
    this.terraformValue,
  );
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           'location': location,
           'name': name,
           if (policyProfile != null) 'policy_profile': policyProfile,
           if (project != null) 'project': project,
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
