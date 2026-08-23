// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_tablesdb`.
const Set<String> _appwriteTablesdbSensitive = <String>{};

/// Factory wrapper for `appwrite_tablesdb`.
///
/// Manages an Appwrite database.
final class AppwriteTablesdb extends Resource {
  static const String tfType = 'appwrite_tablesdb';

  AppwriteTablesdb({
    required super.localName,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<String>? projectId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enabled != null) 'enabled': enabled,
           'name': name,
           if (projectId != null) 'project_id': projectId,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteTablesdbSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
