// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

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

  AwsCloud9EnvironmentEc2(
    super.localName, {
    TfArg<num>? automaticStopTimeMinutes,
    TfArg<Cloud9EnvironmentEc2ConnectionType>? connectionType,
    TfArg<String>? description,
    required TfArg<Cloud9EnvironmentEc2ImageId> imageId,
    required TfArg<String> instanceType,
    required TfArg<String> name,
    TfArg<String>? ownerArn,
    TfArg<String>? region,
    RefTo<AwsSubnet>? subnetId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automatic_stop_time_minutes': ?automaticStopTimeMinutes,
           'connection_type': ?connectionType,
           'description': ?description,
           'image_id': imageId,
           'instance_type': instanceType,
           'name': name,
           'owner_arn': ?ownerArn,
           'region': ?region,
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloud9EnvironmentEc2Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloud9EnvironmentEc2>`.
  RefTo<AwsCloud9EnvironmentEc2> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `automatic_stop_time_minutes` attribute.
  TfRef<num> get automaticStopTimeMinutes =>
      TfRef.attribute<num>(this, 'automatic_stop_time_minutes');

  /// Reference to `connection_type` attribute.
  TfRef<String> get connectionType =>
      TfRef.attribute<String>(this, 'connection_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `image_id` attribute.
  TfRef<String> get imageId => TfRef.attribute<String>(this, 'image_id');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `owner_arn` attribute.
  TfRef<String> get ownerArn => TfRef.attribute<String>(this, 'owner_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
