// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_s3tables_table_replication`.
const Set<String> _awsS3tablesTableReplicationSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_s3tables_table_replication` (derived from provider schema).
@immutable
final class S3tablesTableReplicationRule {
  const S3tablesTableReplicationRule({this.destination});

  final List<S3tablesTableReplicationDestination>? destination;

  Map<String, Object?> encode() => {
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
  };
}

/// Typed helper for the `rule.destination` block of
/// `aws_s3tables_table_replication` (derived from provider schema).
@immutable
final class S3tablesTableReplicationDestination {
  const S3tablesTableReplicationDestination({
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
    required RefTo<AwsIamRole> role,
    required TfArg<String> tableArn,
    List<S3tablesTableReplicationRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'role': role.encodeAs('arn'),
           'table_arn': tableArn,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3tablesTableReplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3tablesTableReplication>`.
  RefTo<AwsS3tablesTableReplication> get ref => RefTo.of(this);

  /// Reference to `version_token` attribute.
  TfRef<String> get versionToken =>
      TfRef.attribute<String>(this, 'version_token');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `table_arn` attribute.
  TfRef<String> get tableArnRef => TfRef.attribute<String>(this, 'table_arn');
}
