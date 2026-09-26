// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_qldb_stream`.
const Set<String> _awsQldbStreamSensitive = <String>{};

/// Typed helper for the `kinesis_configuration` block of
/// `aws_qldb_stream` (derived from provider schema).
@immutable
final class QldbStreamKinesisConfiguration {
  const QldbStreamKinesisConfiguration({
    this.aggregationEnabled,
    required this.streamArn,
  });

  final TfArg<bool>? aggregationEnabled;

  final TfArg<String> streamArn;

  Map<String, Object?> encode() => {
    if (aggregationEnabled != null)
      'aggregation_enabled': aggregationEnabled!.toTfJson(),
    'stream_arn': streamArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_qldb_stream`.
final class AwsQldbStream extends Resource {
  static const String tfType = 'aws_qldb_stream';

  AwsQldbStream({
    required super.localName,
    TfArg<String>? exclusiveEndTime,
    required TfArg<String> inclusiveStartTime,
    required TfArg<String> ledgerName,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    required TfArg<String> streamName,
    TfArg<Map<String, String>>? tags,
    required QldbStreamKinesisConfiguration kinesisConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (exclusiveEndTime != null) 'exclusive_end_time': exclusiveEndTime,
           'inclusive_start_time': inclusiveStartTime,
           'ledger_name': ledgerName,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           'stream_name': streamName,
           if (tags != null) 'tags': tags,
           'kinesis_configuration': TfArg.literal(
             kinesisConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQldbStreamSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
