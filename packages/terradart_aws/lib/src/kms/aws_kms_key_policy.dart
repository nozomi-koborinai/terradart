// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_key_policy`.
const Set<String> _awsKmsKeyPolicySensitive = <String>{};

/// Factory wrapper for `aws_kms_key_policy`.
final class AwsKmsKeyPolicy extends Resource {
  static const String tfType = 'aws_kms_key_policy';

  AwsKmsKeyPolicy({
    required super.localName,
    TfArg<bool>? bypassPolicyLockoutSafetyCheck,
    required TfArg<String> keyId,
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
           'key_id': keyId,
           'policy': policy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsKeyPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
