// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_firewall_policy`.
const Set<String> _azurermFirewallPolicySensitive = <String>{};

/// Typed helper for the `dns` block of
/// `azurerm_firewall_policy` (derived from provider schema).
@immutable
final class FirewallPolicyDns {
  const FirewallPolicyDns({this.proxyEnabled, this.servers});

  final TfArg<bool>? proxyEnabled;

  final TfArg<List<String>>? servers;

  @internal
  Map<String, Object?> encode() => {
    'proxy_enabled': ?proxyEnabled?.toTfJson(),
    'servers': ?servers?.toTfJson(),
  };
}

/// Typed helper for the `explicit_proxy` block of
/// `azurerm_firewall_policy` (derived from provider schema).
@immutable
final class FirewallPolicyExplicitProxy {
  const FirewallPolicyExplicitProxy({
    this.enablePacFile,
    this.enabled,
    this.httpPort,
    this.httpsPort,
    this.pacFile,
    this.pacFilePort,
  });

  final TfArg<bool>? enablePacFile;

  final TfArg<bool>? enabled;

  final TfArg<num>? httpPort;

  final TfArg<num>? httpsPort;

  final TfArg<String>? pacFile;

  final TfArg<num>? pacFilePort;

  @internal
  Map<String, Object?> encode() => {
    'enable_pac_file': ?enablePacFile?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'http_port': ?httpPort?.toTfJson(),
    'https_port': ?httpsPort?.toTfJson(),
    'pac_file': ?pacFile?.toTfJson(),
    'pac_file_port': ?pacFilePort?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_firewall_policy` (derived from provider schema).
@immutable
final class FirewallPolicyIdentity {
  const FirewallPolicyIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `insights` block of
/// `azurerm_firewall_policy` (derived from provider schema).
@immutable
final class FirewallPolicyInsights {
  const FirewallPolicyInsights({
    required this.defaultLogAnalyticsWorkspaceId,
    required this.enabled,
    this.retentionInDays,
    this.logAnalyticsWorkspace,
  });

  final TfArg<String> defaultLogAnalyticsWorkspaceId;

  final TfArg<bool> enabled;

  final TfArg<num>? retentionInDays;

  final List<FirewallPolicyLogAnalyticsWorkspace>? logAnalyticsWorkspace;

  @internal
  Map<String, Object?> encode() => {
    'default_log_analytics_workspace_id': defaultLogAnalyticsWorkspaceId
        .toTfJson(),
    'enabled': enabled.toTfJson(),
    'retention_in_days': ?retentionInDays?.toTfJson(),
    if (logAnalyticsWorkspace != null)
      'log_analytics_workspace': [
        for (final e in logAnalyticsWorkspace!) e.encode(),
      ],
  };
}

/// Typed helper for the `insights.log_analytics_workspace` block of
/// `azurerm_firewall_policy` (derived from provider schema).
@immutable
final class FirewallPolicyLogAnalyticsWorkspace {
  const FirewallPolicyLogAnalyticsWorkspace({
    required this.firewallLocation,
    required this.id,
  });

  final TfArg<String> firewallLocation;

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {
    'firewall_location': firewallLocation.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `intrusion_detection` block of
/// `azurerm_firewall_policy` (derived from provider schema).
@immutable
final class FirewallPolicyIntrusionDetection {
  const FirewallPolicyIntrusionDetection({
    this.mode,
    this.privateRanges,
    this.signatureOverrides,
    this.trafficBypass,
  });

  final TfArg<String>? mode;

  final TfArg<List<String>>? privateRanges;

  final List<FirewallPolicySignatureOverrides>? signatureOverrides;

  final List<FirewallPolicyTrafficBypass>? trafficBypass;

  @internal
  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'private_ranges': ?privateRanges?.toTfJson(),
    if (signatureOverrides != null)
      'signature_overrides': [for (final e in signatureOverrides!) e.encode()],
    if (trafficBypass != null)
      'traffic_bypass': [for (final e in trafficBypass!) e.encode()],
  };
}

/// Typed helper for the `intrusion_detection.signature_overrides` block of
/// `azurerm_firewall_policy` (derived from provider schema).
@immutable
final class FirewallPolicySignatureOverrides {
  const FirewallPolicySignatureOverrides({this.id, this.state});

  final TfArg<String>? id;

  final TfArg<String>? state;

  @internal
  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'state': ?state?.toTfJson(),
  };
}

/// Typed helper for the `intrusion_detection.traffic_bypass` block of
/// `azurerm_firewall_policy` (derived from provider schema).
@immutable
final class FirewallPolicyTrafficBypass {
  const FirewallPolicyTrafficBypass({
    this.description,
    this.destinationAddresses,
    this.destinationIpGroups,
    this.destinationPorts,
    required this.name,
    required this.protocol,
    this.sourceAddresses,
    this.sourceIpGroups,
  });

  final TfArg<String>? description;

  final TfArg<List<String>>? destinationAddresses;

  final TfArg<List<String>>? destinationIpGroups;

  final TfArg<List<String>>? destinationPorts;

  final TfArg<String> name;

  final TfArg<String> protocol;

  final TfArg<List<String>>? sourceAddresses;

  final TfArg<List<String>>? sourceIpGroups;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'destination_addresses': ?destinationAddresses?.toTfJson(),
    'destination_ip_groups': ?destinationIpGroups?.toTfJson(),
    'destination_ports': ?destinationPorts?.toTfJson(),
    'name': name.toTfJson(),
    'protocol': protocol.toTfJson(),
    'source_addresses': ?sourceAddresses?.toTfJson(),
    'source_ip_groups': ?sourceIpGroups?.toTfJson(),
  };
}

/// Typed helper for the `threat_intelligence_allowlist` block of
/// `azurerm_firewall_policy` (derived from provider schema).
@immutable
final class FirewallPolicyThreatIntelligenceAllowlist {
  const FirewallPolicyThreatIntelligenceAllowlist({
    this.fqdns,
    this.ipAddresses,
  });

  final TfArg<List<String>>? fqdns;

  final TfArg<List<String>>? ipAddresses;

  @internal
  Map<String, Object?> encode() => {
    'fqdns': ?fqdns?.toTfJson(),
    'ip_addresses': ?ipAddresses?.toTfJson(),
  };
}

/// Typed helper for the `tls_certificate` block of
/// `azurerm_firewall_policy` (derived from provider schema).
@immutable
final class FirewallPolicyTlsCertificate {
  const FirewallPolicyTlsCertificate({
    required this.keyVaultSecretId,
    required this.name,
  });

  final TfArg<String> keyVaultSecretId;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_secret_id': keyVaultSecretId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_firewall_policy`.
final class AzurermFirewallPolicy extends Resource {
  static const String tfType = 'azurerm_firewall_policy';

  AzurermFirewallPolicy(
    super.localName, {
    TfArg<bool>? autoLearnPrivateRangesEnabled,
    TfArg<String>? basePolicyId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<List<String>>? privateIpRanges,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? sku,
    TfArg<bool>? sqlRedirectAllowed,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? threatIntelligenceMode,
    FirewallPolicyDns? dns,
    FirewallPolicyExplicitProxy? explicitProxy,
    FirewallPolicyIdentity? identity,
    FirewallPolicyInsights? insights,
    FirewallPolicyIntrusionDetection? intrusionDetection,
    FirewallPolicyThreatIntelligenceAllowlist? threatIntelligenceAllowlist,
    FirewallPolicyTlsCertificate? tlsCertificate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_learn_private_ranges_enabled': ?autoLearnPrivateRangesEnabled,
           'base_policy_id': ?basePolicyId,
           'location': location,
           'name': name,
           'private_ip_ranges': ?privateIpRanges,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': ?sku,
           'sql_redirect_allowed': ?sqlRedirectAllowed,
           'tags': ?tags,
           'threat_intelligence_mode': ?threatIntelligenceMode,
           if (dns != null) 'dns': TfArg.literal(dns.encode()),
           if (explicitProxy != null)
             'explicit_proxy': TfArg.literal(explicitProxy.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (insights != null) 'insights': TfArg.literal(insights.encode()),
           if (intrusionDetection != null)
             'intrusion_detection': TfArg.literal(intrusionDetection.encode()),
           if (threatIntelligenceAllowlist != null)
             'threat_intelligence_allowlist': TfArg.literal(
               threatIntelligenceAllowlist.encode(),
             ),
           if (tlsCertificate != null)
             'tls_certificate': TfArg.literal(tlsCertificate.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermFirewallPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFirewallPolicy>`.
  RefTo<AzurermFirewallPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `child_policies` attribute.
  TfRef<List<String>> get childPolicies =>
      TfRef.attribute<List<String>>(this, 'child_policies');

  /// Reference to `firewalls` attribute.
  TfRef<List<String>> get firewalls =>
      TfRef.attribute<List<String>>(this, 'firewalls');

  /// Reference to `rule_collection_groups` attribute.
  TfRef<List<String>> get ruleCollectionGroups =>
      TfRef.attribute<List<String>>(this, 'rule_collection_groups');

  /// Reference to `auto_learn_private_ranges_enabled` attribute.
  TfRef<bool> get autoLearnPrivateRangesEnabled =>
      TfRef.attribute<bool>(this, 'auto_learn_private_ranges_enabled');

  /// Reference to `base_policy_id` attribute.
  TfRef<String> get basePolicyId =>
      TfRef.attribute<String>(this, 'base_policy_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_ip_ranges` attribute.
  TfRef<List<String>> get privateIpRanges =>
      TfRef.attribute<List<String>>(this, 'private_ip_ranges');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `sql_redirect_allowed` attribute.
  TfRef<bool> get sqlRedirectAllowed =>
      TfRef.attribute<bool>(this, 'sql_redirect_allowed');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `threat_intelligence_mode` attribute.
  TfRef<String> get threatIntelligenceMode =>
      TfRef.attribute<String>(this, 'threat_intelligence_mode');
}
