// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_kinesis_streaming_destination`.
const Set<String> _awsDynamodbKinesisStreamingDestinationSensitive = <String>{};

/// Dynamodb Kinesis Streaming Destination Approximate Creation Date Time enum for `approximate_creation_date_time_precision`.
enum DynamodbKinesisStreamingDestinationApproximateCreationDateTimePrecision
    implements TerraformEnum {
  millisecond('MILLISECOND'),
  microsecond('MICROSECOND');

  const DynamodbKinesisStreamingDestinationApproximateCreationDateTimePrecision(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_dynamodb_kinesis_streaming_destination`.
final class AwsDynamodbKinesisStreamingDestination extends Resource {
  static const String tfType = 'aws_dynamodb_kinesis_streaming_destination';

  AwsDynamodbKinesisStreamingDestination({
    required super.localName,
    TfArg<
      DynamodbKinesisStreamingDestinationApproximateCreationDateTimePrecision
    >?
    approximateCreationDateTimePrecision,
    TfArg<String>? region,
    required TfArg<String> streamArn,
    required TfArg<String> tableName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (approximateCreationDateTimePrecision != null)
             'approximate_creation_date_time_precision':
                 approximateCreationDateTimePrecision,
           if (region != null) 'region': region,
           'stream_arn': streamArn,
           'table_name': tableName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDynamodbKinesisStreamingDestinationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDynamodbKinesisStreamingDestination>`.
  RefTo<AwsDynamodbKinesisStreamingDestination> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
