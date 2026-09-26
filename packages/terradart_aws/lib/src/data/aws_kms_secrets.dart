// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_secrets`.
const Set<String> _awsKmsSecretsSensitive = <String>{'plaintext'};

/// Typed helper for the `secret` block of
/// `aws_kms_secrets` (derived from provider schema).
@immutable
final class DataKmsSecretsSecret {
  const DataKmsSecretsSecret({
    this.context,
    this.encryptionAlgorithm,
    this.grantTokens,
    this.keyId,
    required this.name,
    required this.payload,
  });

  final TfArg<Map<String, String>>? context;

  final TfArg<String>? encryptionAlgorithm;

  final TfArg<List<Object?>>? grantTokens;

  final TfArg<String>? keyId;

  final TfArg<String> name;

  final TfArg<String> payload;

  Map<String, Object?> encode() => {
    if (context != null) 'context': context!.toTfJson(),
    if (encryptionAlgorithm != null)
      'encryption_algorithm': encryptionAlgorithm!.toTfJson(),
    if (grantTokens != null) 'grant_tokens': grantTokens!.toTfJson(),
    if (keyId != null) 'key_id': keyId!.toTfJson(),
    'name': name.toTfJson(),
    'payload': payload.toTfJson(),
  };
}

/// Factory wrapper for `aws_kms_secrets`.
final class DataAwsKmsSecrets extends Data {
  static const String tfType = 'aws_kms_secrets';

  DataAwsKmsSecrets({
    required super.localName,
    TfArg<String>? region,
    required List<DataKmsSecretsSecret> secret,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'secret': TfArg.literal([for (final e in secret) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsSecretsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `plaintext` attribute.
  TfRef<Map<String, String>> get plaintext =>
      TfRef.attribute<Map<String, String>>(this, 'plaintext');
}
