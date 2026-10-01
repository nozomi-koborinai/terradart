// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_resource_policy`.
const Set<String> _awsLambdaResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_lambda_resource_policy`.
final class AwsLambdaResourcePolicy extends Resource {
  static const String tfType = 'aws_lambda_resource_policy';

  AwsLambdaResourcePolicy({
    required super.localName,
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy': policy,
           'region': ?region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaResourcePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaResourcePolicy>`.
  RefTo<AwsLambdaResourcePolicy> get ref => RefTo.of(this);

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
