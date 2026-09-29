// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_keyspaces_table`.
const Set<String> _awsKeyspacesTableSensitive = <String>{};

/// Typed helper for the `capacity_specification` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableCapacitySpecification {
  const KeyspacesTableCapacitySpecification({
    this.readCapacityUnits,
    this.throughputMode,
    this.writeCapacityUnits,
  });

  final TfArg<num>? readCapacityUnits;

  final TfArg<KeyspacesTableCapacitySpecificationThroughputMode>?
  throughputMode;

  final TfArg<num>? writeCapacityUnits;

  Map<String, Object?> encode() => {
    if (readCapacityUnits != null)
      'read_capacity_units': readCapacityUnits!.toTfJson(),
    if (throughputMode != null) 'throughput_mode': throughputMode!.toTfJson(),
    if (writeCapacityUnits != null)
      'write_capacity_units': writeCapacityUnits!.toTfJson(),
  };
}

/// `throughput_mode` — derived from the provider schema description.
enum KeyspacesTableCapacitySpecificationThroughputMode
    implements TerraformEnum {
  payPerRequest('PAY_PER_REQUEST'),
  provisioned('PROVISIONED');

  const KeyspacesTableCapacitySpecificationThroughputMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `client_side_timestamps` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableClientSideTimestamps {
  const KeyspacesTableClientSideTimestamps({required this.status});

  final TfArg<KeyspacesTableClientSideTimestampsStatus> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// `status` — derived from the provider schema description.
enum KeyspacesTableClientSideTimestampsStatus implements TerraformEnum {
  enabled('ENABLED');

  const KeyspacesTableClientSideTimestampsStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `comment` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableComment {
  const KeyspacesTableComment({this.message});

  final TfArg<String>? message;

  Map<String, Object?> encode() => {
    if (message != null) 'message': message!.toTfJson(),
  };
}

/// Typed helper for the `encryption_specification` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableEncryptionSpecification {
  const KeyspacesTableEncryptionSpecification({
    this.kmsKeyIdentifier,
    this.type,
  });

  final TfArg<String>? kmsKeyIdentifier;

  final TfArg<KeyspacesTableEncryptionSpecificationType>? type;

  Map<String, Object?> encode() => {
    if (kmsKeyIdentifier != null)
      'kms_key_identifier': kmsKeyIdentifier!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum KeyspacesTableEncryptionSpecificationType implements TerraformEnum {
  customerManagedKmsKey('CUSTOMER_MANAGED_KMS_KEY'),
  awsOwnedKmsKey('AWS_OWNED_KMS_KEY');

  const KeyspacesTableEncryptionSpecificationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `point_in_time_recovery` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTablePointInTimeRecovery {
  const KeyspacesTablePointInTimeRecovery({this.status});

  final TfArg<KeyspacesTablePointInTimeRecoveryStatus>? status;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum KeyspacesTablePointInTimeRecoveryStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const KeyspacesTablePointInTimeRecoveryStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `schema_definition` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableSchemaDefinition {
  const KeyspacesTableSchemaDefinition({
    this.clusteringKey,
    required this.column,
    required this.partitionKey,
    this.staticColumn,
  });

  final List<KeyspacesTableSchemaDefinitionClusteringKey>? clusteringKey;

  final List<KeyspacesTableSchemaDefinitionColumn> column;

  final List<KeyspacesTableSchemaDefinitionPartitionKey> partitionKey;

  final List<KeyspacesTableSchemaDefinitionStaticColumn>? staticColumn;

  Map<String, Object?> encode() => {
    if (clusteringKey != null)
      'clustering_key': [for (final e in clusteringKey!) e.encode()],
    'column': [for (final e in column) e.encode()],
    'partition_key': [for (final e in partitionKey) e.encode()],
    if (staticColumn != null)
      'static_column': [for (final e in staticColumn!) e.encode()],
  };
}

/// Typed helper for the `schema_definition.clustering_key` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableSchemaDefinitionClusteringKey {
  const KeyspacesTableSchemaDefinitionClusteringKey({
    required this.name,
    required this.orderBy,
  });

  final TfArg<String> name;

  final TfArg<KeyspacesTableSchemaDefinitionClusteringKeyOrderBy> orderBy;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'order_by': orderBy.toTfJson(),
  };
}

/// `order_by` — derived from the provider schema description.
enum KeyspacesTableSchemaDefinitionClusteringKeyOrderBy
    implements TerraformEnum {
  asc('ASC'),
  desc('DESC');

  const KeyspacesTableSchemaDefinitionClusteringKeyOrderBy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `schema_definition.column` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableSchemaDefinitionColumn {
  const KeyspacesTableSchemaDefinitionColumn({
    required this.name,
    required this.type,
  });

  final TfArg<String> name;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `schema_definition.partition_key` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableSchemaDefinitionPartitionKey {
  const KeyspacesTableSchemaDefinitionPartitionKey({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `schema_definition.static_column` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableSchemaDefinitionStaticColumn {
  const KeyspacesTableSchemaDefinitionStaticColumn({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `ttl` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableTtl {
  const KeyspacesTableTtl({required this.status});

  final TfArg<KeyspacesTableTtlStatus> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// `status` — derived from the provider schema description.
enum KeyspacesTableTtlStatus implements TerraformEnum {
  enabled('ENABLED');

  const KeyspacesTableTtlStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_keyspaces_table`.
final class AwsKeyspacesTable extends Resource {
  static const String tfType = 'aws_keyspaces_table';

  AwsKeyspacesTable({
    required super.localName,
    TfArg<num>? defaultTimeToLive,
    required TfArg<String> keyspaceName,
    TfArg<String>? region,
    required TfArg<String> tableName,
    TfArg<Map<String, String>>? tags,
    KeyspacesTableCapacitySpecification? capacitySpecification,
    KeyspacesTableClientSideTimestamps? clientSideTimestamps,
    KeyspacesTableComment? comment,
    KeyspacesTableEncryptionSpecification? encryptionSpecification,
    KeyspacesTablePointInTimeRecovery? pointInTimeRecovery,
    required KeyspacesTableSchemaDefinition schemaDefinition,
    KeyspacesTableTtl? ttl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (defaultTimeToLive != null)
             'default_time_to_live': defaultTimeToLive,
           'keyspace_name': keyspaceName,
           if (region != null) 'region': region,
           'table_name': tableName,
           if (tags != null) 'tags': tags,
           if (capacitySpecification != null)
             'capacity_specification': TfArg.literal(
               capacitySpecification.encode(),
             ),
           if (clientSideTimestamps != null)
             'client_side_timestamps': TfArg.literal(
               clientSideTimestamps.encode(),
             ),
           if (comment != null) 'comment': TfArg.literal(comment.encode()),
           if (encryptionSpecification != null)
             'encryption_specification': TfArg.literal(
               encryptionSpecification.encode(),
             ),
           if (pointInTimeRecovery != null)
             'point_in_time_recovery': TfArg.literal(
               pointInTimeRecovery.encode(),
             ),
           'schema_definition': TfArg.literal(schemaDefinition.encode()),
           if (ttl != null) 'ttl': TfArg.literal(ttl.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKeyspacesTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKeyspacesTable>`.
  RefTo<AwsKeyspacesTable> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
