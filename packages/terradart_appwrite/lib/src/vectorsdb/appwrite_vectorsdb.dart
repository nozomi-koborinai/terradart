// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_vectorsdb`.
const Set<String> _appwriteVectorsdbSensitive = <String>{};

/// Vectorsdb Sync enum for `sync_mode`.
extension type const VectorsdbSyncMode._(TfArg<String> _)
    implements TfArg<String> {
  VectorsdbSyncMode.variable(String name) : this._(TfArg.variable(name));
  VectorsdbSyncMode.expression(String template)
    : this._(TfArg.expression(template));
  const VectorsdbSyncMode.arg(TfArg<String> arg) : this._(arg);

  static const async = VectorsdbSyncMode._(TfArgLiteral('async'));
  static const sync = VectorsdbSyncMode._(TfArgLiteral('sync'));
  static const quorum = VectorsdbSyncMode._(TfArgLiteral('quorum'));

  static const List<VectorsdbSyncMode> values = [async, sync, quorum];
}

/// Factory wrapper for `appwrite_vectorsdb`.
///
/// Manages an Appwrite VectorsDB database. Collections in a VectorsDB database
/// store embeddings and are searched by vector similarity.
///
/// Setting `specification` places the database on dedicated infrastructure
/// reserved for this project, which is billed separately. Left unset, it runs
/// on the deployment's shared pool -- but not every deployment has one. Where
/// none is configured the API rejects creation with
/// `dedicated_database_required`, and a `specification` becomes mandatory. Read
/// the available slugs from the matching specifications data source.
final class AppwriteVectorsdb extends Resource {
  static const String tfType = 'appwrite_vectorsdb';

  AppwriteVectorsdb(
    super.localName, {
    TfArg<bool>? enabled,
    required TfArg<String> name,
    RefTo<AppwriteProject>? projectId,
    TfArg<num>? replicas,
    TfArg<String>? specification,
    VectorsdbSyncMode? syncMode,
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
  Set<String> get sensitiveFields => _appwriteVectorsdbSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteVectorsdb>`.
  RefTo<AppwriteVectorsdb> get ref => RefTo.of(this);

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
