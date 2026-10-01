// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dns/google_dns_response_policy.dart' show GoogleDnsResponsePolicy;

/// Sensitive field paths for `google_dns_response_policy_rule`.
const Set<String> _googleDnsResponsePolicyRuleSensitive = <String>{};

/// `local_data.local_datas.type` — DNS RR type for a synthetic response.
enum DnsResponsePolicyRuleRecordType implements TerraformEnum {
  a('A'),
  aaaa('AAAA'),
  caa('CAA'),
  cname('CNAME'),
  dnskey('DNSKEY'),
  ds('DS'),
  https('HTTPS'),
  ipsecvpnkey('IPSECVPNKEY'),
  mx('MX'),
  naptr('NAPTR'),
  ns('NS'),
  ptr('PTR'),
  soa('SOA'),
  spf('SPF'),
  srv('SRV'),
  sshfp('SSHFP'),
  svcb('SVCB'),
  tlsa('TLSA'),
  txt('TXT');

  const DnsResponsePolicyRuleRecordType(this.terraformValue);
  @override
  final String terraformValue;
}

@immutable
class DnsResponsePolicyRuleLocalDataEntry {
  const DnsResponsePolicyRuleLocalDataEntry({
    required this.name,
    required this.type,
    required this.ttl,
    required this.rrdatas,
  });

  final TfArg<String> name;
  final DnsResponsePolicyRuleRecordType type;
  final TfArg<int> ttl;
  final List<String> rrdatas;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    'type': type.terraformValue,
    'ttl': ttl.toTfJson(),
    'rrdatas': rrdatas,
  };
}

@immutable
class DnsResponsePolicyRuleLocalData {
  const DnsResponsePolicyRuleLocalData({required this.localDatas});

  final List<DnsResponsePolicyRuleLocalDataEntry> localDatas;

  Map<String, Object?> encode() => {
    'local_datas': localDatas.map((d) => d.toArgMap()).toList(),
  };
}

/// Factory wrapper for `google_dns_response_policy_rule`.
///
/// A Response Policy Rule is a selector that applies its behavior to queries
/// that match the selector. Selectors are DNS names, which may be wildcards or
/// exact matches. Each DNS query subject to a Response Policy matches at most
/// one ResponsePolicyRule, as identified by the dns_name field with the longest
/// matching suffix.
final class GoogleDnsResponsePolicyRule extends Resource {
  static const String tfType = 'google_dns_response_policy_rule';

  GoogleDnsResponsePolicyRule(
    super.localName, {
    required RefTo<GoogleDnsResponsePolicy> responsePolicy,
    required TfArg<String> ruleName,
    required TfArg<String> dnsName,
    TfArg<String>? project,
    DnsResponsePolicyRuleLocalData? localData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'response_policy': responsePolicy.encodeAs('response_policy_name'),
           'rule_name': ruleName,
           'dns_name': dnsName,
           'project': ?project,
           if (localData != null)
             'local_data': TfArg.literal([localData.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsResponsePolicyRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDnsResponsePolicyRule>`.
  RefTo<GoogleDnsResponsePolicyRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `response_policy` attribute.
  TfRef<String> get responsePolicy =>
      TfRef.attribute<String>(this, 'response_policy');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleName => TfRef.attribute<String>(this, 'rule_name');
}
