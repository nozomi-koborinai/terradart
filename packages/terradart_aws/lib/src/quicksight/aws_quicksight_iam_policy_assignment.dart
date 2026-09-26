// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_iam_policy_assignment`.
const Set<String> _awsQuicksightIamPolicyAssignmentSensitive = <String>{};

/// Typed helper for the `identities` block of
/// `aws_quicksight_iam_policy_assignment` (derived from provider schema).
@immutable
final class QuicksightIamPolicyAssignmentIdentities {
  const QuicksightIamPolicyAssignmentIdentities({this.group, this.user});

  final TfArg<List<Object?>>? group;

  final TfArg<List<Object?>>? user;

  Map<String, Object?> encode() => {
    if (group != null) 'group': group!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_iam_policy_assignment`.
final class AwsQuicksightIamPolicyAssignment extends Resource {
  static const String tfType = 'aws_quicksight_iam_policy_assignment';

  AwsQuicksightIamPolicyAssignment({
    required super.localName,
    required TfArg<String> assignmentName,
    required TfArg<String> assignmentStatus,
    TfArg<String>? awsAccountId,
    TfArg<String>? namespace,
    TfArg<String>? policyArn,
    TfArg<String>? region,
    List<QuicksightIamPolicyAssignmentIdentities>? identities,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assignment_name': assignmentName,
           'assignment_status': assignmentStatus,
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           if (namespace != null) 'namespace': namespace,
           if (policyArn != null) 'policy_arn': policyArn,
           if (region != null) 'region': region,
           if (identities != null)
             'identities': TfArg.literal([
               for (final e in identities) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightIamPolicyAssignmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `assignment_id` attribute.
  TfRef<String> get assignmentId =>
      TfRef.attribute<String>(this, 'assignment_id');
}
