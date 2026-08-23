// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_postgresql_extensions`.
const Set<String> _appwritePostgresqlExtensionsSensitive = <String>{};

/// Factory wrapper for `appwrite_postgresql_extensions`.
///
/// Lists the extensions installed on, and available to, a dedicated Appwrite
/// PostgreSQL database.
final class DataAppwritePostgresqlExtensions extends Data {
  static const String tfType = 'appwrite_postgresql_extensions';

  DataAppwritePostgresqlExtensions({
    required super.localName,
    required TfArg<String> databaseId,
    TfArg<String>? projectId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId,
           if (projectId != null) 'project_id': projectId,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwritePostgresqlExtensionsSensitive;

  /// Reference to `available` attribute.
  TfRef<List<String>> get available =>
      TfRef.attribute<List<String>>(this, 'available');

  /// Reference to `installed` attribute.
  TfRef<List<String>> get installed =>
      TfRef.attribute<List<String>>(this, 'installed');
}
