// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_costoptimizationhub_enrollment_status`.
const Set<String> _awsCostoptimizationhubEnrollmentStatusSensitive = <String>{};

/// Factory wrapper for `aws_costoptimizationhub_enrollment_status`.
final class AwsCostoptimizationhubEnrollmentStatus extends Resource {
  static const String tfType = 'aws_costoptimizationhub_enrollment_status';

  AwsCostoptimizationhubEnrollmentStatus(
    super.localName, {
    TfArg<bool>? includeMemberAccounts,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'include_member_accounts': ?includeMemberAccounts},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCostoptimizationhubEnrollmentStatusSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCostoptimizationhubEnrollmentStatus>`.
  RefTo<AwsCostoptimizationhubEnrollmentStatus> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `include_member_accounts` attribute.
  TfRef<bool> get includeMemberAccounts =>
      TfRef.attribute<bool>(this, 'include_member_accounts');
}
