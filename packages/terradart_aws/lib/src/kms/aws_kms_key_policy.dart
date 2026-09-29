// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_kms_key_policy`.
const Set<String> _awsKmsKeyPolicySensitive = <String>{};

/// Factory wrapper for `aws_kms_key_policy`.
final class AwsKmsKeyPolicy extends Resource {
  static const String tfType = 'aws_kms_key_policy';

  AwsKmsKeyPolicy({
    required super.localName,
    TfArg<bool>? bypassPolicyLockoutSafetyCheck,
    required RefTo<AwsKmsKey> keyId,
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
           'key_id': keyId.encodeAs('key_id'),
           'policy': policy,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsKeyPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKmsKeyPolicy>`.
  RefTo<AwsKmsKeyPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
