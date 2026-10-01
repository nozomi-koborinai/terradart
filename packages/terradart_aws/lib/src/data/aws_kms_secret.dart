// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_secret`.
const Set<String> _awsKmsSecretSensitive = <String>{};

/// Typed helper for the `secret` block of
/// `aws_kms_secret` (derived from provider schema).
@immutable
final class DataKmsSecret {
  const DataKmsSecret({
    this.context,
    this.grantTokens,
    required this.name,
    required this.payload,
  });

  final TfArg<Map<String, String>>? context;

  final TfArg<List<String>>? grantTokens;

  final TfArg<String> name;

  final TfArg<String> payload;

  @internal
  Map<String, Object?> encode() => {
    'context': ?context?.toTfJson(),
    'grant_tokens': ?grantTokens?.toTfJson(),
    'name': name.toTfJson(),
    'payload': payload.toTfJson(),
  };
}

/// Factory wrapper for `aws_kms_secret`.
final class DataAwsKmsSecret extends Data {
  static const String tfType = 'aws_kms_secret';

  DataAwsKmsSecret(
    super.localName, {
    TfArg<String>? region,
    required List<DataKmsSecret> secret,
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
  Set<String> get sensitiveFields => _awsKmsSecretSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
