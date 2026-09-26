// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_policy_table`.
const Set<String> _awsEc2TransitGatewayPolicyTableSensitive = <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_policy_table`.
final class AwsEc2TransitGatewayPolicyTable extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_policy_table';

  AwsEc2TransitGatewayPolicyTable({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> transitGatewayId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'transit_gateway_id': transitGatewayId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewayPolicyTableSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
