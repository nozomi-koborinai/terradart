// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_resource_lf_tags`.
const Set<String> _awsLakeformationResourceLfTagsSensitive = <String>{};

/// Typed helper for the `database` block of
/// `aws_lakeformation_resource_lf_tags` (derived from provider schema).
@immutable
final class LakeformationResourceLfTagsDatabase {
  const LakeformationResourceLfTagsDatabase({
    this.catalogId,
    required this.name,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `lf_tag` block of
/// `aws_lakeformation_resource_lf_tags` (derived from provider schema).
@immutable
final class LakeformationResourceLfTagsLfTag {
  const LakeformationResourceLfTagsLfTag({
    this.catalogId,
    required this.key,
    required this.value,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `table` block of
/// `aws_lakeformation_resource_lf_tags` (derived from provider schema).
@immutable
final class LakeformationResourceLfTagsTable {
  const LakeformationResourceLfTagsTable({
    this.catalogId,
    required this.databaseName,
    this.name,
    this.wildcard,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> databaseName;

  final TfArg<String>? name;

  final TfArg<bool>? wildcard;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    'database_name': databaseName.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (wildcard != null) 'wildcard': wildcard!.toTfJson(),
  };
}

/// Typed helper for the `table_with_columns` block of
/// `aws_lakeformation_resource_lf_tags` (derived from provider schema).
@immutable
final class LakeformationResourceLfTagsTableWithColumns {
  const LakeformationResourceLfTagsTableWithColumns({
    this.catalogId,
    this.columnNames,
    required this.databaseName,
    this.excludedColumnNames,
    required this.name,
    this.wildcard,
  });

  final TfArg<String>? catalogId;

  final TfArg<List<Object?>>? columnNames;

  final TfArg<String> databaseName;

  final TfArg<List<Object?>>? excludedColumnNames;

  final TfArg<String> name;

  final TfArg<bool>? wildcard;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    if (columnNames != null) 'column_names': columnNames!.toTfJson(),
    'database_name': databaseName.toTfJson(),
    if (excludedColumnNames != null)
      'excluded_column_names': excludedColumnNames!.toTfJson(),
    'name': name.toTfJson(),
    if (wildcard != null) 'wildcard': wildcard!.toTfJson(),
  };
}

/// Factory wrapper for `aws_lakeformation_resource_lf_tags`.
final class AwsLakeformationResourceLfTags extends Resource {
  static const String tfType = 'aws_lakeformation_resource_lf_tags';

  AwsLakeformationResourceLfTags({
    required super.localName,
    TfArg<String>? catalogId,
    TfArg<String>? region,
    LakeformationResourceLfTagsDatabase? database,
    required List<LakeformationResourceLfTagsLfTag> lfTag,
    LakeformationResourceLfTagsTable? table,
    LakeformationResourceLfTagsTableWithColumns? tableWithColumns,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           if (region != null) 'region': region,
           if (database != null) 'database': TfArg.literal(database.encode()),
           'lf_tag': TfArg.literal([for (final e in lfTag) e.encode()]),
           if (table != null) 'table': TfArg.literal(table.encode()),
           if (tableWithColumns != null)
             'table_with_columns': TfArg.literal(tableWithColumns.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationResourceLfTagsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
