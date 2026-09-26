// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_function`.
const Set<String> _awsCloudfrontFunctionSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_function`.
final class DataAwsCloudfrontFunction extends Data {
  static const String tfType = 'aws_cloudfront_function';

  DataAwsCloudfrontFunction({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> stage,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name, 'stage': stage});

  @override
  Set<String> get sensitiveFields => _awsCloudfrontFunctionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `code` attribute.
  TfRef<String> get code => TfRef.attribute<String>(this, 'code');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `key_value_store_associations` attribute.
  TfRef<List<String>> get keyValueStoreAssociations =>
      TfRef.attribute<List<String>>(this, 'key_value_store_associations');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `runtime` attribute.
  TfRef<String> get runtime => TfRef.attribute<String>(this, 'runtime');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
