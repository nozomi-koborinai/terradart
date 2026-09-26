// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_key_pair`.
const Set<String> _awsKeyPairSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_key_pair` (derived from provider schema).
@immutable
final class DataKeyPairFilter {
  const DataKeyPairFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_key_pair`.
final class DataAwsKeyPair extends Data {
  static const String tfType = 'aws_key_pair';

  DataAwsKeyPair({
    required super.localName,
    TfArg<bool>? includePublicKey,
    TfArg<String>? keyName,
    TfArg<String>? keyPairId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataKeyPairFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (includePublicKey != null) 'include_public_key': includePublicKey,
           if (keyName != null) 'key_name': keyName,
           if (keyPairId != null) 'key_pair_id': keyPairId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKeyPairSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `key_type` attribute.
  TfRef<String> get keyType => TfRef.attribute<String>(this, 'key_type');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');
}
