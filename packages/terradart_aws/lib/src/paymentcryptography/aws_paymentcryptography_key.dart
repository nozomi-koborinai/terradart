// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_paymentcryptography_key`.
const Set<String> _awsPaymentcryptographyKeySensitive = <String>{};

/// Paymentcryptography Key Check Value enum for `key_check_value_algorithm`.
extension type const PaymentcryptographyKeyCheckValueAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  PaymentcryptographyKeyCheckValueAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  PaymentcryptographyKeyCheckValueAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const PaymentcryptographyKeyCheckValueAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const cmac = PaymentcryptographyKeyCheckValueAlgorithm._(
    TfArgLiteral('CMAC'),
  );
  static const ansiX924 = PaymentcryptographyKeyCheckValueAlgorithm._(
    TfArgLiteral('ANSI_X9_24'),
  );
  static const hmac = PaymentcryptographyKeyCheckValueAlgorithm._(
    TfArgLiteral('HMAC'),
  );
  static const sha1 = PaymentcryptographyKeyCheckValueAlgorithm._(
    TfArgLiteral('SHA_1'),
  );

  static const List<PaymentcryptographyKeyCheckValueAlgorithm> values = [
    cmac,
    ansiX924,
    hmac,
    sha1,
  ];
}

/// Typed helper for the `key_attributes` block of
/// `aws_paymentcryptography_key` (derived from provider schema).
@immutable
final class PaymentcryptographyKeyAttributes {
  const PaymentcryptographyKeyAttributes({
    required this.keyAlgorithm,
    required this.keyClass,
    required this.keyUsage,
    this.keyModesOfUse,
  });

  final PaymentcryptographyKeyAlgorithm keyAlgorithm;

  final PaymentcryptographyKeyClass keyClass;

  final PaymentcryptographyKeyUsage keyUsage;

  final List<PaymentcryptographyKeyModesOfUse>? keyModesOfUse;

  Map<String, Object?> encode() => {
    'key_algorithm': keyAlgorithm.toTfJson(),
    'key_class': keyClass.toTfJson(),
    'key_usage': keyUsage.toTfJson(),
    if (keyModesOfUse != null)
      'key_modes_of_use': [for (final e in keyModesOfUse!) e.encode()],
  };
}

/// `key_algorithm` — derived from the provider schema description.
extension type const PaymentcryptographyKeyAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  PaymentcryptographyKeyAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  PaymentcryptographyKeyAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const PaymentcryptographyKeyAlgorithm.arg(TfArg<String> arg) : this._(arg);

  static const tdes2key = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('TDES_2KEY'),
  );
  static const tdes3key = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('TDES_3KEY'),
  );
  static const aes128 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('AES_128'),
  );
  static const aes192 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('AES_192'),
  );
  static const aes256 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('AES_256'),
  );
  static const hmacSha256 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('HMAC_SHA256'),
  );
  static const hmacSha384 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('HMAC_SHA384'),
  );
  static const hmacSha512 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('HMAC_SHA512'),
  );
  static const hmacSha224 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('HMAC_SHA224'),
  );
  static const rsa2048 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('RSA_2048'),
  );
  static const rsa3072 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('RSA_3072'),
  );
  static const rsa4096 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('RSA_4096'),
  );
  static const eccNistP256 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('ECC_NIST_P256'),
  );
  static const eccNistP384 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('ECC_NIST_P384'),
  );
  static const eccNistP521 = PaymentcryptographyKeyAlgorithm._(
    TfArgLiteral('ECC_NIST_P521'),
  );

  static const List<PaymentcryptographyKeyAlgorithm> values = [
    tdes2key,
    tdes3key,
    aes128,
    aes192,
    aes256,
    hmacSha256,
    hmacSha384,
    hmacSha512,
    hmacSha224,
    rsa2048,
    rsa3072,
    rsa4096,
    eccNistP256,
    eccNistP384,
    eccNistP521,
  ];
}

/// `key_class` — derived from the provider schema description.
extension type const PaymentcryptographyKeyClass._(TfArg<String> _)
    implements TfArg<String> {
  PaymentcryptographyKeyClass.variable(String name)
    : this._(TfArg.variable(name));
  PaymentcryptographyKeyClass.expression(String template)
    : this._(TfArg.expression(template));
  const PaymentcryptographyKeyClass.arg(TfArg<String> arg) : this._(arg);

  static const symmetricKey = PaymentcryptographyKeyClass._(
    TfArgLiteral('SYMMETRIC_KEY'),
  );
  static const asymmetricKeyPair = PaymentcryptographyKeyClass._(
    TfArgLiteral('ASYMMETRIC_KEY_PAIR'),
  );
  static const privateKey = PaymentcryptographyKeyClass._(
    TfArgLiteral('PRIVATE_KEY'),
  );
  static const publicKey = PaymentcryptographyKeyClass._(
    TfArgLiteral('PUBLIC_KEY'),
  );

  static const List<PaymentcryptographyKeyClass> values = [
    symmetricKey,
    asymmetricKeyPair,
    privateKey,
    publicKey,
  ];
}

