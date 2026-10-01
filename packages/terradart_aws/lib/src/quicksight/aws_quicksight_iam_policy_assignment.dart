// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_policy.dart' show AwsIamPolicy;

/// Sensitive field paths for `aws_quicksight_iam_policy_assignment`.
const Set<String> _awsQuicksightIamPolicyAssignmentSensitive = <String>{};

/// Quicksight Iam Policy Assignment enum for `assignment_status`.
extension type const QuicksightIamPolicyAssignmentStatus._(TfArg<String> _)
    implements TfArg<String> {
  QuicksightIamPolicyAssignmentStatus.variable(String name)
    : this._(TfArg.variable(name));
  QuicksightIamPolicyAssignmentStatus.expression(String template)
    : this._(TfArg.expression(template));
  const QuicksightIamPolicyAssignmentStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = QuicksightIamPolicyAssignmentStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const draft = QuicksightIamPolicyAssignmentStatus._(
    TfArgLiteral('DRAFT'),
  );
  static const disabled = QuicksightIamPolicyAssignmentStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<QuicksightIamPolicyAssignmentStatus> values = [
    enabled,
    draft,
    disabled,
  ];
}

/// Typed helper for the `identities` block of
/// `aws_quicksight_iam_policy_assignment` (derived from provider schema).
@immutable
final class QuicksightIamPolicyAssignmentIdentities {
  const QuicksightIamPolicyAssignmentIdentities({this.group, this.user});

  final TfArg<List<String>>? group;

  final TfArg<List<String>>? user;

  Map<String, Object?> encode() => {
    'group': ?group?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_iam_policy_assignment`.
final class AwsQuicksightIamPolicyAssignment extends Resource {
  static const String tfType = 'aws_quicksight_iam_policy_assignment';

  AwsQuicksightIamPolicyAssignment(
    super.localName, {
    required TfArg<String> assignmentName,
    required QuicksightIamPolicyAssignmentStatus assignmentStatus,
    TfArg<String>? awsAccountId,
    TfArg<String>? namespace,
    RefTo<AwsIamPolicy>? policyArn,
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
           'aws_account_id': ?awsAccountId,
           'namespace': ?namespace,
           'policy_arn': ?policyArn?.encodeAs('arn'),
           'region': ?region,
           if (identities != null)
             'identities': TfArg.literal([
               for (final e in identities) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightIamPolicyAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightIamPolicyAssignment>`.
  RefTo<AwsQuicksightIamPolicyAssignment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `assignment_id` attribute.
  TfRef<String> get assignmentId =>
      TfRef.attribute<String>(this, 'assignment_id');

  /// Reference to `assignment_name` attribute.
  TfRef<String> get assignmentName =>
      TfRef.attribute<String>(this, 'assignment_name');

  /// Reference to `assignment_status` attribute.
  TfRef<String> get assignmentStatus =>
      TfRef.attribute<String>(this, 'assignment_status');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `policy_arn` attribute.
  TfRef<String> get policyArn => TfRef.attribute<String>(this, 'policy_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
