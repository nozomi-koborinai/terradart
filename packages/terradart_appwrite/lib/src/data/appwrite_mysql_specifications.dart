// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_mysql_specifications`.
const Set<String> _appwriteMysqlSpecificationsSensitive = <String>{};

/// Factory wrapper for `appwrite_mysql_specifications`.
///
/// Lists the compute specifications available for dedicated MySQL databases, so
/// a `specification` slug can be selected without hardcoding it. Availability
/// depends on the organization's billing plan; check `enabled` before using a
/// slug.
final class DataAppwriteMysqlSpecifications extends Data {
  static const String tfType = 'appwrite_mysql_specifications';

  DataAppwriteMysqlSpecifications({
    required super.localName,
    TfArg<String>? projectId,
  }) : super(
         terraformType: tfType,
         argMap: {if (projectId != null) 'project_id': projectId},
       );

  @override
  Set<String> get sensitiveFields => _appwriteMysqlSpecificationsSensitive;
}
