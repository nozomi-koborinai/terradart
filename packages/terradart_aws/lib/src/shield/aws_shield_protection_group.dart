// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_protection_group`.
const Set<String> _awsShieldProtectionGroupSensitive = <String>{};

/// Shield Protection Group enum for `aggregation`.
enum ShieldProtectionGroupAggregation implements TerraformEnum {
  sum('SUM'),
  mean('MEAN'),
  max('MAX');

  const ShieldProtectionGroupAggregation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Shield Protection Group enum for `pattern`.
enum ShieldProtectionGroupPattern implements TerraformEnum {
  all('ALL'),
  arbitrary('ARBITRARY'),
  byResourceType('BY_RESOURCE_TYPE');

  const ShieldProtectionGroupPattern(this.terraformValue);
  @override
  final String terraformValue;
}

/// Shield Protection Group Resource enum for `resource_type`.
enum ShieldProtectionGroupResourceType implements TerraformEnum {
  cloudfrontDistribution('CLOUDFRONT_DISTRIBUTION'),
  route53HostedZone('ROUTE_53_HOSTED_ZONE'),
  elasticIpAllocation('ELASTIC_IP_ALLOCATION'),
  classicLoadBalancer('CLASSIC_LOAD_BALANCER'),
  applicationLoadBalancer('APPLICATION_LOAD_BALANCER'),
  globalAccelerator('GLOBAL_ACCELERATOR');

  const ShieldProtectionGroupResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_shield_protection_group`.
final class AwsShieldProtectionGroup extends Resource {
  static const String tfType = 'aws_shield_protection_group';

  AwsShieldProtectionGroup({
    required super.localName,
    required TfArg<ShieldProtectionGroupAggregation> aggregation,
    TfArg<List<String>>? members,
    required TfArg<ShieldProtectionGroupPattern> pattern,
    required TfArg<String> protectionGroupId,
    TfArg<ShieldProtectionGroupResourceType>? resourceType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aggregation': aggregation,
           if (members != null) 'members': members,
           'pattern': pattern,
           'protection_group_id': protectionGroupId,
           if (resourceType != null) 'resource_type': resourceType,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsShieldProtectionGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protection_group_arn` attribute.
  TfRef<String> get protectionGroupArn =>
      TfRef.attribute<String>(this, 'protection_group_arn');
}
