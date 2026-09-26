// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_public_key`.
const Set<String> _awsKmsPublicKeySensitive = <String>{};

/// Factory wrapper for `aws_kms_public_key`.
final class DataAwsKmsPublicKey extends Data {
  static const String tfType = 'aws_kms_public_key';

  DataAwsKmsPublicKey({
    required super.localName,
    TfArg<List<String>>? grantTokens,
    required TfArg<String> keyId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (grantTokens != null) 'grant_tokens': grantTokens,
           'key_id': keyId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsPublicKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `customer_master_key_spec` attribute.
  TfRef<String> get customerMasterKeySpec =>
      TfRef.attribute<String>(this, 'customer_master_key_spec');

  /// Reference to `encryption_algorithms` attribute.
  TfRef<List<String>> get encryptionAlgorithms =>
      TfRef.attribute<List<String>>(this, 'encryption_algorithms');

  /// Reference to `key_usage` attribute.
  TfRef<String> get keyUsage => TfRef.attribute<String>(this, 'key_usage');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');

  /// Reference to `public_key_pem` attribute.
  TfRef<String> get publicKeyPem =>
      TfRef.attribute<String>(this, 'public_key_pem');

  /// Reference to `signing_algorithms` attribute.
  TfRef<List<String>> get signingAlgorithms =>
      TfRef.attribute<List<String>>(this, 'signing_algorithms');
}
