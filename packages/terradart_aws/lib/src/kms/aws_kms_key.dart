// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_key`.
const Set<String> _awsKmsKeySensitive = <String>{};

/// Kms Key Customer Master Key enum for `customer_master_key_spec`.
enum KmsKeyCustomerMasterKeySpec implements TerraformEnum {
  rsa2048('RSA_2048'),
  rsa3072('RSA_3072'),
  rsa4096('RSA_4096'),
  eccNistP256('ECC_NIST_P256'),
  eccNistP384('ECC_NIST_P384'),
  eccNistP521('ECC_NIST_P521'),
  eccSecgP256k1('ECC_SECG_P256K1'),
  symmetricDefault('SYMMETRIC_DEFAULT'),
  hmac224('HMAC_224'),
  hmac256('HMAC_256'),
  hmac384('HMAC_384'),
  hmac512('HMAC_512'),
  sm2('SM2'),
  mlDsa44('ML_DSA_44'),
  mlDsa65('ML_DSA_65'),
  mlDsa87('ML_DSA_87'),
  eccNistEdwards25519('ECC_NIST_EDWARDS25519');

  const KmsKeyCustomerMasterKeySpec(this.terraformValue);
  @override
  final String terraformValue;
}

/// Kms Key Key enum for `key_usage`.
enum KmsKeyKeyUsage implements TerraformEnum {
  signVerify('SIGN_VERIFY'),
  encryptDecrypt('ENCRYPT_DECRYPT'),
  generateVerifyMac('GENERATE_VERIFY_MAC'),
  keyAgreement('KEY_AGREEMENT');

  const KmsKeyKeyUsage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_kms_key`.
final class AwsKmsKey extends Resource {
  static const String tfType = 'aws_kms_key';

  AwsKmsKey({
    required super.localName,
    TfArg<bool>? bypassPolicyLockoutSafetyCheck,
    TfArg<String>? customKeyStoreId,
    TfArg<KmsKeyCustomerMasterKeySpec>? customerMasterKeySpec,
    TfArg<num>? deletionWindowInDays,
    TfArg<String>? description,
    TfArg<bool>? enableKeyRotation,
    TfArg<bool>? isEnabled,
    TfArg<KmsKeyKeyUsage>? keyUsage,
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
