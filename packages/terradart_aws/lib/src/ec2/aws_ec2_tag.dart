// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_tag`.
const Set<String> _awsEc2TagSensitive = <String>{};

/// Factory wrapper for `aws_ec2_tag`.
final class AwsEc2Tag extends Resource {
  static const String tfType = 'aws_ec2_tag';

  AwsEc2Tag(
    super.localName, {
    required TfArg<String> key,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key': key,
           'region': ?region,
           'resource_id': resourceId,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2Tag>`.
  RefTo<AwsEc2Tag> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
