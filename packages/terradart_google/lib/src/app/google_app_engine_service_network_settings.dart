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
final class AppEngineServiceNetworkSettings {
  const AppEngineServiceNetworkSettings({this.ingressTrafficAllowed});

  final AppEngineServiceNetworkSettingsIngressTrafficAllowed?
  ingressTrafficAllowed;

  Map<String, Object?> encode() => {
    'ingress_traffic_allowed': ?ingressTrafficAllowed?.toTfJson(),
  };
}

/// `ingress_traffic_allowed` — derived from the provider schema description.
extension type const AppEngineServiceNetworkSettingsIngressTrafficAllowed._(
  TfArg<String> _
) implements TfArg<String> {
  AppEngineServiceNetworkSettingsIngressTrafficAllowed.variable(String name)
    : this._(TfArg.variable(name));
  AppEngineServiceNetworkSettingsIngressTrafficAllowed.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AppEngineServiceNetworkSettingsIngressTrafficAllowed.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const ingressTrafficAllowedUnspecified =
      AppEngineServiceNetworkSettingsIngressTrafficAllowed._(
        TfArgLiteral('INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED'),
      );
  static const ingressTrafficAllowedAll =
      AppEngineServiceNetworkSettingsIngressTrafficAllowed._(
        TfArgLiteral('INGRESS_TRAFFIC_ALLOWED_ALL'),
      );
  static const ingressTrafficAllowedInternalOnly =
      AppEngineServiceNetworkSettingsIngressTrafficAllowed._(
        TfArgLiteral('INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY'),
      );
  static const ingressTrafficAllowedInternalAndLb =
      AppEngineServiceNetworkSettingsIngressTrafficAllowed._(
        TfArgLiteral('INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB'),
      );

  static const List<AppEngineServiceNetworkSettingsIngressTrafficAllowed>
  values = [
    ingressTrafficAllowedUnspecified,
    ingressTrafficAllowedAll,
    ingressTrafficAllowedInternalOnly,
    ingressTrafficAllowedInternalAndLb,
  ];
}

/// Factory wrapper for `google_app_engine_service_network_settings`.
///
/// A NetworkSettings resource is a container for ingress settings for a version
/// or service.
final class GoogleAppEngineServiceNetworkSettings extends Resource {
  static const String tfType = 'google_app_engine_service_network_settings';

  GoogleAppEngineServiceNetworkSettings(
    super.localName, {
    required TfArg<String> service,
    required AppEngineServiceNetworkSettings networkSettings,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           'network_settings': TfArg.literal(networkSettings.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineServiceNetworkSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAppEngineServiceNetworkSettings>`.
  RefTo<GoogleAppEngineServiceNetworkSettings> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');
}
