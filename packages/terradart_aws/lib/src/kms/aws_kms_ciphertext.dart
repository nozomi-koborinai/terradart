// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_ciphertext`.
const Set<String> _awsKmsCiphertextSensitive = <String>{
  'plaintext',
  'plaintext_wo',
};

/// Exactly one of `plaintext`, `plaintext_wo` on `aws_kms_ciphertext`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.plaintext(...)`.
sealed class KmsCiphertextPlaintextOrPlaintextWo {
  const KmsCiphertextPlaintextOrPlaintextWo();

  /// Sets `plaintext`.
  const factory KmsCiphertextPlaintextOrPlaintextWo.plaintext(
    TfArg<String> plaintext,
  ) = KmsCiphertextPlaintextOrPlaintextWoPlaintext;

  /// Sets `plaintext_wo`.
  const factory KmsCiphertextPlaintextOrPlaintextWo.plaintextWo(
    TfArg<String> plaintextWo,
  ) = KmsCiphertextPlaintextOrPlaintextWoPlaintextWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [KmsCiphertextPlaintextOrPlaintextWo.plaintext] choice: sets `plaintext`.
final class KmsCiphertextPlaintextOrPlaintextWoPlaintext
    extends KmsCiphertextPlaintextOrPlaintextWo {
  const KmsCiphertextPlaintextOrPlaintextWoPlaintext(this.plaintext);

  final TfArg<String> plaintext;

  @override
  String get blockKey => 'plaintext';

  @override
  Map<String, Object?> encode() => {'plaintext': plaintext.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'plaintext': plaintext};
}

/// The [KmsCiphertextPlaintextOrPlaintextWo.plaintextWo] choice: sets `plaintext_wo`.
final class KmsCiphertextPlaintextOrPlaintextWoPlaintextWo
    extends KmsCiphertextPlaintextOrPlaintextWo {
  const KmsCiphertextPlaintextOrPlaintextWoPlaintextWo(this.plaintextWo);

  final TfArg<String> plaintextWo;

  @override
  String get blockKey => 'plaintext_wo';

  @override
  Map<String, Object?> encode() => {'plaintext_wo': plaintextWo.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'plaintext_wo': plaintextWo};
}

/// Factory wrapper for `aws_kms_ciphertext`.
final class AwsKmsCiphertext extends Resource {
  static const String tfType = 'aws_kms_ciphertext';

  AwsKmsCiphertext({
    required super.localName,
    TfArg<Map<String, String>>? context,
    required TfArg<String> keyId,
    required KmsCiphertextPlaintextOrPlaintextWo plaintextOrPlaintextWo,
    TfArg<String>? plaintextWoVersion,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (context != null) 'context': context,
           'key_id': keyId,
           ...plaintextOrPlaintextWo.argMap,
           if (plaintextWoVersion != null)
             'plaintext_wo_version': plaintextWoVersion,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsCiphertextSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ciphertext_blob` attribute.
  TfRef<String> get ciphertextBlob =>
      TfRef.attribute<String>(this, 'ciphertext_blob');
}
