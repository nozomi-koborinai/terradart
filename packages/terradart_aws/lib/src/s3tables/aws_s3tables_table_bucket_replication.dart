// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3tables_table_bucket_replication`.
const Set<String> _awsS3tablesTableBucketReplicationSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_s3tables_table_bucket_replication` (derived from provider schema).
@immutable
final class S3tablesTableBucketReplicationRule {
  const S3tablesTableBucketReplicationRule({this.destination});

  final List<S3tablesTableBucketReplicationRuleDestination>? destination;

  Map<String, Object?> encode() => {
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
  };
}

/// Typed helper for the `rule.destination` block of
/// `aws_s3tables_table_bucket_replication` (derived from provider schema).
@immutable
final class S3tablesTableBucketReplicationRuleDestination {
  const S3tablesTableBucketReplicationRuleDestination({
    required this.destinationTableBucketArn,
  });

  final TfArg<String> destinationTableBucketArn;

  Map<String, Object?> encode() => {
    'destination_table_bucket_arn': destinationTableBucketArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3tables_table_bucket_replication`.
final class AwsS3tablesTableBucketReplication extends Resource {
  static const String tfType = 'aws_s3tables_table_bucket_replication';

  AwsS3tablesTableBucketReplication({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> role,
    required TfArg<String> tableBucketArn,
    List<S3tablesTableBucketReplicationRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'role': role,
           'table_bucket_arn': tableBucketArn,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3tablesTableBucketReplicationSensitive;

  /// Reference to `version_token` attribute.
  TfRef<String> get versionToken =>
      TfRef.attribute<String>(this, 'version_token');
}
