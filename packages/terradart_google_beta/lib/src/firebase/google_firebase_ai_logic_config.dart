// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_ai_logic_config`.
const Set<String> _googleFirebaseAiLogicConfigSensitive = <String>{
  'generative_language_config.api_key',
};

/// Factory wrapper for `google_firebase_ai_logic_config`.
final class GoogleFirebaseAiLogicConfig extends Resource {
  static const String tfType = 'google_firebase_ai_logic_config';

  GoogleFirebaseAiLogicConfig({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? generativeLanguageConfig,
    TfArg<Map<String, dynamic>>? telemetryConfig,
    TfArg<Map<String, dynamic>>? trafficFilter,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (generativeLanguageConfig != null)
             'generative_language_config': generativeLanguageConfig,
           if (telemetryConfig != null) 'telemetry_config': telemetryConfig,
           if (trafficFilter != null) 'traffic_filter': trafficFilter,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseAiLogicConfigSensitive;
}
