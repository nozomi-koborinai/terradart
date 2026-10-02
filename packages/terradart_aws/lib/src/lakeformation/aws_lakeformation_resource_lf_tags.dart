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
sealed class LakeformationResourceLfTagsResource {
  const LakeformationResourceLfTagsResource();

  /// Sets `database`.
  const factory LakeformationResourceLfTagsResource.database(
    LakeformationResourceLfTagsDatabase database,
  ) = LakeformationResourceLfTagsResourceDatabase;

  /// Sets `table`.
  const factory LakeformationResourceLfTagsResource.table(
    LakeformationResourceLfTagsTable table,
  ) = LakeformationResourceLfTagsResourceTable;

  /// Sets `table_with_columns`.
  const factory LakeformationResourceLfTagsResource.tableWithColumns(
    LakeformationResourceLfTagsTableWithColumns tableWithColumns,
  ) = LakeformationResourceLfTagsResourceTableWithColumns;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LakeformationResourceLfTagsResource.database] choice: sets `database`.
final class LakeformationResourceLfTagsResourceDatabase
    extends LakeformationResourceLfTagsResource {
  const LakeformationResourceLfTagsResourceDatabase(this.database);

  final LakeformationResourceLfTagsDatabase database;

  @internal
  @override
  String get blockKey => 'database';

  @internal
  @override
  Map<String, Object?> encode() => {'database': database.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'database': TfArg.literal(database.encode()),
  };
}

/// The [LakeformationResourceLfTagsResource.table] choice: sets `table`.
final class LakeformationResourceLfTagsResourceTable
    extends LakeformationResourceLfTagsResource {
  const LakeformationResourceLfTagsResourceTable(this.table);

  final LakeformationResourceLfTagsTable table;

  @internal
  @override
  String get blockKey => 'table';

  @internal
  @override
  Map<String, Object?> encode() => {'table': table.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'table': TfArg.literal(table.encode()),
  };
}

/// The [LakeformationResourceLfTagsResource.tableWithColumns] choice: sets `table_with_columns`.
final class LakeformationResourceLfTagsResourceTableWithColumns
    extends LakeformationResourceLfTagsResource {
  const LakeformationResourceLfTagsResourceTableWithColumns(
    this.tableWithColumns,
  );

  final LakeformationResourceLfTagsTableWithColumns tableWithColumns;

  @internal
  @override
  String get blockKey => 'table_with_columns';

  @internal
  @override
  Map<String, Object?> encode() => {
    'table_with_columns': tableWithColumns.encode(),
  };

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'name': ?name?.toTfJson(),
    'wildcard': ?wildcard?.toTfJson(),
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

  final TfArg<List<String>>? columnNames;

  final TfArg<String> databaseName;

  final TfArg<List<String>>? excludedColumnNames;

  final TfArg<String> name;

  final TfArg<bool>? wildcard;

  @internal
  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'column_names': ?columnNames?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'excluded_column_names': ?excludedColumnNames?.toTfJson(),
    'name': name.toTfJson(),
    'wildcard': ?wildcard?.toTfJson(),
  };
}

/// Factory wrapper for `aws_lakeformation_resource_lf_tags`.
final class AwsLakeformationResourceLfTags extends Resource {
  static const String tfType = 'aws_lakeformation_resource_lf_tags';

  AwsLakeformationResourceLfTags(
    super.localName, {
    TfArg<String>? catalogId,
    TfArg<String>? region,
    required LakeformationResourceLfTagsResource resource,
    required List<LakeformationResourceLfTagsLfTag> lfTag,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog_id': ?catalogId,
           'region': ?region,
           ...resource.argMap,
           'lf_tag': TfArg.literal([for (final e in lfTag) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationResourceLfTagsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLakeformationResourceLfTags>`.
  RefTo<AwsLakeformationResourceLfTags> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
