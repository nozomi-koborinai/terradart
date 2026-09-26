// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_policy_table_association`.
const Set<String> _awsEc2TransitGatewayPolicyTableAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_policy_table_association`.
final class AwsEc2TransitGatewayPolicyTableAssociation extends Resource {
  static const String tfType =
      'aws_ec2_transit_gateway_policy_table_association';

  AwsEc2TransitGatewayPolicyTableAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> transitGatewayAttachmentId,
    required TfArg<String> transitGatewayPolicyTableId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'transit_gateway_attachment_id': transitGatewayAttachmentId,
           'transit_gateway_policy_table_id': transitGatewayPolicyTableId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayPolicyTableAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');
}
