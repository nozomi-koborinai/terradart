// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_service_network_settings`.
const Set<String> _googleAppEngineServiceNetworkSettingsSensitive = <String>{};

/// Typed helper for the `network_settings` block of
/// `google_app_engine_service_network_settings` (derived from provider schema).
@immutable
final class AppEngineServiceNetworkSettingsNetworkSettings {
  const AppEngineServiceNetworkSettingsNetworkSettings({
    this.ingressTrafficAllowed,
  });

  final TfArg<
    AppEngineServiceNetworkSettingsNetworkSettingsIngressTrafficAllowed
  >?
  ingressTrafficAllowed;

  Map<String, Object?> encode() => {
    if (ingressTrafficAllowed != null)
      'ingress_traffic_allowed': ingressTrafficAllowed!.toTfJson(),
  };
}

/// `ingress_traffic_allowed` — derived from the provider schema description.
enum AppEngineServiceNetworkSettingsNetworkSettingsIngressTrafficAllowed
    implements TerraformEnum {
  ingressTrafficAllowedUnspecified('INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED'),
  ingressTrafficAllowedAll('INGRESS_TRAFFIC_ALLOWED_ALL'),
  ingressTrafficAllowedInternalOnly('INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY'),
  ingressTrafficAllowedInternalAndLb('INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB');

  const AppEngineServiceNetworkSettingsNetworkSettingsIngressTrafficAllowed(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_app_engine_service_network_settings`.
///
/// A NetworkSettings resource is a container for ingress settings for a version
/// or service.
final class GoogleAppEngineServiceNetworkSettings extends Resource {
  static const String tfType = 'google_app_engine_service_network_settings';

  GoogleAppEngineServiceNetworkSettings({
    required super.localName,
    required TfArg<String> service,
    required AppEngineServiceNetworkSettingsNetworkSettings networkSettings,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           'network_settings': TfArg.literal(networkSettings.encode()),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineServiceNetworkSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
