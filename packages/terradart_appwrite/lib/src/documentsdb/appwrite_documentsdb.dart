// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_documentsdb`.
const Set<String> _appwriteDocumentsdbSensitive = <String>{};

/// Documentsdb Sync enum for `sync_mode`.
extension type const DocumentsdbSyncMode._(TfArg<String> _)
    implements TfArg<String> {
  DocumentsdbSyncMode.variable(String name) : this._(TfArg.variable(name));
  DocumentsdbSyncMode.expression(String template)
    : this._(TfArg.expression(template));
  const DocumentsdbSyncMode.arg(TfArg<String> arg) : this._(arg);

  static const async = DocumentsdbSyncMode._(TfArgLiteral('async'));
  static const sync = DocumentsdbSyncMode._(TfArgLiteral('sync'));
  static const quorum = DocumentsdbSyncMode._(TfArgLiteral('quorum'));

  static const List<DocumentsdbSyncMode> values = [async, sync, quorum];
}

/// Factory wrapper for `appwrite_documentsdb`.
///
/// Manages an Appwrite DocumentsDB database. Collections in a DocumentsDB
/// database store schemaless JSON documents.
///
/// Setting `specification` places the database on dedicated infrastructure
/// reserved for this project, which is billed separately. Left unset, it runs
/// on the deployment's shared pool -- but not every deployment has one. Where
/// none is configured the API rejects creation with
/// `dedicated_database_required`, and a `specification` becomes mandatory. Read
/// the available slugs from the matching specifications data source.
final class AppwriteDocumentsdb extends Resource {
  static const String tfType = 'appwrite_documentsdb';

  AppwriteDocumentsdb(
    super.localName, {
    TfArg<bool>? enabled,
    required TfArg<String> name,
    RefTo<AppwriteProject>? projectId,
    TfArg<num>? replicas,
    TfArg<String>? specification,
    DocumentsdbSyncMode? syncMode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'name': name,
           'project_id': ?projectId?.encodeAs('id'),
           'replicas': ?replicas,
           'specification': ?specification,
           'sync_mode': ?syncMode,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteDocumentsdbSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteDocumentsdb>`.
  RefTo<AppwriteDocumentsdb> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `replicas` attribute.
  TfRef<num> get replicas => TfRef.attribute<num>(this, 'replicas');

  /// Reference to `specification` attribute.
  TfRef<String> get specification =>
      TfRef.attribute<String>(this, 'specification');

  /// Reference to `sync_mode` attribute.
  TfRef<String> get syncMode => TfRef.attribute<String>(this, 'sync_mode');
}
