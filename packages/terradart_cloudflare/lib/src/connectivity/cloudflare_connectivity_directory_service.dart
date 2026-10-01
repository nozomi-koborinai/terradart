// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_connectivity_directory_service`.
const Set<String> _cloudflareConnectivityDirectoryServiceSensitive = <String>{};

/// Connectivity Directory Service App enum for `app_protocol`.
extension type const ConnectivityDirectoryServiceAppProtocol._(TfArg<String> _)
    implements TfArg<String> {
  ConnectivityDirectoryServiceAppProtocol.variable(String name)
    : this._(TfArg.variable(name));
  ConnectivityDirectoryServiceAppProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const ConnectivityDirectoryServiceAppProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const postgresql = ConnectivityDirectoryServiceAppProtocol._(
    TfArgLiteral('postgresql'),
  );
  static const mysql = ConnectivityDirectoryServiceAppProtocol._(
    TfArgLiteral('mysql'),
  );

  static const List<ConnectivityDirectoryServiceAppProtocol> values = [
    postgresql,
    mysql,
  ];
}

/// Connectivity Directory Service enum for `type`.
extension type const ConnectivityDirectoryServiceType._(TfArg<String> _)
    implements TfArg<String> {
  ConnectivityDirectoryServiceType.variable(String name)
    : this._(TfArg.variable(name));
  ConnectivityDirectoryServiceType.expression(String template)
    : this._(TfArg.expression(template));
  const ConnectivityDirectoryServiceType.arg(TfArg<String> arg) : this._(arg);

  static const tcp = ConnectivityDirectoryServiceType._(TfArgLiteral('tcp'));
  static const http = ConnectivityDirectoryServiceType._(TfArgLiteral('http'));

  static const List<ConnectivityDirectoryServiceType> values = [tcp, http];
}

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

  final ConnectivityDirectoryServiceNetwork? network;

  final ConnectivityDirectoryServiceResolverNetwork? resolverNetwork;

  @internal
  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'ipv4': ?ipv4?.toTfJson(),
    'ipv6': ?ipv6?.toTfJson(),
    'network': ?network?.encode(),
    'resolver_network': ?resolverNetwork?.encode(),
  };
}

/// Typed helper for the `host.network` block of
/// `cloudflare_connectivity_directory_service` (derived from provider schema).
@immutable
final class ConnectivityDirectoryServiceNetwork {
  const ConnectivityDirectoryServiceNetwork({required this.tunnelId});

  final TfArg<String> tunnelId;

  @internal
  Map<String, Object?> encode() => {'tunnel_id': tunnelId.toTfJson()};
}

/// Typed helper for the `host.resolver_network` block of
/// `cloudflare_connectivity_directory_service` (derived from provider schema).
@immutable
final class ConnectivityDirectoryServiceResolverNetwork {
  const ConnectivityDirectoryServiceResolverNetwork({
    this.resolverIps,
    required this.tunnelId,
  });

  final TfArg<List<String>>? resolverIps;

  final TfArg<String> tunnelId;

  @internal
  Map<String, Object?> encode() => {
    'resolver_ips': ?resolverIps?.toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'cert_verification_mode': certVerificationMode.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_connectivity_directory_service`.
final class CloudflareConnectivityDirectoryService extends Resource {
  static const String tfType = 'cloudflare_connectivity_directory_service';

  CloudflareConnectivityDirectoryService(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    ConnectivityDirectoryServiceAppProtocol? appProtocol,
    TfArg<num>? httpPort,
    TfArg<num>? httpsPort,
    required TfArg<String> name,
    TfArg<num>? tcpPort,
    required ConnectivityDirectoryServiceType type,
    required ConnectivityDirectoryServiceHost host,
    ConnectivityDirectoryServiceTlsSettings? tlsSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'app_protocol': ?appProtocol,
           'http_port': ?httpPort,
           'https_port': ?httpsPort,
           'name': name,
           'tcp_port': ?tcpPort,
           'type': type,
           'host': TfArg.literal(host.encode()),
           if (tlsSettings != null)
             'tls_settings': TfArg.literal(tlsSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareConnectivityDirectoryServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareConnectivityDirectoryService>`.
  RefTo<CloudflareConnectivityDirectoryService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `app_protocol` attribute.
  TfRef<String> get appProtocol =>
      TfRef.attribute<String>(this, 'app_protocol');

  /// Reference to `http_port` attribute.
  TfRef<num> get httpPort => TfRef.attribute<num>(this, 'http_port');

  /// Reference to `https_port` attribute.
  TfRef<num> get httpsPort => TfRef.attribute<num>(this, 'https_port');

  /// Reference to `tcp_port` attribute.
  TfRef<num> get tcpPort => TfRef.attribute<num>(this, 'tcp_port');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
