// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflared_config`.
const Set<String> _cloudflareZeroTrustTunnelCloudflaredConfigSensitive =
    <String>{};

/// Typed helper for the `config` block of
/// `cloudflare_zero_trust_tunnel_cloudflared_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelCloudflaredConfigConfig {
  const ZeroTrustTunnelCloudflaredConfigConfig({
    this.ingress,
    this.originRequest,
  });

  final List<ZeroTrustTunnelCloudflaredConfigConfigIngress>? ingress;

  final ZeroTrustTunnelCloudflaredConfigConfigOriginRequest? originRequest;

  Map<String, Object?> encode() => {
    if (ingress != null) 'ingress': [for (final e in ingress!) e.encode()],
    if (originRequest != null) 'origin_request': originRequest!.encode(),
  };
}

/// Typed helper for the `config.ingress` block of
/// `cloudflare_zero_trust_tunnel_cloudflared_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelCloudflaredConfigConfigIngress {
  const ZeroTrustTunnelCloudflaredConfigConfigIngress({
    this.hostname,
    this.path,
    required this.service,
    this.originRequest,
  });

  final TfArg<String>? hostname;

  final TfArg<String>? path;

  final TfArg<String> service;

  final ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequest?
  originRequest;

  Map<String, Object?> encode() => {
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    'service': service.toTfJson(),
    if (originRequest != null) 'origin_request': originRequest!.encode(),
  };
}

/// Typed helper for the `config.ingress.origin_request` block of
/// `cloudflare_zero_trust_tunnel_cloudflared_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequest {
  const ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequest({
    this.caPool,
    this.connectTimeout,
    this.disableChunkedEncoding,
    this.http2Origin,
    this.httpHostHeader,
    this.keepAliveConnections,
    this.keepAliveTimeout,
    this.matchSnItoHost,
    this.noHappyEyeballs,
    this.noTlsVerify,
    this.originServerName,
    this.proxyType,
    this.tcpKeepAlive,
    this.tlsTimeout,
    this.access,
  });

  final TfArg<String>? caPool;

  final TfArg<num>? connectTimeout;

  final TfArg<bool>? disableChunkedEncoding;

  final TfArg<bool>? http2Origin;

  final TfArg<String>? httpHostHeader;

  final TfArg<num>? keepAliveConnections;

  final TfArg<num>? keepAliveTimeout;

  final TfArg<bool>? matchSnItoHost;

  final TfArg<bool>? noHappyEyeballs;

  final TfArg<bool>? noTlsVerify;

  final TfArg<String>? originServerName;

  final TfArg<String>? proxyType;

  final TfArg<num>? tcpKeepAlive;

  final TfArg<num>? tlsTimeout;

  final ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestAccess?
  access;

  Map<String, Object?> encode() => {
    if (caPool != null) 'ca_pool': caPool!.toTfJson(),
    if (connectTimeout != null) 'connect_timeout': connectTimeout!.toTfJson(),
    if (disableChunkedEncoding != null)
      'disable_chunked_encoding': disableChunkedEncoding!.toTfJson(),
    if (http2Origin != null) 'http2_origin': http2Origin!.toTfJson(),
    if (httpHostHeader != null) 'http_host_header': httpHostHeader!.toTfJson(),
    if (keepAliveConnections != null)
      'keep_alive_connections': keepAliveConnections!.toTfJson(),
    if (keepAliveTimeout != null)
      'keep_alive_timeout': keepAliveTimeout!.toTfJson(),
    if (matchSnItoHost != null) 'match_sn_ito_host': matchSnItoHost!.toTfJson(),
    if (noHappyEyeballs != null)
      'no_happy_eyeballs': noHappyEyeballs!.toTfJson(),
    if (noTlsVerify != null) 'no_tls_verify': noTlsVerify!.toTfJson(),
    if (originServerName != null)
      'origin_server_name': originServerName!.toTfJson(),
    if (proxyType != null) 'proxy_type': proxyType!.toTfJson(),
    if (tcpKeepAlive != null) 'tcp_keep_alive': tcpKeepAlive!.toTfJson(),
    if (tlsTimeout != null) 'tls_timeout': tlsTimeout!.toTfJson(),
    if (access != null) 'access': access!.encode(),
  };
}

