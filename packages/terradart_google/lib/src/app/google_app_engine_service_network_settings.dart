// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_service_network_settings`.
const Set<String> _googleAppEngineServiceNetworkSettingsSensitive = <String>{};

/// Factory wrapper for `google_app_engine_service_network_settings`.
///
/// A NetworkSettings resource is a container for ingress settings for a version
/// or service.
final class GoogleAppEngineServiceNetworkSettings extends Resource {
  static const String tfType = 'google_app_engine_service_network_settings';

  GoogleAppEngineServiceNetworkSettings({
    required super.localName,
    required TfArg<String> service,
    required TfArg<Map<String, dynamic>> networkSettings,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           'network_settings': networkSettings,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineServiceNetworkSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
