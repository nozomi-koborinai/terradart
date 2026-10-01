// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_internet_gateway_attachment`.
const Set<String> _awsInternetGatewayAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_internet_gateway_attachment`.
final class AwsInternetGatewayAttachment extends Resource {
  static const String tfType = 'aws_internet_gateway_attachment';

  AwsInternetGatewayAttachment({
    required super.localName,
    required TfArg<String> internetGatewayId,
    TfArg<String>? region,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'internet_gateway_id': internetGatewayId,
           'region': ?region,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInternetGatewayAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsInternetGatewayAttachment>`.
  RefTo<AwsInternetGatewayAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `internet_gateway_id` attribute.
  TfRef<String> get internetGatewayId =>
      TfRef.attribute<String>(this, 'internet_gateway_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
