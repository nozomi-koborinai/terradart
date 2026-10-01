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

/// Kms Key enum for `key_usage`.
enum KmsKeyUsage implements TerraformEnum {
  signVerify('SIGN_VERIFY'),
  encryptDecrypt('ENCRYPT_DECRYPT'),
  generateVerifyMac('GENERATE_VERIFY_MAC'),
  keyAgreement('KEY_AGREEMENT');

  const KmsKeyUsage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_kms_key`.
final class AwsKmsKey extends Resource {
  static const String tfType = 'aws_kms_key';

  AwsKmsKey(
    super.localName, {
    TfArg<bool>? bypassPolicyLockoutSafetyCheck,
    TfArg<String>? customKeyStoreId,
    TfArg<KmsKeyCustomerMasterKeySpec>? customerMasterKeySpec,
    TfArg<num>? deletionWindowInDays,
    TfArg<String>? description,
    TfArg<bool>? enableKeyRotation,
    TfArg<bool>? isEnabled,
    TfArg<KmsKeyUsage>? keyUsage,
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
           'bypass_policy_lockout_safety_check':
               ?bypassPolicyLockoutSafetyCheck,
           'custom_key_store_id': ?customKeyStoreId,
           'customer_master_key_spec': ?customerMasterKeySpec,
           'deletion_window_in_days': ?deletionWindowInDays,
           'description': ?description,
           'enable_key_rotation': ?enableKeyRotation,
           'is_enabled': ?isEnabled,
           'key_usage': ?keyUsage,
           'multi_region': ?multiRegion,
           'policy': ?policy,
           'region': ?region,
           'rotation_period_in_days': ?rotationPeriodInDays,
           'tags': ?tags,
           'xks_key_id': ?xksKeyId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKmsKey>`.
  RefTo<AwsKmsKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `bypass_policy_lockout_safety_check` attribute.
  TfRef<bool> get bypassPolicyLockoutSafetyCheck =>
      TfRef.attribute<bool>(this, 'bypass_policy_lockout_safety_check');

  /// Reference to `custom_key_store_id` attribute.
  TfRef<String> get customKeyStoreId =>
      TfRef.attribute<String>(this, 'custom_key_store_id');

  /// Reference to `customer_master_key_spec` attribute.
  TfRef<String> get customerMasterKeySpec =>
      TfRef.attribute<String>(this, 'customer_master_key_spec');

  /// Reference to `deletion_window_in_days` attribute.
  TfRef<num> get deletionWindowInDays =>
      TfRef.attribute<num>(this, 'deletion_window_in_days');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_key_rotation` attribute.
  TfRef<bool> get enableKeyRotation =>
      TfRef.attribute<bool>(this, 'enable_key_rotation');

  /// Reference to `is_enabled` attribute.
  TfRef<bool> get isEnabled => TfRef.attribute<bool>(this, 'is_enabled');

  /// Reference to `key_usage` attribute.
  TfRef<String> get keyUsage => TfRef.attribute<String>(this, 'key_usage');

  /// Reference to `multi_region` attribute.
  TfRef<bool> get multiRegion => TfRef.attribute<bool>(this, 'multi_region');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rotation_period_in_days` attribute.
  TfRef<num> get rotationPeriodInDays =>
      TfRef.attribute<num>(this, 'rotation_period_in_days');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `xks_key_id` attribute.
  TfRef<String> get xksKeyId => TfRef.attribute<String>(this, 'xks_key_id');
}
