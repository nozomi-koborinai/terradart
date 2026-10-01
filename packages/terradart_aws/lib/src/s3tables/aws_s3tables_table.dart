// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3tables_table`.
const Set<String> _awsS3tablesTableSensitive = <String>{};

/// S3tables Table enum for `format`.
extension type const S3tablesTableFormat._(TfArg<String> _)
    implements TfArg<String> {
  S3tablesTableFormat.variable(String name) : this._(TfArg.variable(name));
  S3tablesTableFormat.expression(String template)
    : this._(TfArg.expression(template));
  const S3tablesTableFormat.arg(TfArg<String> arg) : this._(arg);

  static const iceberg = S3tablesTableFormat._(TfArgLiteral('ICEBERG'));

  static const List<S3tablesTableFormat> values = [iceberg];
}

/// Typed helper for the `metadata` block of
/// `aws_s3tables_table` (derived from provider schema).
@immutable
final class S3tablesTableMetadata {
  const S3tablesTableMetadata({this.iceberg});

  final List<S3tablesTableIceberg>? iceberg;

  Map<String, Object?> encode() => {
    if (iceberg != null) 'iceberg': [for (final e in iceberg!) e.encode()],
  };
}

/// Typed helper for the `metadata.iceberg` block of
/// `aws_s3tables_table` (derived from provider schema).
@immutable
final class S3tablesTableIceberg {
  const S3tablesTableIceberg({this.properties, this.schema});

  final TfArg<Map<String, String>>? properties;

  final List<S3tablesTableSchema>? schema;

  Map<String, Object?> encode() => {
    'properties': ?properties?.toTfJson(),
    if (schema != null) 'schema': [for (final e in schema!) e.encode()],
  };
}

/// Typed helper for the `metadata.iceberg.schema` block of
/// `aws_s3tables_table` (derived from provider schema).
@immutable
final class S3tablesTableSchema {
  const S3tablesTableSchema({this.field});

  final List<S3tablesTableField>? field;

  Map<String, Object?> encode() => {
    if (field != null) 'field': [for (final e in field!) e.encode()],
  };
}

/// Typed helper for the `metadata.iceberg.schema.field` block of
/// `aws_s3tables_table` (derived from provider schema).
@immutable
final class S3tablesTableField {
  const S3tablesTableField({
    required this.name,
    this.required,
    required this.type,
  });

  final TfArg<String> name;

  final TfArg<bool>? required;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'required': ?required?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3tables_table`.
final class AwsS3tablesTable extends Resource {
  static const String tfType = 'aws_s3tables_table';

  AwsS3tablesTable(
    super.localName, {
    TfArg<Map<String, Object?>>? encryptionConfiguration,
    required S3tablesTableFormat format,
    TfArg<Map<String, Object?>>? maintenanceConfiguration,
    required TfArg<String> name,
    required TfArg<String> namespace,
    TfArg<String>? region,
    required TfArg<String> tableBucketArn,
    TfArg<Map<String, String>>? tags,
    List<S3tablesTableMetadata>? metadata,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'encryption_configuration': ?encryptionConfiguration,
           'format': format,
           'maintenance_configuration': ?maintenanceConfiguration,
           'name': name,
           'namespace': namespace,
           'region': ?region,
           'table_bucket_arn': tableBucketArn,
           'tags': ?tags,
           if (metadata != null)
             'metadata': TfArg.literal([for (final e in metadata) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3tablesTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3tablesTable>`.
  RefTo<AwsS3tablesTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `metadata_location` attribute.
  TfRef<String> get metadataLocation =>
      TfRef.attribute<String>(this, 'metadata_location');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `modified_by` attribute.
  TfRef<String> get modifiedBy => TfRef.attribute<String>(this, 'modified_by');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `version_token` attribute.
  TfRef<String> get versionToken =>
      TfRef.attribute<String>(this, 'version_token');

  /// Reference to `warehouse_location` attribute.
  TfRef<String> get warehouseLocation =>
      TfRef.attribute<String>(this, 'warehouse_location');

  /// Reference to `encryption_configuration` attribute.
  TfRef<Map<String, Object?>> get encryptionConfiguration =>
      TfRef.attribute<Map<String, Object?>>(this, 'encryption_configuration');

  /// Reference to `format` attribute.
  TfRef<String> get format => TfRef.attribute<String>(this, 'format');

  /// Reference to `maintenance_configuration` attribute.
  TfRef<Map<String, Object?>> get maintenanceConfiguration =>
      TfRef.attribute<Map<String, Object?>>(this, 'maintenance_configuration');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_bucket_arn` attribute.
  TfRef<String> get tableBucketArn =>
      TfRef.attribute<String>(this, 'table_bucket_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
