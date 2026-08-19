// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_unit`.
const Set<String> _googleSaasRuntimeUnitSensitive = <String>{};

/// Factory wrapper for `google_saas_runtime_unit`.
final class GoogleSaasRuntimeUnit extends Resource {
  static const String tfType = 'google_saas_runtime_unit';

  GoogleSaasRuntimeUnit({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? managementMode,
    TfArg<String>? project,
    TfArg<String>? tenant,
    required TfArg<String> unitId,
    TfArg<String>? unitKind,
    TfArg<Map<String, dynamic>>? maintenance,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (annotations != null) 'annotations': annotations,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (labels != null) 'labels': labels,
           'location': location,
           if (managementMode != null) 'management_mode': managementMode,
           if (project != null) 'project': project,
           if (tenant != null) 'tenant': tenant,
           'unit_id': unitId,
           if (unitKind != null) 'unit_kind': unitKind,
           if (maintenance != null) 'maintenance': maintenance,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSaasRuntimeUnitSensitive;
}
