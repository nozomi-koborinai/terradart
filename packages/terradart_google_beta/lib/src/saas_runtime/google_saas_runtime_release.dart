// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_release`.
const Set<String> _googleSaasRuntimeReleaseSensitive = <String>{};

/// Factory wrapper for `google_saas_runtime_release`.
final class GoogleSaasRuntimeRelease extends Resource {
  static const String tfType = 'google_saas_runtime_release';

  GoogleSaasRuntimeRelease({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> releaseId,
    required TfArg<String> unitKind,
    TfArg<Map<String, dynamic>>? blueprint,
    TfArg<List<Map<String, dynamic>>>? inputVariableDefaults,
    TfArg<Map<String, dynamic>>? releaseRequirements,
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
           'release_id': releaseId,
           'unit_kind': unitKind,
           if (blueprint != null) 'blueprint': blueprint,
           if (inputVariableDefaults != null)
             'input_variable_defaults': inputVariableDefaults,
           if (releaseRequirements != null)
             'release_requirements': releaseRequirements,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSaasRuntimeReleaseSensitive;
}
