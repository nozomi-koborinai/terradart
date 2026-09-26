// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_function`.
const Set<String> _awsCloudfrontFunctionSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_function`.
final class AwsCloudfrontFunction extends Resource {
  static const String tfType = 'aws_cloudfront_function';

  AwsCloudfrontFunction({
    required super.localName,
    required TfArg<String> code,
    TfArg<String>? comment,
    TfArg<List<String>>? keyValueStoreAssociations,
    required TfArg<String> name,
    TfArg<bool>? publish,
    required TfArg<String> runtime,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'code': code,
           if (comment != null) 'comment': comment,
           if (keyValueStoreAssociations != null)
             'key_value_store_associations': keyValueStoreAssociations,
           'name': name,
           if (publish != null) 'publish': publish,
           'runtime': runtime,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontFunctionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `live_stage_etag` attribute.
  TfRef<String> get liveStageEtag =>
      TfRef.attribute<String>(this, 'live_stage_etag');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
