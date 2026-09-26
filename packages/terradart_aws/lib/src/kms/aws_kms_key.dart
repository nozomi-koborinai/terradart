// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_key`.
const Set<String> _awsKmsKeySensitive = <String>{};

/// Factory wrapper for `aws_kms_key`.
final class AwsKmsKey extends Resource {
  static const String tfType = 'aws_kms_key';

  AwsKmsKey({
    required super.localName,
    TfArg<bool>? bypassPolicyLockoutSafetyCheck,
    TfArg<String>? customKeyStoreId,
    TfArg<String>? customerMasterKeySpec,
    TfArg<num>? deletionWindowInDays,
    TfArg<String>? description,
    TfArg<bool>? enableKeyRotation,
    TfArg<bool>? isEnabled,
    TfArg<String>? keyUsage,
    TfArg<bool>? multiRegion,
    TfArg<String>? policy,
    TfArg<String>? region,
    TfArg<num>? rotationPeriodInDays,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? xksKeyId,
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
           if (customKeyStoreId != null)
             'custom_key_store_id': customKeyStoreId,
           if (customerMasterKeySpec != null)
             'customer_master_key_spec': customerMasterKeySpec,
           if (deletionWindowInDays != null)
             'deletion_window_in_days': deletionWindowInDays,
           if (description != null) 'description': description,
           if (enableKeyRotation != null)
             'enable_key_rotation': enableKeyRotation,
           if (isEnabled != null) 'is_enabled': isEnabled,
           if (keyUsage != null) 'key_usage': keyUsage,
           if (multiRegion != null) 'multi_region': multiRegion,
           if (policy != null) 'policy': policy,
           if (region != null) 'region': region,
           if (rotationPeriodInDays != null)
             'rotation_period_in_days': rotationPeriodInDays,
           if (tags != null) 'tags': tags,
           if (xksKeyId != null) 'xks_key_id': xksKeyId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');
}
