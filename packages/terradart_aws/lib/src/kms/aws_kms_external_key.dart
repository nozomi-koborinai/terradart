// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_external_key`.
const Set<String> _awsKmsExternalKeySensitive = <String>{'key_material_base64'};

/// Kms External Key enum for `key_spec`.
extension type const KmsExternalKeySpec._(TfArg<String> _)
    implements TfArg<String> {
  KmsExternalKeySpec.variable(String name) : this._(TfArg.variable(name));
  KmsExternalKeySpec.expression(String template)
    : this._(TfArg.expression(template));
  const KmsExternalKeySpec.arg(TfArg<String> arg) : this._(arg);

  static const rsa2048 = KmsExternalKeySpec._(TfArgLiteral('RSA_2048'));
  static const rsa3072 = KmsExternalKeySpec._(TfArgLiteral('RSA_3072'));
  static const rsa4096 = KmsExternalKeySpec._(TfArgLiteral('RSA_4096'));
  static const eccNistP256 = KmsExternalKeySpec._(
    TfArgLiteral('ECC_NIST_P256'),
  );
  static const eccNistP384 = KmsExternalKeySpec._(
    TfArgLiteral('ECC_NIST_P384'),
  );
  static const eccNistP521 = KmsExternalKeySpec._(
    TfArgLiteral('ECC_NIST_P521'),
  );
  static const eccSecgP256k1 = KmsExternalKeySpec._(
    TfArgLiteral('ECC_SECG_P256K1'),
  );
  static const symmetricDefault = KmsExternalKeySpec._(
    TfArgLiteral('SYMMETRIC_DEFAULT'),
  );
  static const hmac224 = KmsExternalKeySpec._(TfArgLiteral('HMAC_224'));
  static const hmac256 = KmsExternalKeySpec._(TfArgLiteral('HMAC_256'));
  static const hmac384 = KmsExternalKeySpec._(TfArgLiteral('HMAC_384'));
  static const hmac512 = KmsExternalKeySpec._(TfArgLiteral('HMAC_512'));
  static const sm2 = KmsExternalKeySpec._(TfArgLiteral('SM2'));
  static const mlDsa44 = KmsExternalKeySpec._(TfArgLiteral('ML_DSA_44'));
  static const mlDsa65 = KmsExternalKeySpec._(TfArgLiteral('ML_DSA_65'));
  static const mlDsa87 = KmsExternalKeySpec._(TfArgLiteral('ML_DSA_87'));
  static const eccNistEdwards25519 = KmsExternalKeySpec._(
    TfArgLiteral('ECC_NIST_EDWARDS25519'),
  );

  static const List<KmsExternalKeySpec> values = [
    rsa2048,
    rsa3072,
    rsa4096,
    eccNistP256,
    eccNistP384,
    eccNistP521,
    eccSecgP256k1,
    symmetricDefault,
    hmac224,
    hmac256,
    hmac384,
    hmac512,
    sm2,
    mlDsa44,
    mlDsa65,
    mlDsa87,
    eccNistEdwards25519,
  ];
}

/// Kms External Key enum for `key_usage`.
extension type const KmsExternalKeyUsage._(TfArg<String> _)
    implements TfArg<String> {
  KmsExternalKeyUsage.variable(String name) : this._(TfArg.variable(name));
  KmsExternalKeyUsage.expression(String template)
    : this._(TfArg.expression(template));
  const KmsExternalKeyUsage.arg(TfArg<String> arg) : this._(arg);

  static const signVerify = KmsExternalKeyUsage._(TfArgLiteral('SIGN_VERIFY'));
  static const encryptDecrypt = KmsExternalKeyUsage._(
    TfArgLiteral('ENCRYPT_DECRYPT'),
  );
  static const generateVerifyMac = KmsExternalKeyUsage._(
    TfArgLiteral('GENERATE_VERIFY_MAC'),
  );
  static const keyAgreement = KmsExternalKeyUsage._(
    TfArgLiteral('KEY_AGREEMENT'),
  );

  static const List<KmsExternalKeyUsage> values = [
    signVerify,
    encryptDecrypt,
    generateVerifyMac,
    keyAgreement,
  ];
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
    Sensitive<String>? keyMaterialBase64,
    KmsExternalKeySpec? keySpec,
    KmsExternalKeyUsage? keyUsage,
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
