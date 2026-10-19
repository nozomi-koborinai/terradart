// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../auth/appwrite_permission.dart' show AppwritePermission;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_documentsdb_document`.
const Set<String> _appwriteDocumentsdbDocumentSensitive = <String>{};

/// Factory wrapper for `appwrite_documentsdb_document`.
///
/// Manages a document in an Appwrite DocumentsDB collection.
///
/// This manages data rather than infrastructure, so it suits seed and reference
/// records. Documents written by an application at runtime should not be
/// managed here.
final class AppwriteDocumentsdbDocument extends Resource {
  static const String tfType = 'appwrite_documentsdb_document';

  AppwriteDocumentsdbDocument(
    super.localName, {
    required TfArg<String> collectionId,
    required TfArg<String> data,
    required TfArg<String> databaseId,
    TfArg<List<AppwritePermission>>? permissions,
    RefTo<AppwriteProject>? projectId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'collection_id': collectionId,
           'data': data,
           'database_id': databaseId,
           'permissions': ?permissions,
           'project_id': ?projectId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteDocumentsdbDocumentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteDocumentsdbDocument>`.
  RefTo<AppwriteDocumentsdbDocument> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionId =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `data` attribute.
  TfRef<String> get data => TfRef.attribute<String>(this, 'data');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
