// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3tables_table`.
const Set<String> _awsS3tablesTableSensitive = <String>{};

/// Typed helper for the `metadata` block of
/// `aws_s3tables_table` (derived from provider schema).
@immutable
final class S3tablesTableMetadata {
  const S3tablesTableMetadata({this.iceberg});

  final List<S3tablesTableMetadataIceberg>? iceberg;

  Map<String, Object?> encode() => {
    if (iceberg != null) 'iceberg': [for (final e in iceberg!) e.encode()],
  };
}

/// Typed helper for the `metadata.iceberg` block of
/// `aws_s3tables_table` (derived from provider schema).
@immutable
final class S3tablesTableMetadataIceberg {
  const S3tablesTableMetadataIceberg({this.properties, this.schema});

  final TfArg<Map<String, String>>? properties;

  final List<S3tablesTableMetadataIcebergSchema>? schema;

  Map<String, Object?> encode() => {
    if (properties != null) 'properties': properties!.toTfJson(),
    if (schema != null) 'schema': [for (final e in schema!) e.encode()],
  };
}

/// Typed helper for the `metadata.iceberg.schema` block of
/// `aws_s3tables_table` (derived from provider schema).
@immutable
final class S3tablesTableMetadataIcebergSchema {
  const S3tablesTableMetadataIcebergSchema({this.field});

  final List<S3tablesTableMetadataIcebergSchemaField>? field;

  Map<String, Object?> encode() => {
    if (field != null) 'field': [for (final e in field!) e.encode()],
  };
}

/// Typed helper for the `metadata.iceberg.schema.field` block of
/// `aws_s3tables_table` (derived from provider schema).
@immutable
final class S3tablesTableMetadataIcebergSchemaField {
  const S3tablesTableMetadataIcebergSchemaField({
    required this.name,
    this.required,
    required this.type,
  });

  final TfArg<String> name;

  final TfArg<bool>? required;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3tables_table`.
final class AwsS3tablesTable extends Resource {
  static const String tfType = 'aws_s3tables_table';

  AwsS3tablesTable({
    required super.localName,
    TfArg<Map<String, Object?>>? encryptionConfiguration,
    required TfArg<String> format,
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
           if (encryptionConfiguration != null)
             'encryption_configuration': encryptionConfiguration,
           'format': format,
           if (maintenanceConfiguration != null)
             'maintenance_configuration': maintenanceConfiguration,
           'name': name,
           'namespace': namespace,
           if (region != null) 'region': region,
           'table_bucket_arn': tableBucketArn,
           if (tags != null) 'tags': tags,
           if (metadata != null)
             'metadata': TfArg.literal([for (final e in metadata) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3tablesTableSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