/// Typed helper for the `config.ingress.origin_request.access` block of
/// `cloudflare_zero_trust_tunnel_cloudflared_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestAccess {
  const ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestAccess({
    required this.audTag,
    this.required,
    required this.teamName,
  });

  final TfArg<List<Object?>> audTag;

  final TfArg<bool>? required;

  final TfArg<String> teamName;

  Map<String, Object?> encode() => {
    'aud_tag': audTag.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'team_name': teamName.toTfJson(),
  };
}

/// Typed helper for the `config.origin_request` block of
/// `cloudflare_zero_trust_tunnel_cloudflared_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelCloudflaredConfigConfigOriginRequest {
  const ZeroTrustTunnelCloudflaredConfigConfigOriginRequest({
    this.caPool,
    this.connectTimeout,
    this.disableChunkedEncoding,
    this.http2Origin,
    this.httpHostHeader,
    this.keepAliveConnections,
    this.keepAliveTimeout,
    this.matchSnItoHost,
    this.noHappyEyeballs,
    this.noTlsVerify,
    this.originServerName,
    this.proxyType,
    this.tcpKeepAlive,
    this.tlsTimeout,
    this.access,
  });

  final TfArg<String>? caPool;

  final TfArg<num>? connectTimeout;

  final TfArg<bool>? disableChunkedEncoding;

  final TfArg<bool>? http2Origin;

  final TfArg<String>? httpHostHeader;

  final TfArg<num>? keepAliveConnections;

  final TfArg<num>? keepAliveTimeout;

  final TfArg<bool>? matchSnItoHost;

  final TfArg<bool>? noHappyEyeballs;

  final TfArg<bool>? noTlsVerify;

  final TfArg<String>? originServerName;

  final TfArg<String>? proxyType;

  final TfArg<num>? tcpKeepAlive;

  final TfArg<num>? tlsTimeout;

  final ZeroTrustTunnelCloudflaredConfigConfigOriginRequestAccess? access;

  Map<String, Object?> encode() => {
    if (caPool != null) 'ca_pool': caPool!.toTfJson(),
    if (connectTimeout != null) 'connect_timeout': connectTimeout!.toTfJson(),
    if (disableChunkedEncoding != null)
      'disable_chunked_encoding': disableChunkedEncoding!.toTfJson(),
    if (http2Origin != null) 'http2_origin': http2Origin!.toTfJson(),
    if (httpHostHeader != null) 'http_host_header': httpHostHeader!.toTfJson(),
    if (keepAliveConnections != null)
      'keep_alive_connections': keepAliveConnections!.toTfJson(),
    if (keepAliveTimeout != null)
      'keep_alive_timeout': keepAliveTimeout!.toTfJson(),
    if (matchSnItoHost != null) 'match_sn_ito_host': matchSnItoHost!.toTfJson(),
    if (noHappyEyeballs != null)
      'no_happy_eyeballs': noHappyEyeballs!.toTfJson(),
    if (noTlsVerify != null) 'no_tls_verify': noTlsVerify!.toTfJson(),
    if (originServerName != null)
      'origin_server_name': originServerName!.toTfJson(),
    if (proxyType != null) 'proxy_type': proxyType!.toTfJson(),
    if (tcpKeepAlive != null) 'tcp_keep_alive': tcpKeepAlive!.toTfJson(),
    if (tlsTimeout != null) 'tls_timeout': tlsTimeout!.toTfJson(),
    if (access != null) 'access': access!.encode(),
  };
}

/// Typed helper for the `config.origin_request.access` block of
/// `cloudflare_zero_trust_tunnel_cloudflared_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelCloudflaredConfigConfigOriginRequestAccess {
  const ZeroTrustTunnelCloudflaredConfigConfigOriginRequestAccess({
    required this.audTag,
    this.required,
    required this.teamName,
  });

  final TfArg<List<Object?>> audTag;

  final TfArg<bool>? required;

  final TfArg<String> teamName;

  Map<String, Object?> encode() => {
    'aud_tag': audTag.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'team_name': teamName.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_tunnel_cloudflared_config`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Connector: cloudflared Read` - `Cloudflare One Connector:
/// cloudflared Write` - `Cloudflare One Connectors Read` - `Cloudflare One
/// Connectors Write` - `Cloudflare Tunnel Read` - `Cloudflare Tunnel Write`
final class CloudflareZeroTrustTunnelCloudflaredConfig extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_tunnel_cloudflared_config';

  CloudflareZeroTrustTunnelCloudflaredConfig({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? source,
    required TfArg<String> tunnelId,
    ZeroTrustTunnelCloudflaredConfigConfig? config,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (source != null) 'source': source,
           'tunnel_id': tunnelId,
           if (config != null) 'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
