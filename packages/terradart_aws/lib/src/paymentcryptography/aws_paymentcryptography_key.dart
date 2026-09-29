// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_paymentcryptography_key`.
const Set<String> _awsPaymentcryptographyKeySensitive = <String>{};

/// Paymentcryptography Key Key Check Value enum for `key_check_value_algorithm`.
enum PaymentcryptographyKeyKeyCheckValueAlgorithm implements TerraformEnum {
  cmac('CMAC'),
  ansiX924('ANSI_X9_24'),
  hmac('HMAC'),
  sha1('SHA_1');

  const PaymentcryptographyKeyKeyCheckValueAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `key_attributes` block of
/// `aws_paymentcryptography_key` (derived from provider schema).
@immutable
final class PaymentcryptographyKeyKeyAttributes {
  const PaymentcryptographyKeyKeyAttributes({
    required this.keyAlgorithm,
    required this.keyClass,
    required this.keyUsage,
    this.keyModesOfUse,
  });

  final TfArg<PaymentcryptographyKeyKeyAttributesKeyAlgorithm> keyAlgorithm;

  final TfArg<PaymentcryptographyKeyKeyAttributesKeyClass> keyClass;

  final TfArg<PaymentcryptographyKeyKeyAttributesKeyUsage> keyUsage;

  final List<PaymentcryptographyKeyKeyAttributesKeyModesOfUse>? keyModesOfUse;

  Map<String, Object?> encode() => {
    'key_algorithm': keyAlgorithm.toTfJson(),
    'key_class': keyClass.toTfJson(),
    'key_usage': keyUsage.toTfJson(),
    if (keyModesOfUse != null)
      'key_modes_of_use': [for (final e in keyModesOfUse!) e.encode()],
  };
}

/// `key_algorithm` — derived from the provider schema description.
enum PaymentcryptographyKeyKeyAttributesKeyAlgorithm implements TerraformEnum {
  tdes2key('TDES_2KEY'),
  tdes3key('TDES_3KEY'),
  aes128('AES_128'),
  aes192('AES_192'),
  aes256('AES_256'),
  hmacSha256('HMAC_SHA256'),
  hmacSha384('HMAC_SHA384'),
  hmacSha512('HMAC_SHA512'),
  hmacSha224('HMAC_SHA224'),
  rsa2048('RSA_2048'),
  rsa3072('RSA_3072'),
  rsa4096('RSA_4096'),
  eccNistP256('ECC_NIST_P256'),
  eccNistP384('ECC_NIST_P384'),
  eccNistP521('ECC_NIST_P521');

  const PaymentcryptographyKeyKeyAttributesKeyAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// `key_class` — derived from the provider schema description.
enum PaymentcryptographyKeyKeyAttributesKeyClass implements TerraformEnum {
  symmetricKey('SYMMETRIC_KEY'),
  asymmetricKeyPair('ASYMMETRIC_KEY_PAIR'),
  privateKey('PRIVATE_KEY'),
  publicKey('PUBLIC_KEY');

