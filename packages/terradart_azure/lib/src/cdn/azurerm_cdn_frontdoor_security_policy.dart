// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_frontdoor_security_policy`.
const Set<String> _azurermCdnFrontdoorSecurityPolicySensitive = <String>{};

/// Typed helper for the `security_policies` block of
/// `azurerm_cdn_frontdoor_security_policy` (derived from provider schema).
@immutable
final class CdnFrontdoorSecurityPolicySecurityPolicies {
  const CdnFrontdoorSecurityPolicySecurityPolicies({required this.firewall});

  final CdnFrontdoorSecurityPolicyFirewall firewall;

  @internal
  Map<String, Object?> encode() => {'firewall': firewall.encode()};
}

/// Typed helper for the `security_policies.firewall` block of
/// `azurerm_cdn_frontdoor_security_policy` (derived from provider schema).
@immutable
final class CdnFrontdoorSecurityPolicyFirewall {
  const CdnFrontdoorSecurityPolicyFirewall({
    required this.cdnFrontdoorFirewallPolicyId,
    required this.association,
  });

  final TfArg<String> cdnFrontdoorFirewallPolicyId;

  final CdnFrontdoorSecurityPolicyAssociation association;

  @internal
  Map<String, Object?> encode() => {
    'cdn_frontdoor_firewall_policy_id': cdnFrontdoorFirewallPolicyId.toTfJson(),
    'association': association.encode(),
  };
}

/// Typed helper for the `security_policies.firewall.association` block of
/// `azurerm_cdn_frontdoor_security_policy` (derived from provider schema).
@immutable
final class CdnFrontdoorSecurityPolicyAssociation {
  const CdnFrontdoorSecurityPolicyAssociation({
    required this.patternsToMatch,
    required this.domain,
  });

  final EnumList<CdnFrontdoorSecurityPolicyPatternsToMatch> patternsToMatch;

  final List<CdnFrontdoorSecurityPolicyDomain> domain;

  @internal
  Map<String, Object?> encode() => {
    'patterns_to_match': patternsToMatch.toTfJson(),
    'domain': [for (final e in domain) e.encode()],
  };
}

/// `patterns_to_match` — derived from the provider schema description.
extension type const CdnFrontdoorSecurityPolicyPatternsToMatch._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorSecurityPolicyPatternsToMatch.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorSecurityPolicyPatternsToMatch.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorSecurityPolicyPatternsToMatch.arg(TfArg<String> arg)
    : this._(arg);

  static const value = CdnFrontdoorSecurityPolicyPatternsToMatch._(
    TfArgLiteral('/*'),
  );

  static const List<CdnFrontdoorSecurityPolicyPatternsToMatch> values = [value];
}

/// Typed helper for the `security_policies.firewall.association.domain` block of
/// `azurerm_cdn_frontdoor_security_policy` (derived from provider schema).
@immutable
final class CdnFrontdoorSecurityPolicyDomain {
  const CdnFrontdoorSecurityPolicyDomain({required this.cdnFrontdoorDomainId});

  final TfArg<String> cdnFrontdoorDomainId;

  @internal
  Map<String, Object?> encode() => {
    'cdn_frontdoor_domain_id': cdnFrontdoorDomainId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cdn_frontdoor_security_policy`.
final class AzurermCdnFrontdoorSecurityPolicy extends Resource {
  static const String tfType = 'azurerm_cdn_frontdoor_security_policy';

  AzurermCdnFrontdoorSecurityPolicy(
    super.localName, {
    required TfArg<String> cdnFrontdoorProfileId,
    required TfArg<String> name,
    required CdnFrontdoorSecurityPolicySecurityPolicies securityPolicies,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cdn_frontdoor_profile_id': cdnFrontdoorProfileId,
           'name': name,
           'security_policies': TfArg.literal(securityPolicies.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCdnFrontdoorSecurityPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorSecurityPolicy>`.
  RefTo<AzurermCdnFrontdoorSecurityPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_frontdoor_profile_id` attribute.
  TfRef<String> get cdnFrontdoorProfileId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_profile_id');
}
