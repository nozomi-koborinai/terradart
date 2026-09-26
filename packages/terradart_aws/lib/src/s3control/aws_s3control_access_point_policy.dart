// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_access_point_policy`.
const Set<String> _awsS3controlAccessPointPolicySensitive = <String>{};

/// Factory wrapper for `aws_s3control_access_point_policy`.
final class AwsS3controlAccessPointPolicy extends Resource {
  static const String tfType = 'aws_s3control_access_point_policy';

  AwsS3controlAccessPointPolicy({
    required super.localName,
    required TfArg<String> accessPointArn,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_point_arn': accessPointArn,
           'policy': policy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3controlAccessPointPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `has_public_access_policy` attribute.
  TfRef<bool> get hasPublicAccessPolicy =>
      TfRef.attribute<bool>(this, 'has_public_access_policy');
}
