// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_documentsdb_specifications`.
const Set<String> _appwriteDocumentsdbSpecificationsSensitive = <String>{};

/// Factory wrapper for `appwrite_documentsdb_specifications`.
///
/// Lists the compute specifications available for Appwrite DocumentsDB
/// databases. This deployment may have no shared pool, in which case
/// `specification` is required when creating a database, so a `specification`
/// slug can be selected without hardcoding it. Availability depends on the
/// organization's billing plan; check `enabled` before using a slug.
final class DataAppwriteDocumentsdbSpecifications extends Data {
  static const String tfType = 'appwrite_documentsdb_specifications';

  DataAppwriteDocumentsdbSpecifications(
    super.localName, {
    RefTo<AppwriteProject>? projectId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'project_id': ?projectId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _appwriteDocumentsdbSpecificationsSensitive;

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
