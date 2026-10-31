// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_web_pubsub_socketio`.
const Set<String> _azurermWebPubsubSocketioSensitive = <String>{
  'primary_access_key',
  'primary_connection_string',
  'secondary_access_key',
  'secondary_connection_string',
};

/// Web Pubsub Socketio Public Network enum for `public_network_access`.
extension type const WebPubsubSocketioPublicNetworkAccess._(TfArg<String> _)
    implements TfArg<String> {
  WebPubsubSocketioPublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  WebPubsubSocketioPublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const WebPubsubSocketioPublicNetworkAccess.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = WebPubsubSocketioPublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );
  static const disabled = WebPubsubSocketioPublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );

  static const List<WebPubsubSocketioPublicNetworkAccess> values = [
    enabled,
    disabled,
  ];
}

/// Web Pubsub Socketio Service enum for `service_mode`.
extension type const WebPubsubSocketioServiceMode._(TfArg<String> _)
    implements TfArg<String> {
  WebPubsubSocketioServiceMode.variable(String name)
    : this._(TfArg.variable(name));
  WebPubsubSocketioServiceMode.expression(String template)
    : this._(TfArg.expression(template));
  const WebPubsubSocketioServiceMode.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = WebPubsubSocketioServiceMode._(
    TfArgLiteral('Default'),
  );
  static const serverless = WebPubsubSocketioServiceMode._(
    TfArgLiteral('Serverless'),
  );

  static const List<WebPubsubSocketioServiceMode> values = [
    defaultCase,
    serverless,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_web_pubsub_socketio` (derived from provider schema).
@immutable
final class WebPubsubSocketioIdentity {
  const WebPubsubSocketioIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `sku` block of
/// `azurerm_web_pubsub_socketio` (derived from provider schema).
@immutable
final class WebPubsubSocketioSku {
  const WebPubsubSocketioSku({this.capacity, required this.name});

  final TfArg<num>? capacity;

  final WebPubsubSocketioSkuName name;

  @internal
  Map<String, Object?> encode() => {
    'capacity': ?capacity?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const WebPubsubSocketioSkuName._(TfArg<String> _)
    implements TfArg<String> {
  WebPubsubSocketioSkuName.variable(String name) : this._(TfArg.variable(name));
  WebPubsubSocketioSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const WebPubsubSocketioSkuName.arg(TfArg<String> arg) : this._(arg);

  static const freeF1 = WebPubsubSocketioSkuName._(TfArgLiteral('Free_F1'));
  static const standardS1 = WebPubsubSocketioSkuName._(
    TfArgLiteral('Standard_S1'),
  );
  static const premiumP1 = WebPubsubSocketioSkuName._(
    TfArgLiteral('Premium_P1'),
  );
  static const premiumP2 = WebPubsubSocketioSkuName._(
    TfArgLiteral('Premium_P2'),
  );

  static const List<WebPubsubSocketioSkuName> values = [
    freeF1,
    standardS1,
    premiumP1,
    premiumP2,
  ];
}

/// Factory wrapper for `azurerm_web_pubsub_socketio`.
final class AzurermWebPubsubSocketio extends Resource {
  static const String tfType = 'azurerm_web_pubsub_socketio';

  AzurermWebPubsubSocketio(
    super.localName, {
    TfArg<bool>? aadAuthEnabled,
    TfArg<bool>? liveTraceConnectivityLogsEnabled,
    TfArg<bool>? liveTraceEnabled,
    TfArg<bool>? liveTraceHttpRequestLogsEnabled,
    TfArg<bool>? liveTraceMessagingLogsEnabled,
    TfArg<bool>? localAuthEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    WebPubsubSocketioPublicNetworkAccess? publicNetworkAccess,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    WebPubsubSocketioServiceMode? serviceMode,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? tlsClientCertEnabled,
    WebPubsubSocketioIdentity? identity,
    required WebPubsubSocketioSku sku,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aad_auth_enabled': ?aadAuthEnabled,
           'live_trace_connectivity_logs_enabled':
               ?liveTraceConnectivityLogsEnabled,
           'live_trace_enabled': ?liveTraceEnabled,
           'live_trace_http_request_logs_enabled':
               ?liveTraceHttpRequestLogsEnabled,
           'live_trace_messaging_logs_enabled': ?liveTraceMessagingLogsEnabled,
           'local_auth_enabled': ?localAuthEnabled,
           'location': location,
           'name': name,
           'public_network_access': ?publicNetworkAccess,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_mode': ?serviceMode,
           'tags': ?tags,
           'tls_client_cert_enabled': ?tlsClientCertEnabled,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'sku': TfArg.literal(sku.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermWebPubsubSocketioSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWebPubsubSocketio>`.
  RefTo<AzurermWebPubsubSocketio> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `external_ip` attribute.
  TfRef<String> get externalIp => TfRef.attribute<String>(this, 'external_ip');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

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

  /// Reference to `live_trace_connectivity_logs_enabled` attribute.
  TfRef<bool> get liveTraceConnectivityLogsEnabled =>
      TfRef.attribute<bool>(this, 'live_trace_connectivity_logs_enabled');

  /// Reference to `live_trace_enabled` attribute.
  TfRef<bool> get liveTraceEnabled =>
      TfRef.attribute<bool>(this, 'live_trace_enabled');

  /// Reference to `live_trace_http_request_logs_enabled` attribute.
  TfRef<bool> get liveTraceHttpRequestLogsEnabled =>
      TfRef.attribute<bool>(this, 'live_trace_http_request_logs_enabled');

  /// Reference to `live_trace_messaging_logs_enabled` attribute.
  TfRef<bool> get liveTraceMessagingLogsEnabled =>
      TfRef.attribute<bool>(this, 'live_trace_messaging_logs_enabled');

  /// Reference to `local_auth_enabled` attribute.
  TfRef<bool> get localAuthEnabled =>
      TfRef.attribute<bool>(this, 'local_auth_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

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
