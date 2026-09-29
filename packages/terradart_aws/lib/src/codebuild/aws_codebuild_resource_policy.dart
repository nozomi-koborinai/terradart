// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codebuild_resource_policy`.
const Set<String> _awsCodebuildResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_codebuild_resource_policy`.
final class AwsCodebuildResourcePolicy extends Resource {
  static const String tfType = 'aws_codebuild_resource_policy';

  AwsCodebuildResourcePolicy({
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
  Set<String> get sensitiveFields => _awsCodebuildResourcePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodebuildResourcePolicy>`.
  RefTo<AwsCodebuildResourcePolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
