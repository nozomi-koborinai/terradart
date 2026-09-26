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
final class DataKmsSecretSecret {
  const DataKmsSecretSecret({
    this.context,
    this.grantTokens,
    required this.name,
    required this.payload,
  });

  final TfArg<Map<String, String>>? context;

  final TfArg<List<Object?>>? grantTokens;

  final TfArg<String> name;

  final TfArg<String> payload;

  Map<String, Object?> encode() => {
    if (context != null) 'context': context!.toTfJson(),
    if (grantTokens != null) 'grant_tokens': grantTokens!.toTfJson(),
    'name': name.toTfJson(),
    'payload': payload.toTfJson(),
  };
}

/// Factory wrapper for `aws_kms_secret`.
final class DataAwsKmsSecret extends Data {
  static const String tfType = 'aws_kms_secret';

  DataAwsKmsSecret({
    required super.localName,
    TfArg<String>? region,
    required List<DataKmsSecretSecret> secret,
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
  Set<String> get sensitiveFields => _awsKmsSecretSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
