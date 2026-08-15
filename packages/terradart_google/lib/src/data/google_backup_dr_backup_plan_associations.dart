// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_backup_plan_associations`.
const Set<String> _googleBackupDrBackupPlanAssociationsSensitive = <String>{};

/// Factory wrapper for `google_backup_dr_backup_plan_associations`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBackupDrBackupPlanAssociations extends Data {
  static const String tfType = 'google_backup_dr_backup_plan_associations';

  DataGoogleBackupDrBackupPlanAssociations({
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
      _googleBackupDrBackupPlanAssociationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `associations` attribute.
  TfRef<List<Map<String, Object?>>> get associations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'associations');
}
