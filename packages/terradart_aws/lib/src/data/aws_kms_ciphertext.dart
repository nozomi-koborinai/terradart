// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kms/aws_kms_ciphertext.dart';
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_kms_ciphertext`.
const Set<String> _awsKmsCiphertextSensitive = <String>{'plaintext'};

/// Factory wrapper for `aws_kms_ciphertext`.
final class DataAwsKmsCiphertext extends Data {
  static const String tfType = 'aws_kms_ciphertext';

  DataAwsKmsCiphertext({
    required super.localName,
    TfArg<Map<String, String>>? context,
    required RefTo<AwsKmsKey> keyId,
    required TfArg<String> plaintext,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'context': ?context,
           'key_id': keyId.encodeAs('key_id'),
           'plaintext': plaintext,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsCiphertextSensitive;

  /// A reference to the `aws_kms_ciphertext` this data source reads, for
  /// arguments typed `RefTo<AwsKmsCiphertext>`.
  RefTo<AwsKmsCiphertext> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ciphertext_blob` attribute.
  TfRef<String> get ciphertextBlob =>
      TfRef.attribute<String>(this, 'ciphertext_blob');
}
