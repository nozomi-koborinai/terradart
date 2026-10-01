// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_efs_file_system_policy`.
const Set<String> _awsEfsFileSystemPolicySensitive = <String>{};

/// Factory wrapper for `aws_efs_file_system_policy`.
final class AwsEfsFileSystemPolicy extends Resource {
  static const String tfType = 'aws_efs_file_system_policy';

  AwsEfsFileSystemPolicy(
    super.localName, {
    TfArg<bool>? bypassPolicyLockoutSafetyCheck,
    required TfArg<String> fileSystemId,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bypass_policy_lockout_safety_check':
               ?bypassPolicyLockoutSafetyCheck,
           'file_system_id': fileSystemId,
           'policy': policy,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEfsFileSystemPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEfsFileSystemPolicy>`.
  RefTo<AwsEfsFileSystemPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bypass_policy_lockout_safety_check` attribute.
  TfRef<bool> get bypassPolicyLockoutSafetyCheck =>
      TfRef.attribute<bool>(this, 'bypass_policy_lockout_safety_check');

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
