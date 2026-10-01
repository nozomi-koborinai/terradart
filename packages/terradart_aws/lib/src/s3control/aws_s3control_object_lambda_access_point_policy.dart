// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_object_lambda_access_point_policy`.
const Set<String> _awsS3controlObjectLambdaAccessPointPolicySensitive =
    <String>{};

/// Factory wrapper for `aws_s3control_object_lambda_access_point_policy`.
final class AwsS3controlObjectLambdaAccessPointPolicy extends Resource {
  static const String tfType =
      'aws_s3control_object_lambda_access_point_policy';

  AwsS3controlObjectLambdaAccessPointPolicy(
    super.localName, {
    TfArg<String>? accountId,
    required TfArg<String> name,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'name': name,
           'policy': policy,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlObjectLambdaAccessPointPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3controlObjectLambdaAccessPointPolicy>`.
  RefTo<AwsS3controlObjectLambdaAccessPointPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `has_public_access_policy` attribute.
  TfRef<bool> get hasPublicAccessPolicy =>
      TfRef.attribute<bool>(this, 'has_public_access_policy');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
