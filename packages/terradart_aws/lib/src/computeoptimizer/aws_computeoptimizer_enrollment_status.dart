// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_computeoptimizer_enrollment_status`.
const Set<String> _awsComputeoptimizerEnrollmentStatusSensitive = <String>{};

/// Computeoptimizer Enrollment enum for `status`.
enum ComputeoptimizerEnrollmentStatus implements TerraformEnum {
  active('Active'),
  inactive('Inactive');

  const ComputeoptimizerEnrollmentStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_computeoptimizer_enrollment_status`.
final class AwsComputeoptimizerEnrollmentStatus extends Resource {
  static const String tfType = 'aws_computeoptimizer_enrollment_status';

  AwsComputeoptimizerEnrollmentStatus(
    super.localName, {
    TfArg<bool>? includeMemberAccounts,
    TfArg<String>? region,
    required TfArg<ComputeoptimizerEnrollmentStatus> status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'include_member_accounts': ?includeMemberAccounts,
           'region': ?region,
           'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsComputeoptimizerEnrollmentStatusSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsComputeoptimizerEnrollmentStatus>`.
  RefTo<AwsComputeoptimizerEnrollmentStatus> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `number_of_member_accounts_opted_in` attribute.
  TfRef<num> get numberOfMemberAccountsOptedIn =>
      TfRef.attribute<num>(this, 'number_of_member_accounts_opted_in');

  /// Reference to `include_member_accounts` attribute.
  TfRef<bool> get includeMemberAccounts =>
      TfRef.attribute<bool>(this, 'include_member_accounts');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
