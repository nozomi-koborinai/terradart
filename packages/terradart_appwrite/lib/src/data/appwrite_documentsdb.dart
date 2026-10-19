// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../documentsdb/appwrite_documentsdb.dart';
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_documentsdb`.
const Set<String> _appwriteDocumentsdbSensitive = <String>{};

/// Factory wrapper for `appwrite_documentsdb`.
///
/// Fetches an Appwrite DocumentsDB database by ID.
final class DataAppwriteDocumentsdb extends Data {
  static const String tfType = 'appwrite_documentsdb';

  DataAppwriteDocumentsdb(
    super.localName, {
    required TfArg<String> id,
    RefTo<AppwriteProject>? projectId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, 'project_id': ?projectId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _appwriteDocumentsdbSensitive;

  /// A reference to the `appwrite_documentsdb` this data source reads, for
  /// arguments typed `RefTo<AppwriteDocumentsdb>`.
  RefTo<AppwriteDocumentsdb> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `replicas` attribute.
  TfRef<num> get replicas => TfRef.attribute<num>(this, 'replicas');

  /// Reference to `specification` attribute.
  TfRef<String> get specification =>
      TfRef.attribute<String>(this, 'specification');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
