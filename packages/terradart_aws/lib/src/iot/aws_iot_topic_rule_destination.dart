// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_topic_rule_destination`.
const Set<String> _awsIotTopicRuleDestinationSensitive = <String>{};

/// Typed helper for the `vpc_configuration` block of
/// `aws_iot_topic_rule_destination` (derived from provider schema).
@immutable
final class IotTopicRuleDestinationVpcConfiguration {
  const IotTopicRuleDestinationVpcConfiguration({
    required this.roleArn,
    this.securityGroups,
    required this.subnetIds,
    required this.vpcId,
  });

  final TfArg<String> roleArn;

  final TfArg<List<Object?>>? securityGroups;

  final TfArg<List<Object?>> subnetIds;

  final TfArg<String> vpcId;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.toTfJson(),
    if (securityGroups != null) 'security_groups': securityGroups!.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
    'vpc_id': vpcId.toTfJson(),
  };
}

/// Factory wrapper for `aws_iot_topic_rule_destination`.
final class AwsIotTopicRuleDestination extends Resource {
  static const String tfType = 'aws_iot_topic_rule_destination';

  AwsIotTopicRuleDestination({
    required super.localName,
    TfArg<bool>? enabled,
    TfArg<String>? region,
    required IotTopicRuleDestinationVpcConfiguration vpcConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enabled != null) 'enabled': enabled,
           if (region != null) 'region': region,
           'vpc_configuration': TfArg.literal(vpcConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotTopicRuleDestinationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
