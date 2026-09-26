// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_block_public_access_exclusion`.
const Set<String> _awsVpcBlockPublicAccessExclusionSensitive = <String>{};

/// Factory wrapper for `aws_vpc_block_public_access_exclusion`.
final class AwsVpcBlockPublicAccessExclusion extends Resource {
  static const String tfType = 'aws_vpc_block_public_access_exclusion';

  AwsVpcBlockPublicAccessExclusion({
    required super.localName,
    required TfArg<String> internetGatewayExclusionMode,
    TfArg<String>? region,
    TfArg<String>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'internet_gateway_exclusion_mode': internetGatewayExclusionMode,
           if (region != null) 'region': region,
           if (subnetId != null) 'subnet_id': subnetId,
           if (tags != null) 'tags': tags,
           if (vpcId != null) 'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcBlockPublicAccessExclusionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
