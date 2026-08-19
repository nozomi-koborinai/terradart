// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ces_security_settings`.
const Set<String> _googleCesSecuritySettingsSensitive = <String>{};

/// Factory wrapper for `google_ces_security_settings`.
final class GoogleCesSecuritySettings extends Resource {
  static const String tfType = 'google_ces_security_settings';

  GoogleCesSecuritySettings({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? endpointControlPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'location': location,
           if (project != null) 'project': project,
           if (endpointControlPolicy != null)
             'endpoint_control_policy': endpointControlPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesSecuritySettingsSensitive;
}
