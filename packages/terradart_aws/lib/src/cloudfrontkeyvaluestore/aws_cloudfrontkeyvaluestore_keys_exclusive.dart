// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfrontkeyvaluestore_keys_exclusive`.
const Set<String> _awsCloudfrontkeyvaluestoreKeysExclusiveSensitive =
    <String>{};

/// Typed helper for the `resource_key_value_pair` block of
/// `aws_cloudfrontkeyvaluestore_keys_exclusive` (derived from provider schema).
@immutable
final class CloudfrontkeyvaluestoreKeysExclusiveResourceKeyValuePair {
  const CloudfrontkeyvaluestoreKeysExclusiveResourceKeyValuePair({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfrontkeyvaluestore_keys_exclusive`.
final class AwsCloudfrontkeyvaluestoreKeysExclusive extends Resource {
  static const String tfType = 'aws_cloudfrontkeyvaluestore_keys_exclusive';

  AwsCloudfrontkeyvaluestoreKeysExclusive({
    required super.localName,
    required TfArg<String> keyValueStoreArn,
    TfArg<num>? maxBatchSize,
    List<CloudfrontkeyvaluestoreKeysExclusiveResourceKeyValuePair>?
    resourceKeyValuePair,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_value_store_arn': keyValueStoreArn,
           if (maxBatchSize != null) 'max_batch_size': maxBatchSize,
           if (resourceKeyValuePair != null)
             'resource_key_value_pair': TfArg.literal([
               for (final e in resourceKeyValuePair) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudfrontkeyvaluestoreKeysExclusiveSensitive;

  /// Reference to `total_size_in_bytes` attribute.
  TfRef<num> get totalSizeInBytes =>
      TfRef.attribute<num>(this, 'total_size_in_bytes');
}
