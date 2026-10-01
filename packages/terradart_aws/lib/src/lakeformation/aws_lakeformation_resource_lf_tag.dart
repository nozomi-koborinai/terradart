// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_resource_lf_tag`.
const Set<String> _awsLakeformationResourceLfTagSensitive = <String>{};

/// Exactly one of `database`, `table`, `table_with_columns` on `aws_lakeformation_resource_lf_tag`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.database(...)`.
sealed class LakeformationResourceLfTagResource {
  const LakeformationResourceLfTagResource();

  /// Sets `database`.
  const factory LakeformationResourceLfTagResource.database(
    List<LakeformationResourceLfTagDatabase> database,
  ) = LakeformationResourceLfTagResourceDatabase;

  /// Sets `table`.
  const factory LakeformationResourceLfTagResource.table(
    List<LakeformationResourceLfTagTable> table,
  ) = LakeformationResourceLfTagResourceTable;

  /// Sets `table_with_columns`.
  const factory LakeformationResourceLfTagResource.tableWithColumns(
    List<LakeformationResourceLfTagTableWithColumns> tableWithColumns,
  ) = LakeformationResourceLfTagResourceTableWithColumns;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LakeformationResourceLfTagResource.database] choice: sets `database`.
final class LakeformationResourceLfTagResourceDatabase
    extends LakeformationResourceLfTagResource {
  const LakeformationResourceLfTagResourceDatabase(this.database);

  final List<LakeformationResourceLfTagDatabase> database;

  @override
  String get blockKey => 'database';

  @override
  Map<String, Object?> encode() => {
    'database': [for (final e in database) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'database': TfArg.literal([for (final e in database) e.encode()]),
  };
}

/// The [LakeformationResourceLfTagResource.table] choice: sets `table`.
final class LakeformationResourceLfTagResourceTable
    extends LakeformationResourceLfTagResource {
  const LakeformationResourceLfTagResourceTable(this.table);

  final List<LakeformationResourceLfTagTable> table;

  @override
  String get blockKey => 'table';

  @override
  Map<String, Object?> encode() => {
    'table': [for (final e in table) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'table': TfArg.literal([for (final e in table) e.encode()]),
  };
}

/// The [LakeformationResourceLfTagResource.tableWithColumns] choice: sets `table_with_columns`.
final class LakeformationResourceLfTagResourceTableWithColumns
    extends LakeformationResourceLfTagResource {
  const LakeformationResourceLfTagResourceTableWithColumns(
    this.tableWithColumns,
  );

  final List<LakeformationResourceLfTagTableWithColumns> tableWithColumns;

  @override
  String get blockKey => 'table_with_columns';

  @override
  Map<String, Object?> encode() => {
    'table_with_columns': [for (final e in tableWithColumns) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'table_with_columns': TfArg.literal([
      for (final e in tableWithColumns) e.encode(),
    ]),
  };
}

/// Typed helper for the `database` block of
/// `aws_lakeformation_resource_lf_tag` (derived from provider schema).
@immutable
final class LakeformationResourceLfTagDatabase {
  const LakeformationResourceLfTagDatabase({
    this.catalogId,
    required this.name,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `lf_tag` block of
/// `aws_lakeformation_resource_lf_tag` (derived from provider schema).
@immutable
final class LakeformationResourceLfTag {
  const LakeformationResourceLfTag({
    this.catalogId,
    required this.key,
    required this.value,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `table` block of
/// `aws_lakeformation_resource_lf_tag` (derived from provider schema).
@immutable
final class LakeformationResourceLfTagTable {
  const LakeformationResourceLfTagTable({
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
    'catalog_id': ?catalogId?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'name': ?name?.toTfJson(),
    'wildcard': ?wildcard?.toTfJson(),
  };
}

/// Typed helper for the `table_with_columns` block of
/// `aws_lakeformation_resource_lf_tag` (derived from provider schema).
@immutable
final class LakeformationResourceLfTagTableWithColumns {
  const LakeformationResourceLfTagTableWithColumns({
    this.catalogId,
    this.columnNames,
    required this.databaseName,
    required this.name,
    this.columnWildcard,
  });

  final TfArg<String>? catalogId;

  final TfArg<List<String>>? columnNames;

  final TfArg<String> databaseName;

  final TfArg<String> name;

  final List<LakeformationResourceLfTagColumnWildcard>? columnWildcard;

  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'column_names': ?columnNames?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'name': name.toTfJson(),
    if (columnWildcard != null)
      'column_wildcard': [for (final e in columnWildcard!) e.encode()],
  };
}

/// Typed helper for the `table_with_columns.column_wildcard` block of
/// `aws_lakeformation_resource_lf_tag` (derived from provider schema).
@immutable
final class LakeformationResourceLfTagColumnWildcard {
  const LakeformationResourceLfTagColumnWildcard({this.excludedColumnNames});

  final TfArg<List<String>>? excludedColumnNames;

  Map<String, Object?> encode() => {
    'excluded_column_names': ?excludedColumnNames?.toTfJson(),
  };
}

/// Factory wrapper for `aws_lakeformation_resource_lf_tag`.
final class AwsLakeformationResourceLfTag extends Resource {
  static const String tfType = 'aws_lakeformation_resource_lf_tag';

  AwsLakeformationResourceLfTag({
    required super.localName,
    TfArg<String>? catalogId,
    TfArg<String>? region,
    required LakeformationResourceLfTagResource resource,
    List<LakeformationResourceLfTag>? lfTag,
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
           if (lfTag != null)
             'lf_tag': TfArg.literal([for (final e in lfTag) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationResourceLfTagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLakeformationResourceLfTag>`.
  RefTo<AwsLakeformationResourceLfTag> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogIdRef => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
