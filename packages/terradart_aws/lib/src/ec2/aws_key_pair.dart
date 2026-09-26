// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_key_pair`.
const Set<String> _awsKeyPairSensitive = <String>{};

/// Factory wrapper for `aws_key_pair`.
final class AwsKeyPair extends Resource {
  static const String tfType = 'aws_key_pair';

  AwsKeyPair({
    required super.localName,
    TfArg<String>? keyName,
    TfArg<String>? keyNamePrefix,
    required TfArg<String> publicKey,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (keyName != null) 'key_name': keyName,
           if (keyNamePrefix != null) 'key_name_prefix': keyNamePrefix,
           'public_key': publicKey,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKeyPairSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `key_pair_id` attribute.
  TfRef<String> get keyPairId => TfRef.attribute<String>(this, 'key_pair_id');

  /// Reference to `key_type` attribute.
  TfRef<String> get keyType => TfRef.attribute<String>(this, 'key_type');
}
