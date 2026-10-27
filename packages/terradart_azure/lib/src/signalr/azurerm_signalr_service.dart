// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_signalr_service`.
const Set<String> _azurermSignalrServiceSensitive = <String>{
  'primary_access_key',
  'primary_connection_string',
  'secondary_access_key',
  'secondary_connection_string',
};

/// Signalr Service enum for `service_mode`.
extension type const SignalrServiceMode._(TfArg<String> _)
    implements TfArg<String> {
  SignalrServiceMode.variable(String name) : this._(TfArg.variable(name));
  SignalrServiceMode.expression(String template)
    : this._(TfArg.expression(template));
  const SignalrServiceMode.arg(TfArg<String> arg) : this._(arg);

  static const serverless = SignalrServiceMode._(TfArgLiteral('Serverless'));
  static const classic = SignalrServiceMode._(TfArgLiteral('Classic'));
  static const defaultCase = SignalrServiceMode._(TfArgLiteral('Default'));

  static const List<SignalrServiceMode> values = [
    serverless,
    classic,
    defaultCase,
  ];
}

/// Typed helper for the `cors` block of
/// `azurerm_signalr_service` (derived from provider schema).
@immutable
final class SignalrServiceCors {
  const SignalrServiceCors({required this.allowedOrigins});

  final TfArg<List<String>> allowedOrigins;

