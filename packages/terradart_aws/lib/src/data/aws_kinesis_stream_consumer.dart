// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kinesis_stream_consumer`.
const Set<String> _awsKinesisStreamConsumerSensitive = <String>{};

/// Factory wrapper for `aws_kinesis_stream_consumer`.
final class DataAwsKinesisStreamConsumer extends Data {
  static const String tfType = 'aws_kinesis_stream_consumer';

  DataAwsKinesisStreamConsumer({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? name,
    TfArg<String>? region,
    required TfArg<String> streamArn,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           'stream_arn': streamArn,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKinesisStreamConsumerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
