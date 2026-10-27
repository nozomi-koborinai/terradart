// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_web_pubsub`.
const Set<String> _azurermWebPubsubSensitive = <String>{
  'primary_access_key',
  'primary_connection_string',
  'secondary_access_key',
  'secondary_connection_string',
};

/// Web Pubsub enum for `sku`.
extension type const WebPubsubSku._(TfArg<String> _) implements TfArg<String> {
  WebPubsubSku.variable(String name) : this._(TfArg.variable(name));
  WebPubsubSku.expression(String template) : this._(TfArg.expression(template));
  const WebPubsubSku.arg(TfArg<String> arg) : this._(arg);

  static const premiumP1 = WebPubsubSku._(TfArgLiteral('Premium_P1'));
  static const premiumP2 = WebPubsubSku._(TfArgLiteral('Premium_P2'));
  static const standardS1 = WebPubsubSku._(TfArgLiteral('Standard_S1'));
  static const freeF1 = WebPubsubSku._(TfArgLiteral('Free_F1'));

  static const List<WebPubsubSku> values = [
    premiumP1,
    premiumP2,
    standardS1,
    freeF1,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_web_pubsub` (derived from provider schema).
@immutable
final class WebPubsubIdentity {
  const WebPubsubIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `live_trace` block of
/// `azurerm_web_pubsub` (derived from provider schema).
@immutable
final class WebPubsubLiveTrace {
  const WebPubsubLiveTrace({
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

/// Factory wrapper for `azurerm_web_pubsub`.
final class AzurermWebPubsub extends Resource {
  static const String tfType = 'azurerm_web_pubsub';

  AzurermWebPubsub(
    super.localName, {
    TfArg<bool>? aadAuthEnabled,
    TfArg<num>? capacity,
    TfArg<bool>? localAuthEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required WebPubsubSku sku,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? tlsClientCertEnabled,
    WebPubsubIdentity? identity,
    WebPubsubLiveTrace? liveTrace,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aad_auth_enabled': ?aadAuthEnabled,
           'capacity': ?capacity,
           'local_auth_enabled': ?localAuthEnabled,
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'tags': ?tags,
           'tls_client_cert_enabled': ?tlsClientCertEnabled,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (liveTrace != null)
             'live_trace': TfArg.literal(liveTrace.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermWebPubsubSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWebPubsub>`.
  RefTo<AzurermWebPubsub> get ref => RefTo.of(this);

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

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `aad_auth_enabled` attribute.
  TfRef<bool> get aadAuthEnabled =>
      TfRef.attribute<bool>(this, 'aad_auth_enabled');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `local_auth_enabled` attribute.
  TfRef<bool> get localAuthEnabled =>
      TfRef.attribute<bool>(this, 'local_auth_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tls_client_cert_enabled` attribute.
  TfRef<bool> get tlsClientCertEnabled =>
      TfRef.attribute<bool>(this, 'tls_client_cert_enabled');
}
