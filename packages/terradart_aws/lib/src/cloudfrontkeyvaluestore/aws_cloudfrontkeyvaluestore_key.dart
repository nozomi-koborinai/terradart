// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfrontkeyvaluestore_key`.
const Set<String> _awsCloudfrontkeyvaluestoreKeySensitive = <String>{};

/// Factory wrapper for `aws_cloudfrontkeyvaluestore_key`.
final class AwsCloudfrontkeyvaluestoreKey extends Resource {
  static const String tfType = 'aws_cloudfrontkeyvaluestore_key';

  AwsCloudfrontkeyvaluestoreKey({
    required super.localName,
    required TfArg<String> key,
    required TfArg<String> keyValueStoreArn,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key': key,
           'key_value_store_arn': keyValueStoreArn,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontkeyvaluestoreKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `total_size_in_bytes` attribute.
  TfRef<num> get totalSizeInBytes =>
      TfRef.attribute<num>(this, 'total_size_in_bytes');
}
