// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_documentsdb_index`.
const Set<String> _appwriteDocumentsdbIndexSensitive = <String>{};

/// Factory wrapper for `appwrite_documentsdb_index`.
///
/// Manages an index on a collection in an Appwrite DocumentsDB database.
/// Indexes have no update route, so changing any argument replaces the index.
/// Creation is asynchronous; Terraform waits for the index to become available
/// so a dependent resource is not handed one that is still building.
final class AppwriteDocumentsdbIndex extends Resource {
  static const String tfType = 'appwrite_documentsdb_index';

  AppwriteDocumentsdbIndex(
    super.localName, {
    required TfArg<List<String>> attributes,
    required TfArg<String> collectionId,
    required TfArg<String> databaseId,
    required TfArg<String> key,
    TfArg<List<num>>? lengths,
    TfArg<List<String>>? orders,
    RefTo<AppwriteProject>? projectId,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attributes': attributes,
           'collection_id': collectionId,
           'database_id': databaseId,
           'key': key,
           'lengths': ?lengths,
           'orders': ?orders,
           'project_id': ?projectId?.encodeAs('id'),
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteDocumentsdbIndexSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteDocumentsdbIndex>`.
  RefTo<AppwriteDocumentsdbIndex> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `error` attribute.
  TfRef<String> get error => TfRef.attribute<String>(this, 'error');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `attributes` attribute.
  TfRef<List<String>> get attributes =>
      TfRef.attribute<List<String>>(this, 'attributes');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionId =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `lengths` attribute.
  TfRef<List<num>> get lengths => TfRef.attribute<List<num>>(this, 'lengths');

  /// Reference to `orders` attribute.
  TfRef<List<String>> get orders =>
      TfRef.attribute<List<String>>(this, 'orders');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
