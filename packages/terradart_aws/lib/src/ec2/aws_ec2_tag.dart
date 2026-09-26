// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_tag`.
const Set<String> _awsEc2TagSensitive = <String>{};

/// Factory wrapper for `aws_ec2_tag`.
final class AwsEc2Tag extends Resource {
  static const String tfType = 'aws_ec2_tag';

  AwsEc2Tag({
    required super.localName,
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
           if (region != null) 'region': region,
           'resource_id': resourceId,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TagSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
