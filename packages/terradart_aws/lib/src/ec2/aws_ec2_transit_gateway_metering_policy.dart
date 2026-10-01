// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_metering_policy`.
const Set<String> _awsEc2TransitGatewayMeteringPolicySensitive = <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_metering_policy`.
final class AwsEc2TransitGatewayMeteringPolicy extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_metering_policy';

  AwsEc2TransitGatewayMeteringPolicy({
    required super.localName,
    TfArg<List<String>>? middleboxAttachmentIds,
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
           'middlebox_attachment_ids': ?middleboxAttachmentIds,
           'region': ?region,
           'tags': ?tags,
           'transit_gateway_id': transitGatewayId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayMeteringPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGatewayMeteringPolicy>`.
  RefTo<AwsEc2TransitGatewayMeteringPolicy> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `transit_gateway_metering_policy_id` attribute.
  TfRef<String> get transitGatewayMeteringPolicyId =>
      TfRef.attribute<String>(this, 'transit_gateway_metering_policy_id');

  /// Reference to `middlebox_attachment_ids` attribute.
  TfRef<List<String>> get middleboxAttachmentIds =>
      TfRef.attribute<List<String>>(this, 'middlebox_attachment_ids');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');
}
