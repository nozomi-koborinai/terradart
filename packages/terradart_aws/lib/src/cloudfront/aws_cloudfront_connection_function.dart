// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_connection_function`.
const Set<String> _awsCloudfrontConnectionFunctionSensitive = <String>{};

/// Typed helper for the `connection_function_config` block of
/// `aws_cloudfront_connection_function` (derived from provider schema).
@immutable
final class CloudfrontConnectionFunctionConnectionFunctionConfig {
  const CloudfrontConnectionFunctionConnectionFunctionConfig({
    required this.comment,
    required this.runtime,
    this.keyValueStoreAssociation,
  });

  final TfArg<String> comment;

  final TfArg<String> runtime;

  final List<
    CloudfrontConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation
  >?
  keyValueStoreAssociation;

  Map<String, Object?> encode() => {
    'comment': comment.toTfJson(),
    'runtime': runtime.toTfJson(),
    if (keyValueStoreAssociation != null)
      'key_value_store_association': [
        for (final e in keyValueStoreAssociation!) e.encode(),
      ],
  };
}

/// Typed helper for the `connection_function_config.key_value_store_association` block of
/// `aws_cloudfront_connection_function` (derived from provider schema).
@immutable
final class CloudfrontConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation {
  const CloudfrontConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation({
    required this.keyValueStoreArn,
  });

  final TfArg<String> keyValueStoreArn;

  Map<String, Object?> encode() => {
    'key_value_store_arn': keyValueStoreArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_connection_function`.
final class AwsCloudfrontConnectionFunction extends Resource {
  static const String tfType = 'aws_cloudfront_connection_function';

  AwsCloudfrontConnectionFunction({
    required super.localName,
    required TfArg<String> connectionFunctionCode,
    required TfArg<String> name,
    TfArg<bool>? publish,
    TfArg<Map<String, String>>? tags,
    List<CloudfrontConnectionFunctionConnectionFunctionConfig>?
    connectionFunctionConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_function_code': connectionFunctionCode,
           'name': name,
           if (publish != null) 'publish': publish,
           if (tags != null) 'tags': tags,
           if (connectionFunctionConfig != null)
             'connection_function_config': TfArg.literal([
               for (final e in connectionFunctionConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontConnectionFunctionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_function_arn` attribute.
  TfRef<String> get connectionFunctionArn =>
      TfRef.attribute<String>(this, 'connection_function_arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `live_stage_etag` attribute.
  TfRef<String> get liveStageEtag =>
      TfRef.attribute<String>(this, 'live_stage_etag');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
