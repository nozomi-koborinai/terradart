// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kinesis/aws_kinesis_stream_consumer.dart';

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
           'arn': ?arn,
           'name': ?name,
           'region': ?region,
           'stream_arn': streamArn,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKinesisStreamConsumerSensitive;

  /// A reference to the `aws_kinesis_stream_consumer` this data source reads, for
  /// arguments typed `RefTo<AwsKinesisStreamConsumer>`.
  RefTo<AwsKinesisStreamConsumer> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `stream_arn` attribute.
  TfRef<String> get streamArn => TfRef.attribute<String>(this, 'stream_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