  @internal
  Map<String, Object?> encode() => {
    'allowed_origins': allowedOrigins.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_signalr_service` (derived from provider schema).
@immutable
final class SignalrServiceIdentity {
  const SignalrServiceIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `live_trace` block of
/// `azurerm_signalr_service` (derived from provider schema).
@immutable
final class SignalrServiceLiveTrace {
  const SignalrServiceLiveTrace({
    this.connectivityLogsEnabled,
    this.enabled,
    this.httpRequestLogsEnabled,
    this.messagingLogsEnabled,
  });

  final TfArg<bool>? connectivityLogsEnabled;

  final TfArg<bool>? enabled;

  final TfArg<bool>? httpRequestLogsEnabled;

  final TfArg<bool>? messagingLogsEnabled;

  @internal
  Map<String, Object?> encode() => {
    'connectivity_logs_enabled': ?connectivityLogsEnabled?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'http_request_logs_enabled': ?httpRequestLogsEnabled?.toTfJson(),
    'messaging_logs_enabled': ?messagingLogsEnabled?.toTfJson(),
  };
}

/// Typed helper for the `sku` block of
/// `azurerm_signalr_service` (derived from provider schema).
@immutable
final class SignalrServiceSku {
  const SignalrServiceSku({required this.capacity, required this.name});

  final TfArg<num> capacity;

  final SignalrServiceSkuName name;

  @internal
  Map<String, Object?> encode() => {
    'capacity': capacity.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const SignalrServiceSkuName._(TfArg<String> _)
    implements TfArg<String> {
  SignalrServiceSkuName.variable(String name) : this._(TfArg.variable(name));
  SignalrServiceSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const SignalrServiceSkuName.arg(TfArg<String> arg) : this._(arg);

  static const freeF1 = SignalrServiceSkuName._(TfArgLiteral('Free_F1'));
  static const standardS1 = SignalrServiceSkuName._(
    TfArgLiteral('Standard_S1'),
  );
  static const premiumP1 = SignalrServiceSkuName._(TfArgLiteral('Premium_P1'));
  static const premiumP2 = SignalrServiceSkuName._(TfArgLiteral('Premium_P2'));

  static const List<SignalrServiceSkuName> values = [
    freeF1,
    standardS1,
    premiumP1,
    premiumP2,
  ];
}

/// Typed helper for the `upstream_endpoint` block of
/// `azurerm_signalr_service` (derived from provider schema).
@immutable
final class SignalrServiceUpstreamEndpoint {
  const SignalrServiceUpstreamEndpoint({
    required this.categoryPattern,
    required this.eventPattern,
    required this.hubPattern,
    required this.urlTemplate,
    this.userAssignedIdentityId,
  });

  final TfArg<List<String>> categoryPattern;

  final TfArg<List<String>> eventPattern;

  final TfArg<List<String>> hubPattern;

  final TfArg<String> urlTemplate;

  final TfArg<String>? userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'category_pattern': categoryPattern.toTfJson(),
    'event_pattern': eventPattern.toTfJson(),
    'hub_pattern': hubPattern.toTfJson(),
    'url_template': urlTemplate.toTfJson(),
    'user_assigned_identity_id': ?userAssignedIdentityId?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_signalr_service`.
final class AzurermSignalrService extends Resource {
  static const String tfType = 'azurerm_signalr_service';

  AzurermSignalrService(
    super.localName, {
    TfArg<bool>? aadAuthEnabled,
    TfArg<bool>? connectivityLogsEnabled,
    TfArg<bool>? httpRequestLogsEnabled,
    TfArg<bool>? liveTraceEnabled,
    TfArg<bool>? localAuthEnabled,
    required TfArg<String> location,
    TfArg<bool>? messagingLogsEnabled,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? serverlessConnectionTimeoutInSeconds,
    SignalrServiceMode? serviceMode,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? tlsClientCertEnabled,
    List<SignalrServiceCors>? cors,
    SignalrServiceIdentity? identity,
    SignalrServiceLiveTrace? liveTrace,
    required SignalrServiceSku sku,
    List<SignalrServiceUpstreamEndpoint>? upstreamEndpoint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aad_auth_enabled': ?aadAuthEnabled,
           'connectivity_logs_enabled': ?connectivityLogsEnabled,
           'http_request_logs_enabled': ?httpRequestLogsEnabled,
           'live_trace_enabled': ?liveTraceEnabled,
           'local_auth_enabled': ?localAuthEnabled,
           'location': location,
           'messaging_logs_enabled': ?messagingLogsEnabled,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'serverless_connection_timeout_in_seconds':
               ?serverlessConnectionTimeoutInSeconds,
           'service_mode': ?serviceMode,
           'tags': ?tags,
           'tls_client_cert_enabled': ?tlsClientCertEnabled,
           if (cors != null)
             'cors': TfArg.literal([for (final e in cors) e.encode()]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (liveTrace != null)
             'live_trace': TfArg.literal(liveTrace.encode()),
           'sku': TfArg.literal(sku.encode()),
           if (upstreamEndpoint != null)
             'upstream_endpoint': TfArg.literal([
               for (final e in upstreamEndpoint) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSignalrServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSignalrService>`.
  RefTo<AzurermSignalrService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `primary_access_key` attribute.
  TfRef<String> get primaryAccessKey =>
      TfRef.attribute<String>(this, 'primary_access_key');

  /// Reference to `primary_connection_string` attribute.
  TfRef<String> get primaryConnectionString =>
      TfRef.attribute<String>(this, 'primary_connection_string');

  /// Reference to `public_port` attribute.
  TfRef<num> get publicPort => TfRef.attribute<num>(this, 'public_port');

  /// Reference to `secondary_access_key` attribute.
  TfRef<String> get secondaryAccessKey =>
      TfRef.attribute<String>(this, 'secondary_access_key');

  /// Reference to `secondary_connection_string` attribute.
  TfRef<String> get secondaryConnectionString =>
      TfRef.attribute<String>(this, 'secondary_connection_string');

  /// Reference to `server_port` attribute.
  TfRef<num> get serverPort => TfRef.attribute<num>(this, 'server_port');

  /// Reference to `aad_auth_enabled` attribute.
  TfRef<bool> get aadAuthEnabled =>
      TfRef.attribute<bool>(this, 'aad_auth_enabled');

  /// Reference to `connectivity_logs_enabled` attribute.
  TfRef<bool> get connectivityLogsEnabled =>
      TfRef.attribute<bool>(this, 'connectivity_logs_enabled');

  /// Reference to `http_request_logs_enabled` attribute.
  TfRef<bool> get httpRequestLogsEnabled =>
      TfRef.attribute<bool>(this, 'http_request_logs_enabled');

  /// Reference to `live_trace_enabled` attribute.
  TfRef<bool> get liveTraceEnabled =>
      TfRef.attribute<bool>(this, 'live_trace_enabled');

  /// Reference to `local_auth_enabled` attribute.
  TfRef<bool> get localAuthEnabled =>
      TfRef.attribute<bool>(this, 'local_auth_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `messaging_logs_enabled` attribute.
  TfRef<bool> get messagingLogsEnabled =>
      TfRef.attribute<bool>(this, 'messaging_logs_enabled');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `serverless_connection_timeout_in_seconds` attribute.
  TfRef<num> get serverlessConnectionTimeoutInSeconds =>
      TfRef.attribute<num>(this, 'serverless_connection_timeout_in_seconds');

  /// Reference to `service_mode` attribute.
  TfRef<String> get serviceMode =>
      TfRef.attribute<String>(this, 'service_mode');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tls_client_cert_enabled` attribute.
  TfRef<bool> get tlsClientCertEnabled =>
      TfRef.attribute<bool>(this, 'tls_client_cert_enabled');
}
