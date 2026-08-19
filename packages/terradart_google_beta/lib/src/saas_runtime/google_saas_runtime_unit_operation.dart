// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_unit_operation`.
const Set<String> _googleSaasRuntimeUnitOperationSensitive = <String>{};

/// Factory wrapper for `google_saas_runtime_unit_operation`.
final class GoogleSaasRuntimeUnitOperation extends Resource {
  static const String tfType = 'google_saas_runtime_unit_operation';

  GoogleSaasRuntimeUnitOperation({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> unit,
    required TfArg<String> unitOperationId,
    TfArg<bool>? waitForCompletion,
    TfArg<Map<String, dynamic>>? deprovision,
    TfArg<Map<String, dynamic>>? provision,
    TfArg<Map<String, dynamic>>? upgrade,
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
           if (project != null) 'project': project,
           'unit': unit,
           'unit_operation_id': unitOperationId,
           if (waitForCompletion != null)
             'wait_for_completion': waitForCompletion,
           if (deprovision != null) 'deprovision': deprovision,
           if (provision != null) 'provision': provision,
           if (upgrade != null) 'upgrade': upgrade,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSaasRuntimeUnitOperationSensitive;
}
