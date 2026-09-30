// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kinesis/aws_kinesis_firehose_delivery_stream.dart';

/// Sensitive field paths for `aws_kinesis_firehose_delivery_stream`.
const Set<String> _awsKinesisFirehoseDeliveryStreamSensitive = <String>{};

/// Factory wrapper for `aws_kinesis_firehose_delivery_stream`.
final class DataAwsKinesisFirehoseDeliveryStream extends Data {
  static const String tfType = 'aws_kinesis_firehose_delivery_stream';

  DataAwsKinesisFirehoseDeliveryStream({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsKinesisFirehoseDeliveryStreamSensitive;

  /// A reference to the `aws_kinesis_firehose_delivery_stream` this data source reads, for
  /// arguments typed `RefTo<AwsKinesisFirehoseDeliveryStream>`.
  RefTo<AwsKinesisFirehoseDeliveryStream> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
