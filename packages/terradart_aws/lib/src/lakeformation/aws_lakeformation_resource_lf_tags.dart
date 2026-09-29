// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_resource_lf_tags`.
const Set<String> _awsLakeformationResourceLfTagsSensitive = <String>{};

/// Exactly one of `database`, `table`, `table_with_columns` on `aws_lakeformation_resource_lf_tags`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.database(...)`.
sealed class LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumns {
  const LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumns();

  /// Sets `database`.
  const factory LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumns.database(
    LakeformationResourceLfTagsDatabase database,
  ) = LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumnsDatabase;

  /// Sets `table`.
  const factory LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumns.table(
    LakeformationResourceLfTagsTable table,
  ) = LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumnsTable;

  /// Sets `table_with_columns`.
  const factory LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumns.tableWithColumns(
    LakeformationResourceLfTagsTableWithColumns tableWithColumns,
  ) = LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumnsTableWithColumns;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumns.database] choice: sets `database`.
final class LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumnsDatabase
    extends LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumns {
  const LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumnsDatabase(
    this.database,
  );

  final LakeformationResourceLfTagsDatabase database;

  @override
  String get blockKey => 'database';

  @override
  Map<String, Object?> encode() => {'database': database.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'database': TfArg.literal(database.encode()),
  };
}

/// The [LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumns.table] choice: sets `table`.
final class LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumnsTable
    extends LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumns {
  const LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumnsTable(
    this.table,
  );

  final LakeformationResourceLfTagsTable table;

  @override
  String get blockKey => 'table';

  @override
  Map<String, Object?> encode() => {'table': table.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'table': TfArg.literal(table.encode()),
  };
}

/// The [LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumns.tableWithColumns] choice: sets `table_with_columns`.
final class LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumnsTableWithColumns
    extends LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumns {
  const LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumnsTableWithColumns(
    this.tableWithColumns,
  );

  final LakeformationResourceLfTagsTableWithColumns tableWithColumns;

  @override
  String get blockKey => 'table_with_columns';

  @override
  Map<String, Object?> encode() => {
    'table_with_columns': tableWithColumns.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'table_with_columns': TfArg.literal(tableWithColumns.encode()),
  };
}

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
    required LakeformationResourceLfTagsDatabaseOrTableOrTableWithColumns
    databaseOrTableOrTableWithColumns,
    required List<LakeformationResourceLfTagsLfTag> lfTag,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           if (region != null) 'region': region,
           ...databaseOrTableOrTableWithColumns.argMap,
           'lf_tag': TfArg.literal([for (final e in lfTag) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationResourceLfTagsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
