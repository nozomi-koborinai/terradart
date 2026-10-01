// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_postgresql_specifications`.
const Set<String> _appwritePostgresqlSpecificationsSensitive = <String>{};

/// Factory wrapper for `appwrite_postgresql_specifications`.
///
/// Lists the compute specifications available for dedicated PostgreSQL
/// databases, so a `specification` slug can be selected without hardcoding it.
/// Availability depends on the organization's billing plan; check `enabled`
/// before using a slug.
final class DataAppwritePostgresqlSpecifications extends Data {
  static const String tfType = 'appwrite_postgresql_specifications';

  DataAppwritePostgresqlSpecifications(
    super.localName, {
    RefTo<AppwriteProject>? projectId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'project_id': ?projectId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _appwritePostgresqlSpecificationsSensitive;

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
