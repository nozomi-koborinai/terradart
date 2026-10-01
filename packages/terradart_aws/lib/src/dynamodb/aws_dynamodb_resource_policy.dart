// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_resource_policy`.
const Set<String> _awsDynamodbResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_dynamodb_resource_policy`.
final class AwsDynamodbResourcePolicy extends Resource {
  static const String tfType = 'aws_dynamodb_resource_policy';

  AwsDynamodbResourcePolicy(
    super.localName, {
    TfArg<bool>? confirmRemoveSelfResourceAccess,
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
           'confirm_remove_self_resource_access':
               ?confirmRemoveSelfResourceAccess,
           'policy': policy,
           'region': ?region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbResourcePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDynamodbResourcePolicy>`.
  RefTo<AwsDynamodbResourcePolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `confirm_remove_self_resource_access` attribute.
  TfRef<bool> get confirmRemoveSelfResourceAccess =>
      TfRef.attribute<bool>(this, 'confirm_remove_self_resource_access');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
