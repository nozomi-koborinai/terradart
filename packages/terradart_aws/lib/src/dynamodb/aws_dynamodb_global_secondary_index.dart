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

  final DynamodbGlobalSecondaryIndexAttributeType attributeType;

  final DynamodbGlobalSecondaryIndexKeyType keyType;

  Map<String, Object?> encode() => {
    'attribute_name': attributeName.toTfJson(),
    'attribute_type': attributeType.toTfJson(),
    'key_type': keyType.toTfJson(),
  };
}

/// `attribute_type` — derived from the provider schema description.
extension type const DynamodbGlobalSecondaryIndexAttributeType._(
  TfArg<String> _
) implements TfArg<String> {
  DynamodbGlobalSecondaryIndexAttributeType.variable(String name)
    : this._(TfArg.variable(name));
  DynamodbGlobalSecondaryIndexAttributeType.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbGlobalSecondaryIndexAttributeType.arg(TfArg<String> arg)
    : this._(arg);

  static const s = DynamodbGlobalSecondaryIndexAttributeType._(
    TfArgLiteral('S'),
  );
  static const n = DynamodbGlobalSecondaryIndexAttributeType._(
    TfArgLiteral('N'),
  );
  static const b = DynamodbGlobalSecondaryIndexAttributeType._(
    TfArgLiteral('B'),
  );

  static const List<DynamodbGlobalSecondaryIndexAttributeType> values = [
    s,
    n,
    b,
  ];
}

/// `key_type` — derived from the provider schema description.
extension type const DynamodbGlobalSecondaryIndexKeyType._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbGlobalSecondaryIndexKeyType.variable(String name)
    : this._(TfArg.variable(name));
  DynamodbGlobalSecondaryIndexKeyType.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbGlobalSecondaryIndexKeyType.arg(TfArg<String> arg)
    : this._(arg);

  static const hash = DynamodbGlobalSecondaryIndexKeyType._(
    TfArgLiteral('HASH'),
  );
  static const range = DynamodbGlobalSecondaryIndexKeyType._(
    TfArgLiteral('RANGE'),
  );

  static const List<DynamodbGlobalSecondaryIndexKeyType> values = [hash, range];
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
    'max_read_request_units': ?maxReadRequestUnits?.toTfJson(),
    'max_write_request_units': ?maxWriteRequestUnits?.toTfJson(),
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

  final TfArg<List<String>>? nonKeyAttributes;

  final DynamodbGlobalSecondaryIndexProjectionType projectionType;

  Map<String, Object?> encode() => {
    'non_key_attributes': ?nonKeyAttributes?.toTfJson(),
    'projection_type': projectionType.toTfJson(),
  };
}

/// `projection_type` — derived from the provider schema description.
extension type const DynamodbGlobalSecondaryIndexProjectionType._(
  TfArg<String> _
) implements TfArg<String> {
  DynamodbGlobalSecondaryIndexProjectionType.variable(String name)
    : this._(TfArg.variable(name));
  DynamodbGlobalSecondaryIndexProjectionType.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbGlobalSecondaryIndexProjectionType.arg(TfArg<String> arg)
    : this._(arg);

  static const all = DynamodbGlobalSecondaryIndexProjectionType._(
    TfArgLiteral('ALL'),
  );
  static const keysOnly = DynamodbGlobalSecondaryIndexProjectionType._(
    TfArgLiteral('KEYS_ONLY'),
  );
  static const include = DynamodbGlobalSecondaryIndexProjectionType._(
    TfArgLiteral('INCLUDE'),
  );

  static const List<DynamodbGlobalSecondaryIndexProjectionType> values = [
    all,
    keysOnly,
    include,
  ];
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
    'read_capacity_units': ?readCapacityUnits?.toTfJson(),
    'write_capacity_units': ?writeCapacityUnits?.toTfJson(),
  };
}

/// Factory wrapper for `aws_dynamodb_global_secondary_index`.
final class AwsDynamodbGlobalSecondaryIndex extends Resource {
  static const String tfType = 'aws_dynamodb_global_secondary_index';

  AwsDynamodbGlobalSecondaryIndex(
    super.localName, {
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
           'region': ?region,
           'table_name': tableName,
           'warm_throughput': ?warmThroughput,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDynamodbGlobalSecondaryIndex>`.
  RefTo<AwsDynamodbGlobalSecondaryIndex> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `index_name` attribute.
  TfRef<String> get indexName => TfRef.attribute<String>(this, 'index_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');

  /// Reference to `warm_throughput` attribute.
  TfRef<Map<String, Object?>> get warmThroughput =>
      TfRef.attribute<Map<String, Object?>>(this, 'warm_throughput');
}
