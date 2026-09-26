// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_ciphertext`.
const Set<String> _awsKmsCiphertextSensitive = <String>{'plaintext'};

/// Factory wrapper for `aws_kms_ciphertext`.
final class DataAwsKmsCiphertext extends Data {
  static const String tfType = 'aws_kms_ciphertext';

  DataAwsKmsCiphertext({
    required super.localName,
    TfArg<Map<String, String>>? context,
    required TfArg<String> keyId,
    required TfArg<String> plaintext,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (context != null) 'context': context,
           'key_id': keyId,
           'plaintext': plaintext,
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
