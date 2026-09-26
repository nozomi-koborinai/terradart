// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_computeoptimizer_enrollment_status`.
const Set<String> _awsComputeoptimizerEnrollmentStatusSensitive = <String>{};

/// Factory wrapper for `aws_computeoptimizer_enrollment_status`.
final class AwsComputeoptimizerEnrollmentStatus extends Resource {
  static const String tfType = 'aws_computeoptimizer_enrollment_status';

  AwsComputeoptimizerEnrollmentStatus({
    required super.localName,
    TfArg<bool>? includeMemberAccounts,
    TfArg<String>? region,
    required TfArg<String> status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (includeMemberAccounts != null)
             'include_member_accounts': includeMemberAccounts,
           if (region != null) 'region': region,
           'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsComputeoptimizerEnrollmentStatusSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `number_of_member_accounts_opted_in` attribute.
  TfRef<num> get numberOfMemberAccountsOptedIn =>
      TfRef.attribute<num>(this, 'number_of_member_accounts_opted_in');
}
