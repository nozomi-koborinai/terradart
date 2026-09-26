// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_global_secondary_index`.
const Set<String> _awsDynamodbGlobalSecondaryIndexSensitive = <String>{};

/// Typed helper for the `key_schema` block of
/// `aws_dynamodb_global_secondary_index` (derived from provider schema).
@immutable
final class DynamodbGlobalSecondaryIndexKeySchema {
  const DynamodbGlobalSecondaryIndexKeySchema({
    required this.attributeName,
    required this.attributeType,
    required this.keyType,
  });

  final TfArg<String> attributeName;

  final TfArg<String> attributeType;

  final TfArg<String> keyType;

  Map<String, Object?> encode() => {
    'attribute_name': attributeName.toTfJson(),
    'attribute_type': attributeType.toTfJson(),
    'key_type': keyType.toTfJson(),
  };
}

/// Typed helper for the `on_demand_throughput` block of
/// `aws_dynamodb_global_secondary_index` (derived from provider schema).
@immutable
final class DynamodbGlobalSecondaryIndexOnDemandThroughput {
  const DynamodbGlobalSecondaryIndexOnDemandThroughput({
    this.maxReadRequestUnits,
    this.maxWriteRequestUnits,
  });

  final TfArg<num>? maxReadRequestUnits;

  final TfArg<num>? maxWriteRequestUnits;

  Map<String, Object?> encode() => {
    if (maxReadRequestUnits != null)
      'max_read_request_units': maxReadRequestUnits!.toTfJson(),
    if (maxWriteRequestUnits != null)
      'max_write_request_units': maxWriteRequestUnits!.toTfJson(),
  };
}

/// Typed helper for the `projection` block of
/// `aws_dynamodb_global_secondary_index` (derived from provider schema).
@immutable
final class DynamodbGlobalSecondaryIndexProjection {
  const DynamodbGlobalSecondaryIndexProjection({
    this.nonKeyAttributes,
    required this.projectionType,
  });

  final TfArg<List<Object?>>? nonKeyAttributes;

  final TfArg<String> projectionType;

  Map<String, Object?> encode() => {
    if (nonKeyAttributes != null)
      'non_key_attributes': nonKeyAttributes!.toTfJson(),
    'projection_type': projectionType.toTfJson(),
  };
}

/// Typed helper for the `provisioned_throughput` block of
/// `aws_dynamodb_global_secondary_index` (derived from provider schema).
@immutable
final class DynamodbGlobalSecondaryIndexProvisionedThroughput {
  const DynamodbGlobalSecondaryIndexProvisionedThroughput({
    this.readCapacityUnits,
    this.writeCapacityUnits,
  });

  final TfArg<num>? readCapacityUnits;

  final TfArg<num>? writeCapacityUnits;

  Map<String, Object?> encode() => {
    if (readCapacityUnits != null)
      'read_capacity_units': readCapacityUnits!.toTfJson(),
    if (writeCapacityUnits != null)
      'write_capacity_units': writeCapacityUnits!.toTfJson(),
  };
}

/// Factory wrapper for `aws_dynamodb_global_secondary_index`.
final class AwsDynamodbGlobalSecondaryIndex extends Resource {
  static const String tfType = 'aws_dynamodb_global_secondary_index';

  AwsDynamodbGlobalSecondaryIndex({
    required super.localName,
    required TfArg<String> indexName,
    TfArg<String>? region,
    required TfArg<String> tableName,
    TfArg<Map<String, Object?>>? warmThroughput,
    List<DynamodbGlobalSecondaryIndexKeySchema>? keySchema,
    List<DynamodbGlobalSecondaryIndexOnDemandThroughput>? onDemandThroughput,
    List<DynamodbGlobalSecondaryIndexProjection>? projection,
    List<DynamodbGlobalSecondaryIndexProvisionedThroughput>?
    provisionedThroughput,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'index_name': indexName,
           if (region != null) 'region': region,
           'table_name': tableName,
           if (warmThroughput != null) 'warm_throughput': warmThroughput,
           if (keySchema != null)
             'key_schema': TfArg.literal([
               for (final e in keySchema) e.encode(),
             ]),
           if (onDemandThroughput != null)
             'on_demand_throughput': TfArg.literal([
               for (final e in onDemandThroughput) e.encode(),
             ]),
           if (projection != null)
             'projection': TfArg.literal([
               for (final e in projection) e.encode(),
             ]),
           if (provisionedThroughput != null)
             'provisioned_throughput': TfArg.literal([
               for (final e in provisionedThroughput) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbGlobalSecondaryIndexSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
