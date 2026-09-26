// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_ip_restriction`.
const Set<String> _awsQuicksightIpRestrictionSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_ip_restriction`.
final class AwsQuicksightIpRestriction extends Resource {
  static const String tfType = 'aws_quicksight_ip_restriction';

  AwsQuicksightIpRestriction({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<bool> enabled,
    TfArg<Map<String, String>>? ipRestrictionRuleMap,
    TfArg<String>? region,
    TfArg<Map<String, String>>? vpcEndpointIdRestrictionRuleMap,
    TfArg<Map<String, String>>? vpcIdRestrictionRuleMap,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'enabled': enabled,
           if (ipRestrictionRuleMap != null)
             'ip_restriction_rule_map': ipRestrictionRuleMap,
           if (region != null) 'region': region,
           if (vpcEndpointIdRestrictionRuleMap != null)
             'vpc_endpoint_id_restriction_rule_map':
                 vpcEndpointIdRestrictionRuleMap,
           if (vpcIdRestrictionRuleMap != null)
             'vpc_id_restriction_rule_map': vpcIdRestrictionRuleMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightIpRestrictionSensitive;
}
