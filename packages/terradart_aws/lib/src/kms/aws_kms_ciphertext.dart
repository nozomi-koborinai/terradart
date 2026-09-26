// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_ciphertext`.
const Set<String> _awsKmsCiphertextSensitive = <String>{
  'plaintext',
  'plaintext_wo',
};

/// Factory wrapper for `aws_kms_ciphertext`.
final class AwsKmsCiphertext extends Resource {
  static const String tfType = 'aws_kms_ciphertext';

  AwsKmsCiphertext({
    required super.localName,
    TfArg<Map<String, String>>? context,
    required TfArg<String> keyId,
    TfArg<String>? plaintext,
    TfArg<String>? plaintextWo,
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
           if (plaintext != null) 'plaintext': plaintext,
           if (plaintextWo != null) 'plaintext_wo': plaintextWo,
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
