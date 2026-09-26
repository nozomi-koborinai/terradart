// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_security_group_rule`.
const Set<String> _awsVpcSecurityGroupRuleSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpc_security_group_rule` (derived from provider schema).
@immutable
final class DataVpcSecurityGroupRuleFilter {
  const DataVpcSecurityGroupRuleFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_security_group_rule`.
final class DataAwsVpcSecurityGroupRule extends Data {
  static const String tfType = 'aws_vpc_security_group_rule';

  DataAwsVpcSecurityGroupRule({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? securityGroupRuleId,
    List<DataVpcSecurityGroupRuleFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (securityGroupRuleId != null)
             'security_group_rule_id': securityGroupRuleId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcSecurityGroupRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cidr_ipv4` attribute.
  TfRef<String> get cidrIpv4 => TfRef.attribute<String>(this, 'cidr_ipv4');

  /// Reference to `cidr_ipv6` attribute.
  TfRef<String> get cidrIpv6 => TfRef.attribute<String>(this, 'cidr_ipv6');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `from_port` attribute.
  TfRef<num> get fromPort => TfRef.attribute<num>(this, 'from_port');

  /// Reference to `ip_protocol` attribute.
  TfRef<String> get ipProtocol => TfRef.attribute<String>(this, 'ip_protocol');

  /// Reference to `is_egress` attribute.
  TfRef<bool> get isEgress => TfRef.attribute<bool>(this, 'is_egress');

  /// Reference to `prefix_list_id` attribute.
  TfRef<String> get prefixListId =>
      TfRef.attribute<String>(this, 'prefix_list_id');

  /// Reference to `referenced_security_group_id` attribute.
  TfRef<String> get referencedSecurityGroupId =>
      TfRef.attribute<String>(this, 'referenced_security_group_id');

  /// Reference to `security_group_id` attribute.
  TfRef<String> get securityGroupId =>
      TfRef.attribute<String>(this, 'security_group_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `to_port` attribute.
  TfRef<num> get toPort => TfRef.attribute<num>(this, 'to_port');
}
