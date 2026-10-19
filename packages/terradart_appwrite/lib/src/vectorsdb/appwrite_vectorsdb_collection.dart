// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../auth/appwrite_permission.dart' show AppwritePermission;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_vectorsdb_collection`.
const Set<String> _appwriteVectorsdbCollectionSensitive = <String>{};

/// Factory wrapper for `appwrite_vectorsdb_collection`.
///
/// Manages a collection in an Appwrite VectorsDB database. A VectorsDB
/// collection stores embeddings of a fixed `dimension` and is searched by
/// vector similarity.
final class AppwriteVectorsdbCollection extends Resource {
  static const String tfType = 'appwrite_vectorsdb_collection';

  AppwriteVectorsdbCollection(
    super.localName, {
    required TfArg<String> databaseId,
    required TfArg<num> dimension,
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
           'database_id': databaseId,
           'dimension': dimension,
           'document_security': ?documentSecurity,
           'enabled': ?enabled,
           'name': name,
           'permissions': ?permissions,
           'project_id': ?projectId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteVectorsdbCollectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteVectorsdbCollection>`.
  RefTo<AppwriteVectorsdbCollection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attributes` attribute.
  TfRef<String> get attributes => TfRef.attribute<String>(this, 'attributes');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `dimension` attribute.
  TfRef<num> get dimension => TfRef.attribute<num>(this, 'dimension');

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
