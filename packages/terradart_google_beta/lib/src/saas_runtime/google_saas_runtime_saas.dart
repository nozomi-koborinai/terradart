// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_saas_runtime_saas`.
const Set<String> _googleSaasRuntimeSaasSensitive = <String>{};

/// Factory wrapper for `google_saas_runtime_saas`.
final class GoogleSaasRuntimeSaas extends Resource {
  static const String tfType = 'google_saas_runtime_saas';

  GoogleSaasRuntimeSaas({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> saasId,
    TfArg<List<Map<String, dynamic>>>? locations,
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
           'saas_id': saasId,
           if (locations != null) 'locations': locations,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSaasRuntimeSaasSensitive;
}
