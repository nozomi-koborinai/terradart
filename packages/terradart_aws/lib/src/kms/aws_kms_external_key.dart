// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_external_key`.
const Set<String> _awsKmsExternalKeySensitive = <String>{'key_material_base64'};

/// Kms External Key Key enum for `key_spec`.
enum KmsExternalKeyKeySpec implements TerraformEnum {
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

  const KmsExternalKeyKeySpec(this.terraformValue);
  @override
  final String terraformValue;
}

/// Kms External Key Key enum for `key_usage`.
enum KmsExternalKeyKeyUsage implements TerraformEnum {
  signVerify('SIGN_VERIFY'),
  encryptDecrypt('ENCRYPT_DECRYPT'),
  generateVerifyMac('GENERATE_VERIFY_MAC'),
  keyAgreement('KEY_AGREEMENT');

  const KmsExternalKeyKeyUsage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_kms_external_key`.
final class AwsKmsExternalKey extends Resource {
  static const String tfType = 'aws_kms_external_key';

  AwsKmsExternalKey({
    required super.localName,
    TfArg<bool>? bypassPolicyLockoutSafetyCheck,
    TfArg<num>? deletionWindowInDays,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    TfArg<String>? keyMaterialBase64,
    TfArg<KmsExternalKeyKeySpec>? keySpec,
    TfArg<KmsExternalKeyKeyUsage>? keyUsage,
    TfArg<bool>? multiRegion,
    TfArg<String>? policy,
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
           if (keySpec != null) 'key_spec': keySpec,
           if (keyUsage != null) 'key_usage': keyUsage,
           if (multiRegion != null) 'multi_region': multiRegion,
           if (policy != null) 'policy': policy,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (validTo != null) 'valid_to': validTo,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsExternalKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `expiration_model` attribute.
  TfRef<String> get expirationModel =>
      TfRef.attribute<String>(this, 'expiration_model');

  /// Reference to `key_state` attribute.
  TfRef<String> get keyState => TfRef.attribute<String>(this, 'key_state');
}
