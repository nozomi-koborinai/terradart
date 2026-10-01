// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflared_config`.
const Set<String> _cloudflareZeroTrustTunnelCloudflaredConfigSensitive =
    <String>{};

/// Zero Trust Tunnel Cloudflared Config enum for `source`.
extension type const ZeroTrustTunnelCloudflaredConfigSource._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustTunnelCloudflaredConfigSource.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustTunnelCloudflaredConfigSource.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustTunnelCloudflaredConfigSource.arg(TfArg<String> arg)
    : this._(arg);

  static const local = ZeroTrustTunnelCloudflaredConfigSource._(
    TfArgLiteral('local'),
  );
  static const cloudflare = ZeroTrustTunnelCloudflaredConfigSource._(
    TfArgLiteral('cloudflare'),
  );

  static const List<ZeroTrustTunnelCloudflaredConfigSource> values = [
    local,
    cloudflare,
  ];
}

/// Typed helper for the `config` block of
/// `cloudflare_zero_trust_tunnel_cloudflared_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelCloudflaredConfig {
  const ZeroTrustTunnelCloudflaredConfig({this.ingress, this.originRequest});

  final List<ZeroTrustTunnelCloudflaredConfigIngress>? ingress;

  final ZeroTrustTunnelCloudflaredConfigOriginRequest? originRequest;

  @internal
  Map<String, Object?> encode() => {
    if (ingress != null) 'ingress': [for (final e in ingress!) e.encode()],
    'origin_request': ?originRequest?.encode(),
  };
}

/// Typed helper for the `config.ingress` block of
/// `cloudflare_zero_trust_tunnel_cloudflared_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelCloudflaredConfigIngress {
  const ZeroTrustTunnelCloudflaredConfigIngress({
    this.hostname,
    this.path,
    required this.service,
    this.originRequest,
  });

  final TfArg<String>? hostname;

  final TfArg<String>? path;

  final TfArg<String> service;

  final ZeroTrustTunnelCloudflaredConfigOriginRequest? originRequest;

  @internal
  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'path': ?path?.toTfJson(),
    'service': service.toTfJson(),
    'origin_request': ?originRequest?.encode(),
  };
}

/// Typed helper for the `config.origin_request` block of
/// `cloudflare_zero_trust_tunnel_cloudflared_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustTunnelCloudflaredConfigOriginRequest {
  const ZeroTrustTunnelCloudflaredConfigOriginRequest({
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

  final ZeroTrustTunnelCloudflaredConfigAccess? access;

  @internal
  Map<String, Object?> encode() => {
    'ca_pool': ?caPool?.toTfJson(),
    'connect_timeout': ?connectTimeout?.toTfJson(),
    'disable_chunked_encoding': ?disableChunkedEncoding?.toTfJson(),
    'http2_origin': ?http2Origin?.toTfJson(),
    'http_host_header': ?httpHostHeader?.toTfJson(),
    'keep_alive_connections': ?keepAliveConnections?.toTfJson(),
    'keep_alive_timeout': ?keepAliveTimeout?.toTfJson(),
    'match_sn_ito_host': ?matchSnItoHost?.toTfJson(),
    'no_happy_eyeballs': ?noHappyEyeballs?.toTfJson(),
    'no_tls_verify': ?noTlsVerify?.toTfJson(),
    'origin_server_name': ?originServerName?.toTfJson(),
    'proxy_type': ?proxyType?.toTfJson(),
    'tcp_keep_alive': ?tcpKeepAlive?.toTfJson(),
    'tls_timeout': ?tlsTimeout?.toTfJson(),
    'access': ?access?.encode(),
  };
}

/// Typed helper for the `config.origin_request.access` block of
/// `cloudflare_zero_trust_tunnel_cloudflared_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustTunnelCloudflaredConfigAccess {
  const ZeroTrustTunnelCloudflaredConfigAccess({
    required this.audTag,
    this.required,
    required this.teamName,
  });

  final TfArg<List<String>> audTag;

  final TfArg<bool>? required;

  final TfArg<String> teamName;

  @internal
  Map<String, Object?> encode() => {
    'aud_tag': audTag.toTfJson(),
    'required': ?required?.toTfJson(),
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

  CloudflareZeroTrustTunnelCloudflaredConfig(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    ZeroTrustTunnelCloudflaredConfigSource? source,
    required TfArg<String> tunnelId,
    ZeroTrustTunnelCloudflaredConfig? config,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'source': ?source,
           'tunnel_id': tunnelId,
           if (config != null) 'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustTunnelCloudflaredConfig>`.
  RefTo<CloudflareZeroTrustTunnelCloudflaredConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `tunnel_id` attribute.
  TfRef<String> get tunnelId => TfRef.attribute<String>(this, 'tunnel_id');
}
