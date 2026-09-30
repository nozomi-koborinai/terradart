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
           'bypass_policy_lockout_safety_check':
               ?bypassPolicyLockoutSafetyCheck,
           'deletion_window_in_days': ?deletionWindowInDays,
           'description': ?description,
           'enabled': ?enabled,
           'policy': ?policy,
           'primary_key_arn': primaryKeyArn,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsReplicaKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKmsReplicaKey>`.
  RefTo<AwsKmsReplicaKey> get ref => RefTo.of(this);

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

  /// Reference to `bypass_policy_lockout_safety_check` attribute.
  TfRef<bool> get bypassPolicyLockoutSafetyCheckRef =>
      TfRef.attribute<bool>(this, 'bypass_policy_lockout_safety_check');

  /// Reference to `deletion_window_in_days` attribute.
  TfRef<num> get deletionWindowInDaysRef =>
      TfRef.attribute<num>(this, 'deletion_window_in_days');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `policy` attribute.
  TfRef<String> get policyRef => TfRef.attribute<String>(this, 'policy');

  /// Reference to `primary_key_arn` attribute.
  TfRef<String> get primaryKeyArnRef =>
      TfRef.attribute<String>(this, 'primary_key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
