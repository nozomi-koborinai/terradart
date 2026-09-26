// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_efs_file_system_policy`.
const Set<String> _awsEfsFileSystemPolicySensitive = <String>{};

/// Factory wrapper for `aws_efs_file_system_policy`.
final class AwsEfsFileSystemPolicy extends Resource {
  static const String tfType = 'aws_efs_file_system_policy';

  AwsEfsFileSystemPolicy({
    required super.localName,
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
           if (bypassPolicyLockoutSafetyCheck != null)
             'bypass_policy_lockout_safety_check':
                 bypassPolicyLockoutSafetyCheck,
           'file_system_id': fileSystemId,
           'policy': policy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEfsFileSystemPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
