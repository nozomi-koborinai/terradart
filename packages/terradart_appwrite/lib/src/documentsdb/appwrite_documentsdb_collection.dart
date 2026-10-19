// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../auth/appwrite_permission.dart' show AppwritePermission;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_documentsdb_collection`.
const Set<String> _appwriteDocumentsdbCollectionSensitive = <String>{};

/// Factory wrapper for `appwrite_documentsdb_collection`.
///
/// Manages a collection in an Appwrite DocumentsDB database. A DocumentsDB
/// collection stores schemaless JSON documents.
final class AppwriteDocumentsdbCollection extends Resource {
  static const String tfType = 'appwrite_documentsdb_collection';

  AppwriteDocumentsdbCollection(
    super.localName, {
    TfArg<String>? attributes,
    required TfArg<String> databaseId,
    TfArg<bool>? documentSecurity,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<List<AppwritePermission>>? permissions,
    RefTo<AppwriteProject>? projectId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attributes': ?attributes,
           'database_id': databaseId,
           'document_security': ?documentSecurity,
           'enabled': ?enabled,
           'name': name,
           'permissions': ?permissions,
           'project_id': ?projectId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteDocumentsdbCollectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteDocumentsdbCollection>`.
  RefTo<AppwriteDocumentsdbCollection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `dimension` attribute.
  TfRef<num> get dimension => TfRef.attribute<num>(this, 'dimension');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `attributes` attribute.
  TfRef<String> get attributes => TfRef.attribute<String>(this, 'attributes');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `document_security` attribute.
  TfRef<bool> get documentSecurity =>
      TfRef.attribute<bool>(this, 'document_security');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
