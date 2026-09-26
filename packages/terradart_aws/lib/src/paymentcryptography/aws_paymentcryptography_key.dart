// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_paymentcryptography_key`.
const Set<String> _awsPaymentcryptographyKeySensitive = <String>{};

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

  final TfArg<String> keyAlgorithm;

  final TfArg<String> keyClass;

  final TfArg<String> keyUsage;

  final List<PaymentcryptographyKeyKeyAttributesKeyModesOfUse>? keyModesOfUse;

  Map<String, Object?> encode() => {
    'key_algorithm': keyAlgorithm.toTfJson(),
    'key_class': keyClass.toTfJson(),
    'key_usage': keyUsage.toTfJson(),
    if (keyModesOfUse != null)
      'key_modes_of_use': [for (final e in keyModesOfUse!) e.encode()],
  };
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
    if (decrypt != null) 'decrypt': decrypt!.toTfJson(),
    if (deriveKey != null) 'derive_key': deriveKey!.toTfJson(),
    if (encrypt != null) 'encrypt': encrypt!.toTfJson(),
    if (generate != null) 'generate': generate!.toTfJson(),
    if (noRestrictions != null) 'no_restrictions': noRestrictions!.toTfJson(),
    if (sign != null) 'sign': sign!.toTfJson(),
    if (unwrap != null) 'unwrap': unwrap!.toTfJson(),
    if (verify != null) 'verify': verify!.toTfJson(),
    if (wrap != null) 'wrap': wrap!.toTfJson(),
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
    TfArg<String>? keyCheckValueAlgorithm,
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
           if (deletionWindowInDays != null)
             'deletion_window_in_days': deletionWindowInDays,
           if (enabled != null) 'enabled': enabled,
           'exportable': exportable,
           if (keyCheckValueAlgorithm != null)
             'key_check_value_algorithm': keyCheckValueAlgorithm,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (keyAttributes != null)
             'key_attributes': TfArg.literal([
               for (final e in keyAttributes) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPaymentcryptographyKeySensitive;

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
