// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_key_value_store`.
const Set<String> _awsCloudfrontKeyValueStoreSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_key_value_store`.
final class AwsCloudfrontKeyValueStore extends Resource {
  static const String tfType = 'aws_cloudfront_key_value_store';

  AwsCloudfrontKeyValueStore(
    super.localName, {
    TfArg<String>? comment,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'comment': ?comment, 'name': name, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontKeyValueStoreSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudfrontKeyValueStore>`.
  RefTo<AwsCloudfrontKeyValueStore> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
