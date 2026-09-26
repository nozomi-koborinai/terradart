// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloud9_environment_ec2`.
const Set<String> _awsCloud9EnvironmentEc2Sensitive = <String>{};

/// Factory wrapper for `aws_cloud9_environment_ec2`.
final class AwsCloud9EnvironmentEc2 extends Resource {
  static const String tfType = 'aws_cloud9_environment_ec2';

  AwsCloud9EnvironmentEc2({
    required super.localName,
    TfArg<num>? automaticStopTimeMinutes,
    TfArg<String>? connectionType,
    TfArg<String>? description,
    required TfArg<String> imageId,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
