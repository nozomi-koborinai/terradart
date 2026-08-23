// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_connectivity_directory_service`.
const Set<String> _cloudflareConnectivityDirectoryServiceSensitive = <String>{};

/// Typed helper for the `host` block of
/// `cloudflare_connectivity_directory_service` (derived from provider schema).
@immutable
final class ConnectivityDirectoryServiceHost {
  const ConnectivityDirectoryServiceHost({
    this.hostname,
    this.ipv4,
    this.ipv6,
    this.network,
    this.resolverNetwork,
  });

  final TfArg<String>? hostname;

  final TfArg<String>? ipv4;

  final TfArg<String>? ipv6;

  final ConnectivityDirectoryServiceHostNetwork? network;

  final ConnectivityDirectoryServiceHostResolverNetwork? resolverNetwork;

  Map<String, Object?> encode() => {
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (ipv4 != null) 'ipv4': ipv4!.toTfJson(),
    if (ipv6 != null) 'ipv6': ipv6!.toTfJson(),
    if (network != null) 'network': network!.encode(),
    if (resolverNetwork != null) 'resolver_network': resolverNetwork!.encode(),
  };
}

/// Typed helper for the `host.network` block of
/// `cloudflare_connectivity_directory_service` (derived from provider schema).
@immutable
final class ConnectivityDirectoryServiceHostNetwork {
  const ConnectivityDirectoryServiceHostNetwork({required this.tunnelId});

  final TfArg<String> tunnelId;

  Map<String, Object?> encode() => {'tunnel_id': tunnelId.toTfJson()};
}

/// Typed helper for the `host.resolver_network` block of
/// `cloudflare_connectivity_directory_service` (derived from provider schema).
@immutable
final class ConnectivityDirectoryServiceHostResolverNetwork {
  const ConnectivityDirectoryServiceHostResolverNetwork({
    this.resolverIps,
    required this.tunnelId,
  });

  final TfArg<List<Object?>>? resolverIps;

  final TfArg<String> tunnelId;

  Map<String, Object?> encode() => {
    if (resolverIps != null) 'resolver_ips': resolverIps!.toTfJson(),
    'tunnel_id': tunnelId.toTfJson(),
  };
}

/// Typed helper for the `tls_settings` block of
/// `cloudflare_connectivity_directory_service` (derived from provider schema).
@immutable
final class ConnectivityDirectoryServiceTlsSettings {
  const ConnectivityDirectoryServiceTlsSettings({
    required this.certVerificationMode,
  });

  final TfArg<String> certVerificationMode;

  Map<String, Object?> encode() => {
    'cert_verification_mode': certVerificationMode.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_connectivity_directory_service`.
final class CloudflareConnectivityDirectoryService extends Resource {
  static const String tfType = 'cloudflare_connectivity_directory_service';

  CloudflareConnectivityDirectoryService({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? appProtocol,
    TfArg<num>? httpPort,
    TfArg<num>? httpsPort,
    required TfArg<String> name,
    TfArg<num>? tcpPort,
    required TfArg<String> type,
    required ConnectivityDirectoryServiceHost host,
    ConnectivityDirectoryServiceTlsSettings? tlsSettings,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (appProtocol != null) 'app_protocol': appProtocol,
           if (httpPort != null) 'http_port': httpPort,
           if (httpsPort != null) 'https_port': httpsPort,
           'name': name,
           if (tcpPort != null) 'tcp_port': tcpPort,
           'type': type,
           'host': TfArg.literal(host.encode()),
           if (tlsSettings != null)
             'tls_settings': TfArg.literal(tlsSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareConnectivityDirectoryServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
