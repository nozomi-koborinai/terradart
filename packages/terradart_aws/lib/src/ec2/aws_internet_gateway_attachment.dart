// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_internet_gateway_attachment`.
const Set<String> _awsInternetGatewayAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_internet_gateway_attachment`.
final class AwsInternetGatewayAttachment extends Resource {
  static const String tfType = 'aws_internet_gateway_attachment';

  AwsInternetGatewayAttachment({
    required super.localName,
    required TfArg<String> internetGatewayId,
    TfArg<String>? region,
    required TfArg<String> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'internet_gateway_id': internetGatewayId,
           if (region != null) 'region': region,
           'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInternetGatewayAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
