// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_replica_external_key`.
const Set<String> _awsKmsReplicaExternalKeySensitive = <String>{
  'key_material_base64',
};

/// Factory wrapper for `aws_kms_replica_external_key`.
final class AwsKmsReplicaExternalKey extends Resource {
  static const String tfType = 'aws_kms_replica_external_key';

  AwsKmsReplicaExternalKey({
    required super.localName,
    TfArg<bool>? bypassPolicyLockoutSafetyCheck,
    TfArg<num>? deletionWindowInDays,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    TfArg<String>? keyMaterialBase64,
    TfArg<String>? policy,
    required TfArg<String> primaryKeyArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? validTo,
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
           'key_material_base64': ?keyMaterialBase64,
           'policy': ?policy,
           'primary_key_arn': primaryKeyArn,
           'region': ?region,
           'tags': ?tags,
           'valid_to': ?validTo,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsReplicaExternalKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKmsReplicaExternalKey>`.
  RefTo<AwsKmsReplicaExternalKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `expiration_model` attribute.
  TfRef<String> get expirationModel =>
      TfRef.attribute<String>(this, 'expiration_model');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `key_state` attribute.
  TfRef<String> get keyState => TfRef.attribute<String>(this, 'key_state');

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

  /// Reference to `key_material_base64` attribute.
  TfRef<String> get keyMaterialBase64Ref =>
      TfRef.attribute<String>(this, 'key_material_base64');

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

  /// Reference to `valid_to` attribute.
  TfRef<String> get validToRef => TfRef.attribute<String>(this, 'valid_to');
}
