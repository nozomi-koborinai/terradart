// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_d1_database`.
const Set<String> _cloudflareD1DatabaseSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_d1_database` (derived from provider schema).
@immutable
final class DataD1DatabaseFilter {
  const DataD1DatabaseFilter({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
}

/// Factory wrapper for `cloudflare_d1_database`.
///
/// Accepted Permissions
///
/// - `D1 Read` - `D1 Write`
final class DataCloudflareD1Database extends Data {
  static const String tfType = 'cloudflare_d1_database';

  DataCloudflareD1Database({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? databaseId,
    TfArg<List<String>>? fields,
    DataD1DatabaseFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (databaseId != null) 'database_id': databaseId,
           if (fields != null) 'fields': fields,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareD1DatabaseSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `file_size` attribute.
  TfRef<num> get fileSize => TfRef.attribute<num>(this, 'file_size');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');

  /// Reference to `num_tables` attribute.
  TfRef<num> get numTables => TfRef.attribute<num>(this, 'num_tables');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuid => TfRef.attribute<String>(this, 'uuid');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
