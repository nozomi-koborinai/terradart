// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_replica_key`.
const Set<String> _awsKmsReplicaKeySensitive = <String>{};

/// Factory wrapper for `aws_kms_replica_key`.
final class AwsKmsReplicaKey extends Resource {
  static const String tfType = 'aws_kms_replica_key';

  AwsKmsReplicaKey({
    required super.localName,
    TfArg<bool>? bypassPolicyLockoutSafetyCheck,
    TfArg<num>? deletionWindowInDays,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    TfArg<String>? policy,
    required TfArg<String> primaryKeyArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
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
           if (deletionWindowInDays != null)
             'deletion_window_in_days': deletionWindowInDays,
           if (description != null) 'description': description,
           if (enabled != null) 'enabled': enabled,
           if (policy != null) 'policy': policy,
           'primary_key_arn': primaryKeyArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsReplicaKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `key_rotation_enabled` attribute.
  TfRef<bool> get keyRotationEnabled =>
      TfRef.attribute<bool>(this, 'key_rotation_enabled');

  /// Reference to `key_spec` attribute.
  TfRef<String> get keySpec => TfRef.attribute<String>(this, 'key_spec');

  /// Reference to `key_usage` attribute.
  TfRef<String> get keyUsage => TfRef.attribute<String>(this, 'key_usage');
}
