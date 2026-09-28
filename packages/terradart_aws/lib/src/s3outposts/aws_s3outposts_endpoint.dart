// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3outposts_endpoint`.
const Set<String> _awsS3outpostsEndpointSensitive = <String>{};

/// S3outposts Endpoint Access enum for `access_type`.
enum S3outpostsEndpointAccessType implements TerraformEnum {
  private('Private'),
  customerownedip('CustomerOwnedIp');

  const S3outpostsEndpointAccessType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_s3outposts_endpoint`.
final class AwsS3outpostsEndpoint extends Resource {
  static const String tfType = 'aws_s3outposts_endpoint';

  AwsS3outpostsEndpoint({
    required super.localName,
    TfArg<S3outpostsEndpointAccessType>? accessType,
    TfArg<String>? customerOwnedIpv4Pool,
    required TfArg<String> outpostId,
    TfArg<String>? region,
    required TfArg<String> securityGroupId,
    required TfArg<String> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accessType != null) 'access_type': accessType,
           if (customerOwnedIpv4Pool != null)
             'customer_owned_ipv4_pool': customerOwnedIpv4Pool,
           'outpost_id': outpostId,
           if (region != null) 'region': region,
           'security_group_id': securityGroupId,
           'subnet_id': subnetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3outpostsEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cidr_block` attribute.
  TfRef<String> get cidrBlock => TfRef.attribute<String>(this, 'cidr_block');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `network_interfaces` attribute.
  TfRef<List<Map<String, Object?>>> get networkInterfaces =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_interfaces');
}
