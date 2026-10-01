// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_kms_ciphertext`.
const Set<String> _awsKmsCiphertextSensitive = <String>{
  'plaintext',
  'plaintext_wo',
};

/// Exactly one of `plaintext`, `plaintext_wo` on `aws_kms_ciphertext`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.plaintext(...)`.
sealed class KmsCiphertextPlaintext {
  const KmsCiphertextPlaintext();

  /// Sets `plaintext`.
  const factory KmsCiphertextPlaintext.plaintext(TfArg<String> plaintext) =
      KmsCiphertextPlaintextChoice;

  /// Sets `plaintext_wo`.
  const factory KmsCiphertextPlaintext.plaintextWo(TfArg<String> plaintextWo) =
      KmsCiphertextPlaintextWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [KmsCiphertextPlaintext.plaintext] choice: sets `plaintext`.
final class KmsCiphertextPlaintextChoice extends KmsCiphertextPlaintext {
  const KmsCiphertextPlaintextChoice(this.plaintext);

  final TfArg<String> plaintext;

  @override
  String get blockKey => 'plaintext';

  @override
  Map<String, Object?> encode() => {'plaintext': plaintext.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'plaintext': plaintext};
}

/// The [KmsCiphertextPlaintext.plaintextWo] choice: sets `plaintext_wo`.
final class KmsCiphertextPlaintextWo extends KmsCiphertextPlaintext {
  const KmsCiphertextPlaintextWo(this.plaintextWo);

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
    required RefTo<AwsKmsKey> keyId,
    required KmsCiphertextPlaintext plaintext,
    TfArg<String>? plaintextWoVersion,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'context': ?context,
           'key_id': keyId.encodeAs('key_id'),
           ...plaintext.argMap,
           'plaintext_wo_version': ?plaintextWoVersion,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsCiphertextSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKmsCiphertext>`.
  RefTo<AwsKmsCiphertext> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ciphertext_blob` attribute.
  TfRef<String> get ciphertextBlob =>
      TfRef.attribute<String>(this, 'ciphertext_blob');

  /// Reference to `context` attribute.
  TfRef<Map<String, String>> get context =>
      TfRef.attribute<Map<String, String>>(this, 'context');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `plaintext` attribute.
  TfRef<String> get plaintext => TfRef.attribute<String>(this, 'plaintext');

  /// Reference to `plaintext_wo_version` attribute.
  TfRef<String> get plaintextWoVersion =>
      TfRef.attribute<String>(this, 'plaintext_wo_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
