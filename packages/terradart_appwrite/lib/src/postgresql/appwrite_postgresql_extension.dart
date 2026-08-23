// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_postgresql_extension`.
const Set<String> _appwritePostgresqlExtensionSensitive = <String>{};

/// Factory wrapper for `appwrite_postgresql_extension`.
///
/// Installs an extension into a dedicated Appwrite PostgreSQL database. Read
/// the installable names from the `available` list of the corresponding
/// extensions data source.
final class AppwritePostgresqlExtension extends Resource {
  static const String tfType = 'appwrite_postgresql_extension';

  AppwritePostgresqlExtension({
    required super.localName,
    required TfArg<String> databaseId,
    required TfArg<String> name,
    TfArg<String>? projectId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId,
           'name': name,
           if (projectId != null) 'project_id': projectId,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwritePostgresqlExtensionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
