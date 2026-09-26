// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cleanrooms_configured_table`.
const Set<String> _awsCleanroomsConfiguredTableSensitive = <String>{};

/// Typed helper for the `table_reference` block of
/// `aws_cleanrooms_configured_table` (derived from provider schema).
@immutable
final class CleanroomsConfiguredTableTableReference {
  const CleanroomsConfiguredTableTableReference({
    required this.databaseName,
    required this.tableName,
  });

  final TfArg<String> databaseName;

  final TfArg<String> tableName;

  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    'table_name': tableName.toTfJson(),
  };
}

/// Factory wrapper for `aws_cleanrooms_configured_table`.
final class AwsCleanroomsConfiguredTable extends Resource {
  static const String tfType = 'aws_cleanrooms_configured_table';

  AwsCleanroomsConfiguredTable({
    required super.localName,
    required TfArg<List<String>> allowedColumns,
    required TfArg<String> analysisMethod,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required CleanroomsConfiguredTableTableReference tableReference,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allowed_columns': allowedColumns,
           'analysis_method': analysisMethod,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'table_reference': TfArg.literal(tableReference.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCleanroomsConfiguredTableSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
