// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_resource_policy`.
const Set<String> _awsDynamodbResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_dynamodb_resource_policy`.
final class AwsDynamodbResourcePolicy extends Resource {
  static const String tfType = 'aws_dynamodb_resource_policy';

  AwsDynamodbResourcePolicy({
    required super.localName,
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
           if (confirmRemoveSelfResourceAccess != null)
             'confirm_remove_self_resource_access':
                 confirmRemoveSelfResourceAccess,
           'policy': policy,
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbResourcePolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');
}
