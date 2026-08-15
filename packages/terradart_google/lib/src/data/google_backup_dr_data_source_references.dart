// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_data_source_references`.
const Set<String> _googleBackupDrDataSourceReferencesSensitive = <String>{};

/// Factory wrapper for `google_backup_dr_data_source_references`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBackupDrDataSourceReferences extends Data {
  static const String tfType = 'google_backup_dr_data_source_references';

  DataGoogleBackupDrDataSourceReferences({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<String>? resourceType,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
           if (resourceType != null) 'resource_type': resourceType,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBackupDrDataSourceReferencesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_source_references` attribute.
  TfRef<List<Map<String, Object?>>> get dataSourceReferences =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'data_source_references',
      );
}
