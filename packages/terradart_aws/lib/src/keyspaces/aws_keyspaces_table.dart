// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

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

  final KeyspacesTableThroughputMode? throughputMode;

  final TfArg<num>? writeCapacityUnits;

  Map<String, Object?> encode() => {
    'read_capacity_units': ?readCapacityUnits?.toTfJson(),
    'throughput_mode': ?throughputMode?.toTfJson(),
    'write_capacity_units': ?writeCapacityUnits?.toTfJson(),
  };
}

/// `throughput_mode` — derived from the provider schema description.
extension type const KeyspacesTableThroughputMode._(TfArg<String> _)
    implements TfArg<String> {
  KeyspacesTableThroughputMode.variable(String name)
    : this._(TfArg.variable(name));
  KeyspacesTableThroughputMode.expression(String template)
    : this._(TfArg.expression(template));
  const KeyspacesTableThroughputMode.arg(TfArg<String> arg) : this._(arg);

  static const payPerRequest = KeyspacesTableThroughputMode._(
    TfArgLiteral('PAY_PER_REQUEST'),
  );
  static const provisioned = KeyspacesTableThroughputMode._(
    TfArgLiteral('PROVISIONED'),
  );

  static const List<KeyspacesTableThroughputMode> values = [
    payPerRequest,
    provisioned,
  ];
}

/// Typed helper for the `client_side_timestamps` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableClientSideTimestamps {
  const KeyspacesTableClientSideTimestamps({required this.status});

  final KeyspacesTableClientSideTimestampsStatus status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// `status` — derived from the provider schema description.
extension type const KeyspacesTableClientSideTimestampsStatus._(TfArg<String> _)
    implements TfArg<String> {
  KeyspacesTableClientSideTimestampsStatus.variable(String name)
    : this._(TfArg.variable(name));
  KeyspacesTableClientSideTimestampsStatus.expression(String template)
    : this._(TfArg.expression(template));
  const KeyspacesTableClientSideTimestampsStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = KeyspacesTableClientSideTimestampsStatus._(
    TfArgLiteral('ENABLED'),
  );

  static const List<KeyspacesTableClientSideTimestampsStatus> values = [
    enabled,
  ];
}

/// Typed helper for the `comment` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableComment {
  const KeyspacesTableComment({this.message});

  final TfArg<String>? message;

  Map<String, Object?> encode() => {'message': ?message?.toTfJson()};
}

/// Typed helper for the `encryption_specification` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableEncryptionSpecification {
  const KeyspacesTableEncryptionSpecification({
    this.kmsKeyIdentifier,
    this.type,
  });

  final RefTo<AwsKmsKey>? kmsKeyIdentifier;

  final KeyspacesTableType? type;

  Map<String, Object?> encode() => {
    'kms_key_identifier': ?kmsKeyIdentifier?.encodeAs('arn').toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const KeyspacesTableType._(TfArg<String> _)
    implements TfArg<String> {
  KeyspacesTableType.variable(String name) : this._(TfArg.variable(name));
  KeyspacesTableType.expression(String template)
    : this._(TfArg.expression(template));
  const KeyspacesTableType.arg(TfArg<String> arg) : this._(arg);

  static const customerManagedKmsKey = KeyspacesTableType._(
    TfArgLiteral('CUSTOMER_MANAGED_KMS_KEY'),
  );
  static const awsOwnedKmsKey = KeyspacesTableType._(
    TfArgLiteral('AWS_OWNED_KMS_KEY'),
  );

  static const List<KeyspacesTableType> values = [
    customerManagedKmsKey,
    awsOwnedKmsKey,
  ];
}

/// Typed helper for the `point_in_time_recovery` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTablePointInTimeRecovery {
  const KeyspacesTablePointInTimeRecovery({this.status});

  final KeyspacesTablePointInTimeRecoveryStatus? status;

  Map<String, Object?> encode() => {'status': ?status?.toTfJson()};
}

/// `status` — derived from the provider schema description.
extension type const KeyspacesTablePointInTimeRecoveryStatus._(TfArg<String> _)
    implements TfArg<String> {
  KeyspacesTablePointInTimeRecoveryStatus.variable(String name)
    : this._(TfArg.variable(name));
  KeyspacesTablePointInTimeRecoveryStatus.expression(String template)
    : this._(TfArg.expression(template));
  const KeyspacesTablePointInTimeRecoveryStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = KeyspacesTablePointInTimeRecoveryStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = KeyspacesTablePointInTimeRecoveryStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<KeyspacesTablePointInTimeRecoveryStatus> values = [
    enabled,
    disabled,
  ];
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

  final List<KeyspacesTableClusteringKey>? clusteringKey;

  final List<KeyspacesTableColumn> column;

  final List<KeyspacesTablePartitionKey> partitionKey;

  final List<KeyspacesTableStaticColumn>? staticColumn;

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
final class KeyspacesTableClusteringKey {
  const KeyspacesTableClusteringKey({
    required this.name,
    required this.orderBy,
  });

  final TfArg<String> name;

  final KeyspacesTableOrderBy orderBy;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'order_by': orderBy.toTfJson(),
  };
}

/// `order_by` — derived from the provider schema description.
extension type const KeyspacesTableOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  KeyspacesTableOrderBy.variable(String name) : this._(TfArg.variable(name));
  KeyspacesTableOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const KeyspacesTableOrderBy.arg(TfArg<String> arg) : this._(arg);

  static const asc = KeyspacesTableOrderBy._(TfArgLiteral('ASC'));
  static const desc = KeyspacesTableOrderBy._(TfArgLiteral('DESC'));

  static const List<KeyspacesTableOrderBy> values = [asc, desc];
}

/// Typed helper for the `schema_definition.column` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableColumn {
  const KeyspacesTableColumn({required this.name, required this.type});

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
final class KeyspacesTablePartitionKey {
  const KeyspacesTablePartitionKey({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `schema_definition.static_column` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableStaticColumn {
  const KeyspacesTableStaticColumn({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `ttl` block of
/// `aws_keyspaces_table` (derived from provider schema).
@immutable
final class KeyspacesTableTtl {
  const KeyspacesTableTtl({required this.status});

  final KeyspacesTableClientSideTimestampsStatus status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Factory wrapper for `aws_keyspaces_table`.
final class AwsKeyspacesTable extends Resource {
  static const String tfType = 'aws_keyspaces_table';

  AwsKeyspacesTable(
    super.localName, {
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
           'default_time_to_live': ?defaultTimeToLive,
           'keyspace_name': keyspaceName,
           'region': ?region,
           'table_name': tableName,
           'tags': ?tags,
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

  /// Reference to `default_time_to_live` attribute.
  TfRef<num> get defaultTimeToLive =>
      TfRef.attribute<num>(this, 'default_time_to_live');

  /// Reference to `keyspace_name` attribute.
  TfRef<String> get keyspaceName =>
      TfRef.attribute<String>(this, 'keyspace_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