  const PaymentcryptographyKeyKeyAttributesKeyClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// `key_usage` — derived from the provider schema description.
enum PaymentcryptographyKeyKeyAttributesKeyUsage implements TerraformEnum {
  tr31B0BaseDerivationKey('TR31_B0_BASE_DERIVATION_KEY'),
  tr31C0CardVerificationKey('TR31_C0_CARD_VERIFICATION_KEY'),
  tr31D0SymmetricDataEncryptionKey('TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY'),
  tr31D1AsymmetricKeyForDataEncryption(
    'TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION',
  ),
  tr31E0EmvMkeyAppCryptograms('TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS'),
  tr31E1EmvMkeyConfidentiality('TR31_E1_EMV_MKEY_CONFIDENTIALITY'),
  tr31E2EmvMkeyIntegrity('TR31_E2_EMV_MKEY_INTEGRITY'),
  tr31E4EmvMkeyDynamicNumbers('TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS'),
  tr31E5EmvMkeyCardPersonalization('TR31_E5_EMV_MKEY_CARD_PERSONALIZATION'),
  tr31E6EmvMkeyOther('TR31_E6_EMV_MKEY_OTHER'),
  tr31K0KeyEncryptionKey('TR31_K0_KEY_ENCRYPTION_KEY'),
  tr31K1KeyBlockProtectionKey('TR31_K1_KEY_BLOCK_PROTECTION_KEY'),
  tr31K3AsymmetricKeyForKeyAgreement(
    'TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT',
  ),
  tr31M0Iso16609MacKey('TR31_M0_ISO_16609_MAC_KEY'),
  tr31M3Iso97973MacKey('TR31_M3_ISO_9797_3_MAC_KEY'),
  tr31M1Iso97971MacKey('TR31_M1_ISO_9797_1_MAC_KEY'),
  tr31M6Iso97975CmacKey('TR31_M6_ISO_9797_5_CMAC_KEY'),
  tr31M7HmacKey('TR31_M7_HMAC_KEY'),
  tr31P0PinEncryptionKey('TR31_P0_PIN_ENCRYPTION_KEY'),
  tr31P1PinGenerationKey('TR31_P1_PIN_GENERATION_KEY'),
  tr31S0AsymmetricKeyForDigitalSignature(
    'TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE',
  ),
  tr31V1Ibm3624PinVerificationKey('TR31_V1_IBM3624_PIN_VERIFICATION_KEY'),
  tr31V2VisaPinVerificationKey('TR31_V2_VISA_PIN_VERIFICATION_KEY'),
  tr31K2Tr34AsymmetricKey('TR31_K2_TR34_ASYMMETRIC_KEY');

  const PaymentcryptographyKeyKeyAttributesKeyUsage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `key_attributes.key_modes_of_use` block of
/// `aws_paymentcryptography_key` (derived from provider schema).
@immutable
final class PaymentcryptographyKeyKeyAttributesKeyModesOfUse {
  const PaymentcryptographyKeyKeyAttributesKeyModesOfUse({
    this.decrypt,
    this.deriveKey,
    this.encrypt,
    this.generate,
    this.noRestrictions,
    this.sign,
    this.unwrap,
    this.verify,
    this.wrap,
  });

  final TfArg<bool>? decrypt;

  final TfArg<bool>? deriveKey;

  final TfArg<bool>? encrypt;

  final TfArg<bool>? generate;

  final TfArg<bool>? noRestrictions;

  final TfArg<bool>? sign;

  final TfArg<bool>? unwrap;

  final TfArg<bool>? verify;

  final TfArg<bool>? wrap;

  Map<String, Object?> encode() => {
    'decrypt': ?decrypt?.toTfJson(),
    'derive_key': ?deriveKey?.toTfJson(),
    'encrypt': ?encrypt?.toTfJson(),
    'generate': ?generate?.toTfJson(),
    'no_restrictions': ?noRestrictions?.toTfJson(),
    'sign': ?sign?.toTfJson(),
    'unwrap': ?unwrap?.toTfJson(),
    'verify': ?verify?.toTfJson(),
    'wrap': ?wrap?.toTfJson(),
  };
}

/// Factory wrapper for `aws_paymentcryptography_key`.
final class AwsPaymentcryptographyKey extends Resource {
  static const String tfType = 'aws_paymentcryptography_key';

  AwsPaymentcryptographyKey({
    required super.localName,
    TfArg<num>? deletionWindowInDays,
    TfArg<bool>? enabled,
    required TfArg<bool> exportable,
    TfArg<PaymentcryptographyKeyKeyCheckValueAlgorithm>? keyCheckValueAlgorithm,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<PaymentcryptographyKeyKeyAttributes>? keyAttributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_window_in_days': ?deletionWindowInDays,
           'enabled': ?enabled,
           'exportable': exportable,
           'key_check_value_algorithm': ?keyCheckValueAlgorithm,
           'region': ?region,
           'tags': ?tags,
           if (keyAttributes != null)
             'key_attributes': TfArg.literal([
               for (final e in keyAttributes) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPaymentcryptographyKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPaymentcryptographyKey>`.
  RefTo<AwsPaymentcryptographyKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `key_check_value` attribute.
  TfRef<String> get keyCheckValue =>
      TfRef.attribute<String>(this, 'key_check_value');

  /// Reference to `key_origin` attribute.
  TfRef<String> get keyOrigin => TfRef.attribute<String>(this, 'key_origin');

  /// Reference to `key_state` attribute.
  TfRef<String> get keyState => TfRef.attribute<String>(this, 'key_state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
