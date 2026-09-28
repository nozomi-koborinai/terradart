// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_case_close_definition`.
const Set<String> _googleChronicleCaseCloseDefinitionSensitive = <String>{};

/// Factory wrapper for `google_chronicle_case_close_definition`.
///
/// CaseCloseDefinition provides predefined root cause options for closing
/// security cases in SecOps. These definitions ensure consistent documentation
/// and reporting across case investigations upon closure.
final class GoogleChronicleCaseCloseDefinition extends Resource {
  static const String tfType = 'google_chronicle_case_close_definition';

  GoogleChronicleCaseCloseDefinition({
    required super.localName,
    required TfArg<String> closeReason,
    TfArg<String>? deletionPolicy,
    required TfArg<String> instance,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> rootCause,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'close_reason': closeReason,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'instance': instance,
           'location': location,
           if (project != null) 'project': project,
           'root_cause': rootCause,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleChronicleCaseCloseDefinitionSensitive;
}
