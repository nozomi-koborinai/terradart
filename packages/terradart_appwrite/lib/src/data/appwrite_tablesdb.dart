// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../tablesdb/appwrite_tablesdb.dart';

/// Sensitive field paths for `appwrite_tablesdb`.
const Set<String> _appwriteTablesdbSensitive = <String>{};

/// Factory wrapper for `appwrite_tablesdb`.
///
/// Fetches an Appwrite database by ID.
final class DataAppwriteTablesdb extends Data {
  static const String tfType = 'appwrite_tablesdb';

  DataAppwriteTablesdb({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? projectId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (projectId != null) 'project_id': projectId},
       );

  @override
  Set<String> get sensitiveFields => _appwriteTablesdbSensitive;

  /// A reference to the `appwrite_tablesdb` this data source reads, for
  /// arguments typed `RefTo<AppwriteTablesdb>`.
  // ignore: invalid_use_of_internal_member
  RefTo<AppwriteTablesdb> get ref => RefTo.read(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
