// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_unit_kind`.
const Set<String> _googleSaasRuntimeUnitKindSensitive = <String>{};

/// Factory wrapper for `google_saas_runtime_unit_kind`.
final class GoogleSaasRuntimeUnitKind extends Resource {
  static const String tfType = 'google_saas_runtime_unit_kind';

  GoogleSaasRuntimeUnitKind({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? defaultRelease,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> saas,
    required TfArg<String> unitKindId,
    TfArg<List<Map<String, dynamic>>>? dependencies,
    TfArg<List<Map<String, dynamic>>>? inputVariableMappings,
    TfArg<List<Map<String, dynamic>>>? outputVariableMappings,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (annotations != null) 'annotations': annotations,
           if (defaultRelease != null) 'default_release': defaultRelease,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           'saas': saas,
           'unit_kind_id': unitKindId,
           if (dependencies != null) 'dependencies': dependencies,
           if (inputVariableMappings != null)
             'input_variable_mappings': inputVariableMappings,
           if (outputVariableMappings != null)
             'output_variable_mappings': outputVariableMappings,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSaasRuntimeUnitKindSensitive;
}
