// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_table_replica`.
const Set<String> _awsDynamodbTableReplicaSensitive = <String>{};

/// Factory wrapper for `aws_dynamodb_table_replica`.
final class AwsDynamodbTableReplica extends Resource {
  static const String tfType = 'aws_dynamodb_table_replica';

  AwsDynamodbTableReplica({
    required super.localName,
    TfArg<bool>? deletionProtectionEnabled,
    required TfArg<String> globalTableArn,
    TfArg<String>? kmsKeyArn,
    TfArg<bool>? pointInTimeRecovery,
    TfArg<String>? region,
    TfArg<String>? tableClassOverride,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionProtectionEnabled != null)
             'deletion_protection_enabled': deletionProtectionEnabled,
           'global_table_arn': globalTableArn,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           if (pointInTimeRecovery != null)
             'point_in_time_recovery': pointInTimeRecovery,
           if (region != null) 'region': region,
           if (tableClassOverride != null)
             'table_class_override': tableClassOverride,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbTableReplicaSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
