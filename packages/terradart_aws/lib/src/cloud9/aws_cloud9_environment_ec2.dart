// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloud9_environment_ec2`.
const Set<String> _awsCloud9EnvironmentEc2Sensitive = <String>{};

/// Cloud9 Environment Ec2 Connection enum for `connection_type`.
enum Cloud9EnvironmentEc2ConnectionType implements TerraformEnum {
  connectSsh('CONNECT_SSH'),
  connectSsm('CONNECT_SSM');

  const Cloud9EnvironmentEc2ConnectionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloud9 Environment Ec2 Image enum for `image_id`.
enum Cloud9EnvironmentEc2ImageId implements TerraformEnum {
  amazonlinux1X8664('amazonlinux-1-x86_64'),
  amazonlinux2X8664('amazonlinux-2-x86_64'),
  amazonlinux2023X8664('amazonlinux-2023-x86_64'),
  ubuntu18p04X86x64('ubuntu-18.04-x86_64'),
  ubuntu22p04X86x64('ubuntu-22.04-x86_64'),
  resolveSsmAwsServiceCloud9AmisAmazonlinux1X86x64(
    'resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64',
  ),
  resolveSsmAwsServiceCloud9AmisAmazonlinux2X86x64(
    'resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64',
  ),
  resolveSsmAwsServiceCloud9AmisAmazonlinux2023X86x64(
    'resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2023-x86_64',
  ),
  resolveSsmAwsServiceCloud9AmisUbuntu18p04X86x64(
    'resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64',
  ),
  resolveSsmAwsServiceCloud9AmisUbuntu22p04X86x64(
    'resolve:ssm:/aws/service/cloud9/amis/ubuntu-22.04-x86_64',
  );

  const Cloud9EnvironmentEc2ImageId(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloud9_environment_ec2`.
final class AwsCloud9EnvironmentEc2 extends Resource {
  static const String tfType = 'aws_cloud9_environment_ec2';

  AwsCloud9EnvironmentEc2({
    required super.localName,
    TfArg<num>? automaticStopTimeMinutes,
    TfArg<Cloud9EnvironmentEc2ConnectionType>? connectionType,
    TfArg<String>? description,
    required TfArg<Cloud9EnvironmentEc2ImageId> imageId,
    required TfArg<String> instanceType,
    required TfArg<String> name,
    TfArg<String>? ownerArn,
    TfArg<String>? region,
    TfArg<String>? subnetId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (automaticStopTimeMinutes != null)
             'automatic_stop_time_minutes': automaticStopTimeMinutes,
           if (connectionType != null) 'connection_type': connectionType,
           if (description != null) 'description': description,
           'image_id': imageId,
           'instance_type': instanceType,
           'name': name,
           if (ownerArn != null) 'owner_arn': ownerArn,
           if (region != null) 'region': region,
           if (subnetId != null) 'subnet_id': subnetId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloud9EnvironmentEc2Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloud9EnvironmentEc2>`.
  RefTo<AwsCloud9EnvironmentEc2> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
