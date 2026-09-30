// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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
    'aggregation_enabled': ?aggregationEnabled?.toTfJson(),
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
    required RefTo<AwsIamRole> roleArn,
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
           'exclusive_end_time': ?exclusiveEndTime,
           'inclusive_start_time': inclusiveStartTime,
           'ledger_name': ledgerName,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'stream_name': streamName,
           'tags': ?tags,
           'kinesis_configuration': TfArg.literal(
             kinesisConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQldbStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQldbStream>`.
  RefTo<AwsQldbStream> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `exclusive_end_time` attribute.
  TfRef<String> get exclusiveEndTimeRef =>
      TfRef.attribute<String>(this, 'exclusive_end_time');

  /// Reference to `inclusive_start_time` attribute.
  TfRef<String> get inclusiveStartTimeRef =>
      TfRef.attribute<String>(this, 'inclusive_start_time');

  /// Reference to `ledger_name` attribute.
  TfRef<String> get ledgerNameRef =>
      TfRef.attribute<String>(this, 'ledger_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `stream_name` attribute.
  TfRef<String> get streamNameRef =>
      TfRef.attribute<String>(this, 'stream_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
