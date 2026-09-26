// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_key_group`.
const Set<String> _awsCloudfrontKeyGroupSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_key_group`.
final class AwsCloudfrontKeyGroup extends Resource {
  static const String tfType = 'aws_cloudfront_key_group';

  AwsCloudfrontKeyGroup({
    required super.localName,
    TfArg<String>? comment,
    required TfArg<List<String>> items,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           'items': items,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontKeyGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
