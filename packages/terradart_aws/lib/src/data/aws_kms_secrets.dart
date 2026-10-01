// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../kms/aws_kms_key.dart' show AwsKmsKey;

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

  final TfArg<List<String>>? grantTokens;

  final RefTo<AwsKmsKey>? keyId;

  final TfArg<String> name;

  final TfArg<String> payload;

  Map<String, Object?> encode() => {
    'context': ?context?.toTfJson(),
    'encryption_algorithm': ?encryptionAlgorithm?.toTfJson(),
    'grant_tokens': ?grantTokens?.toTfJson(),
    'key_id': ?keyId?.encodeAs('arn').toTfJson(),
    'name': name.toTfJson(),
    'payload': payload.toTfJson(),
  };
}

/// Factory wrapper for `aws_kms_secrets`.
final class DataAwsKmsSecrets extends Data {
  static const String tfType = 'aws_kms_secrets';

  DataAwsKmsSecrets(
    super.localName, {
    TfArg<String>? region,
    required List<DataKmsSecretsSecret> secret,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
