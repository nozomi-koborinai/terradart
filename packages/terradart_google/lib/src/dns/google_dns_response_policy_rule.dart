// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
final class GoogleDnsResponsePolicyRule extends Resource {
  static const String tfType = 'google_dns_response_policy_rule';

  GoogleDnsResponsePolicyRule({
    required super.localName,
    required TfArg<String> responsePolicy,
    required TfArg<String> ruleName,
    required TfArg<String> dnsName,
    TfArg<String>? project,
    DnsResponsePolicyRuleLocalData? localData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'response_policy': responsePolicy,
           'rule_name': ruleName,
           'dns_name': dnsName,
           if (project != null) 'project': project,
           if (localData != null)
             'local_data': TfArg.literal([localData.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsResponsePolicyRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
