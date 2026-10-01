// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_dynamodb_table_replica`.
const Set<String> _awsDynamodbTableReplicaSensitive = <String>{};

/// Dynamodb Table Replica Table Class enum for `table_class_override`.
extension type const DynamodbTableReplicaTableClassOverride._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableReplicaTableClassOverride.variable(String name)
    : this._(TfArg.variable(name));
  DynamodbTableReplicaTableClassOverride.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableReplicaTableClassOverride.arg(TfArg<String> arg)
    : this._(arg);

  static const standard = DynamodbTableReplicaTableClassOverride._(
    TfArgLiteral('STANDARD'),
  );
  static const standardInfrequentAccess =
      DynamodbTableReplicaTableClassOverride._(
        TfArgLiteral('STANDARD_INFREQUENT_ACCESS'),
      );

  static const List<DynamodbTableReplicaTableClassOverride> values = [
    standard,
    standardInfrequentAccess,
  ];
}

/// Factory wrapper for `aws_dynamodb_table_replica`.
final class AwsDynamodbTableReplica extends Resource {
  static const String tfType = 'aws_dynamodb_table_replica';

  AwsDynamodbTableReplica(
    super.localName, {
    TfArg<bool>? deletionProtectionEnabled,
    required TfArg<String> globalTableArn,
    RefTo<AwsKmsKey>? kmsKeyArn,
    TfArg<bool>? pointInTimeRecovery,
    TfArg<String>? region,
    DynamodbTableReplicaTableClassOverride? tableClassOverride,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_protection_enabled': ?deletionProtectionEnabled,
           'global_table_arn': globalTableArn,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'point_in_time_recovery': ?pointInTimeRecovery,
           'region': ?region,
           'table_class_override': ?tableClassOverride,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbTableReplicaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDynamodbTableReplica>`.
  RefTo<AwsDynamodbTableReplica> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabled =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `global_table_arn` attribute.
  TfRef<String> get globalTableArn =>
      TfRef.attribute<String>(this, 'global_table_arn');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `point_in_time_recovery` attribute.
  TfRef<bool> get pointInTimeRecovery =>
      TfRef.attribute<bool>(this, 'point_in_time_recovery');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_class_override` attribute.
  TfRef<String> get tableClassOverride =>
      TfRef.attribute<String>(this, 'table_class_override');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
