// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dns/google_dns_response_policy.dart' show GoogleDnsResponsePolicy;

/// Sensitive field paths for `google_dns_response_policy_rule`.
const Set<String> _googleDnsResponsePolicyRuleSensitive = <String>{};

/// `local_data.local_datas.type` — DNS RR type for a synthetic response.
extension type const DnsResponsePolicyRuleRecordType._(TfArg<String> _)
    implements TfArg<String> {
  DnsResponsePolicyRuleRecordType.variable(String name)
    : this._(TfArg.variable(name));
  DnsResponsePolicyRuleRecordType.expression(String template)
    : this._(TfArg.expression(template));
  const DnsResponsePolicyRuleRecordType.arg(TfArg<String> arg) : this._(arg);

  static const a = DnsResponsePolicyRuleRecordType._(TfArgLiteral('A'));
  static const aaaa = DnsResponsePolicyRuleRecordType._(TfArgLiteral('AAAA'));
  static const caa = DnsResponsePolicyRuleRecordType._(TfArgLiteral('CAA'));
  static const cname = DnsResponsePolicyRuleRecordType._(TfArgLiteral('CNAME'));
  static const dnskey = DnsResponsePolicyRuleRecordType._(
    TfArgLiteral('DNSKEY'),
  );
  static const ds = DnsResponsePolicyRuleRecordType._(TfArgLiteral('DS'));
  static const https = DnsResponsePolicyRuleRecordType._(TfArgLiteral('HTTPS'));
  static const ipsecvpnkey = DnsResponsePolicyRuleRecordType._(
    TfArgLiteral('IPSECVPNKEY'),
  );
  static const mx = DnsResponsePolicyRuleRecordType._(TfArgLiteral('MX'));
  static const naptr = DnsResponsePolicyRuleRecordType._(TfArgLiteral('NAPTR'));
  static const ns = DnsResponsePolicyRuleRecordType._(TfArgLiteral('NS'));
  static const ptr = DnsResponsePolicyRuleRecordType._(TfArgLiteral('PTR'));
  static const soa = DnsResponsePolicyRuleRecordType._(TfArgLiteral('SOA'));
  static const spf = DnsResponsePolicyRuleRecordType._(TfArgLiteral('SPF'));
  static const srv = DnsResponsePolicyRuleRecordType._(TfArgLiteral('SRV'));
  static const sshfp = DnsResponsePolicyRuleRecordType._(TfArgLiteral('SSHFP'));
  static const svcb = DnsResponsePolicyRuleRecordType._(TfArgLiteral('SVCB'));
  static const tlsa = DnsResponsePolicyRuleRecordType._(TfArgLiteral('TLSA'));
  static const txt = DnsResponsePolicyRuleRecordType._(TfArgLiteral('TXT'));

  static const List<DnsResponsePolicyRuleRecordType> values = [
    a,
    aaaa,
    caa,
    cname,
    dnskey,
    ds,
    https,
    ipsecvpnkey,
    mx,
    naptr,
    ns,
    ptr,
    soa,
    spf,
    srv,
    sshfp,
    svcb,
    tlsa,
    txt,
  ];
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
    'type': type.toTfJson(),
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
