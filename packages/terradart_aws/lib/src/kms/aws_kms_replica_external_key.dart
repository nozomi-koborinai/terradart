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
           if (bypassPolicyLockoutSafetyCheck != null)
             'bypass_policy_lockout_safety_check':
                 bypassPolicyLockoutSafetyCheck,
           if (deletionWindowInDays != null)
             'deletion_window_in_days': deletionWindowInDays,
           if (description != null) 'description': description,
           if (enabled != null) 'enabled': enabled,
           if (keyMaterialBase64 != null)
             'key_material_base64': keyMaterialBase64,
           if (policy != null) 'policy': policy,
           'primary_key_arn': primaryKeyArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (validTo != null) 'valid_to': validTo,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsReplicaExternalKeySensitive;

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
}
