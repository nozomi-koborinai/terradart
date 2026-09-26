// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3tables_table_replication`.
const Set<String> _awsS3tablesTableReplicationSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_s3tables_table_replication` (derived from provider schema).
@immutable
final class S3tablesTableReplicationRule {
  const S3tablesTableReplicationRule({this.destination});

  final List<S3tablesTableReplicationRuleDestination>? destination;

  Map<String, Object?> encode() => {
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
  };
}

/// Typed helper for the `rule.destination` block of
/// `aws_s3tables_table_replication` (derived from provider schema).
@immutable
final class S3tablesTableReplicationRuleDestination {
  const S3tablesTableReplicationRuleDestination({
    required this.destinationTableBucketArn,
  });

  final TfArg<String> destinationTableBucketArn;

  Map<String, Object?> encode() => {
    'destination_table_bucket_arn': destinationTableBucketArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3tables_table_replication`.
final class AwsS3tablesTableReplication extends Resource {
  static const String tfType = 'aws_s3tables_table_replication';

  AwsS3tablesTableReplication({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> role,
    required TfArg<String> tableArn,
    List<S3tablesTableReplicationRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'role': role,
           'table_arn': tableArn,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3tablesTableReplicationSensitive;

  /// Reference to `version_token` attribute.
  TfRef<String> get versionToken =>
      TfRef.attribute<String>(this, 'version_token');
}