/// `key_usage` — derived from the provider schema description.
extension type const PaymentcryptographyKeyUsage._(TfArg<String> _)
    implements TfArg<String> {
  PaymentcryptographyKeyUsage.variable(String name)
    : this._(TfArg.variable(name));
  PaymentcryptographyKeyUsage.expression(String template)
    : this._(TfArg.expression(template));
  const PaymentcryptographyKeyUsage.arg(TfArg<String> arg) : this._(arg);

  static const tr31B0BaseDerivationKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_B0_BASE_DERIVATION_KEY'),
  );
  static const tr31C0CardVerificationKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_C0_CARD_VERIFICATION_KEY'),
  );
  static const tr31D0SymmetricDataEncryptionKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY'),
  );
  static const tr31D1AsymmetricKeyForDataEncryption =
      PaymentcryptographyKeyUsage._(
        TfArgLiteral('TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION'),
      );
  static const tr31E0EmvMkeyAppCryptograms = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS'),
  );
  static const tr31E1EmvMkeyConfidentiality = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_E1_EMV_MKEY_CONFIDENTIALITY'),
  );
  static const tr31E2EmvMkeyIntegrity = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_E2_EMV_MKEY_INTEGRITY'),
  );
  static const tr31E4EmvMkeyDynamicNumbers = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS'),
  );
  static const tr31E5EmvMkeyCardPersonalization = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_E5_EMV_MKEY_CARD_PERSONALIZATION'),
  );
  static const tr31E6EmvMkeyOther = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_E6_EMV_MKEY_OTHER'),
  );
  static const tr31K0KeyEncryptionKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_K0_KEY_ENCRYPTION_KEY'),
  );
  static const tr31K1KeyBlockProtectionKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_K1_KEY_BLOCK_PROTECTION_KEY'),
  );
  static const tr31K3AsymmetricKeyForKeyAgreement =
      PaymentcryptographyKeyUsage._(
        TfArgLiteral('TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT'),
      );
  static const tr31M0Iso16609MacKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_M0_ISO_16609_MAC_KEY'),
  );
  static const tr31M3Iso97973MacKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_M3_ISO_9797_3_MAC_KEY'),
  );
  static const tr31M1Iso97971MacKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_M1_ISO_9797_1_MAC_KEY'),
  );
  static const tr31M6Iso97975CmacKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_M6_ISO_9797_5_CMAC_KEY'),
  );
  static const tr31M7HmacKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_M7_HMAC_KEY'),
  );
  static const tr31P0PinEncryptionKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_P0_PIN_ENCRYPTION_KEY'),
  );
  static const tr31P1PinGenerationKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_P1_PIN_GENERATION_KEY'),
  );
  static const tr31S0AsymmetricKeyForDigitalSignature =
      PaymentcryptographyKeyUsage._(
        TfArgLiteral('TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE'),
      );
  static const tr31V1Ibm3624PinVerificationKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_V1_IBM3624_PIN_VERIFICATION_KEY'),
  );
  static const tr31V2VisaPinVerificationKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_V2_VISA_PIN_VERIFICATION_KEY'),
  );
  static const tr31K2Tr34AsymmetricKey = PaymentcryptographyKeyUsage._(
    TfArgLiteral('TR31_K2_TR34_ASYMMETRIC_KEY'),
  );

  static const List<PaymentcryptographyKeyUsage> values = [
    tr31B0BaseDerivationKey,
    tr31C0CardVerificationKey,
    tr31D0SymmetricDataEncryptionKey,
    tr31D1AsymmetricKeyForDataEncryption,
    tr31E0EmvMkeyAppCryptograms,
    tr31E1EmvMkeyConfidentiality,
    tr31E2EmvMkeyIntegrity,
    tr31E4EmvMkeyDynamicNumbers,
    tr31E5EmvMkeyCardPersonalization,
    tr31E6EmvMkeyOther,
    tr31K0KeyEncryptionKey,
    tr31K1KeyBlockProtectionKey,
    tr31K3AsymmetricKeyForKeyAgreement,
    tr31M0Iso16609MacKey,
    tr31M3Iso97973MacKey,
    tr31M1Iso97971MacKey,
    tr31M6Iso97975CmacKey,
    tr31M7HmacKey,
    tr31P0PinEncryptionKey,
    tr31P1PinGenerationKey,
    tr31S0AsymmetricKeyForDigitalSignature,
    tr31V1Ibm3624PinVerificationKey,
    tr31V2VisaPinVerificationKey,
    tr31K2Tr34AsymmetricKey,
  ];
}

/// Typed helper for the `key_attributes.key_modes_of_use` block of
/// `aws_paymentcryptography_key` (derived from provider schema).
@immutable
final class PaymentcryptographyKeyModesOfUse {
  const PaymentcryptographyKeyModesOfUse({
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

  AwsPaymentcryptographyKey(
    super.localName, {
    TfArg<num>? deletionWindowInDays,
    TfArg<bool>? enabled,
    required TfArg<bool> exportable,
    PaymentcryptographyKeyCheckValueAlgorithm? keyCheckValueAlgorithm,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<PaymentcryptographyKeyAttributes>? keyAttributes,
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

  /// Reference to `deletion_window_in_days` attribute.
  TfRef<num> get deletionWindowInDays =>
      TfRef.attribute<num>(this, 'deletion_window_in_days');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `exportable` attribute.
  TfRef<bool> get exportable => TfRef.attribute<bool>(this, 'exportable');

  /// Reference to `key_check_value_algorithm` attribute.
  TfRef<String> get keyCheckValueAlgorithm =>
      TfRef.attribute<String>(this, 'key_check_value_algorithm');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
