// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_external_key`.
const Set<String> _awsKmsExternalKeySensitive = <String>{'key_material_base64'};

/// Kms External Key enum for `key_spec`.
enum KmsExternalKeySpec implements TerraformEnum {
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

  const KmsExternalKeySpec(this.terraformValue);
  @override
  final String terraformValue;
}

/// Kms External Key enum for `key_usage`.
enum KmsExternalKeyUsage implements TerraformEnum {
  signVerify('SIGN_VERIFY'),
  encryptDecrypt('ENCRYPT_DECRYPT'),
  generateVerifyMac('GENERATE_VERIFY_MAC'),
  keyAgreement('KEY_AGREEMENT');

  const KmsExternalKeyUsage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_kms_external_key`.
final class AwsKmsExternalKey extends Resource {
  static const String tfType = 'aws_kms_external_key';

  AwsKmsExternalKey(
    super.localName, {
    TfArg<bool>? bypassPolicyLockoutSafetyCheck,
    TfArg<num>? deletionWindowInDays,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    TfArg<String>? keyMaterialBase64,
    TfArg<KmsExternalKeySpec>? keySpec,
    TfArg<KmsExternalKeyUsage>? keyUsage,
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
           'bypass_policy_lockout_safety_check':
               ?bypassPolicyLockoutSafetyCheck,
           'deletion_window_in_days': ?deletionWindowInDays,
           'description': ?description,
           'enabled': ?enabled,
           'key_material_base64': ?keyMaterialBase64,
           'key_spec': ?keySpec,
           'key_usage': ?keyUsage,
           'multi_region': ?multiRegion,
           'policy': ?policy,
           'region': ?region,
           'tags': ?tags,
           'valid_to': ?validTo,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsExternalKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKmsExternalKey>`.
  RefTo<AwsKmsExternalKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `expiration_model` attribute.
  TfRef<String> get expirationModel =>
      TfRef.attribute<String>(this, 'expiration_model');

  /// Reference to `key_state` attribute.
  TfRef<String> get keyState => TfRef.attribute<String>(this, 'key_state');

  /// Reference to `bypass_policy_lockout_safety_check` attribute.
  TfRef<bool> get bypassPolicyLockoutSafetyCheck =>
      TfRef.attribute<bool>(this, 'bypass_policy_lockout_safety_check');

  /// Reference to `deletion_window_in_days` attribute.
  TfRef<num> get deletionWindowInDays =>
      TfRef.attribute<num>(this, 'deletion_window_in_days');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `key_material_base64` attribute.
  TfRef<String> get keyMaterialBase64 =>
      TfRef.attribute<String>(this, 'key_material_base64');

  /// Reference to `key_spec` attribute.
  TfRef<String> get keySpec => TfRef.attribute<String>(this, 'key_spec');

  /// Reference to `key_usage` attribute.
  TfRef<String> get keyUsage => TfRef.attribute<String>(this, 'key_usage');

  /// Reference to `multi_region` attribute.
  TfRef<bool> get multiRegion => TfRef.attribute<bool>(this, 'multi_region');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `valid_to` attribute.
  TfRef<String> get validTo => TfRef.attribute<String>(this, 'valid_to');
}
