// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_managed_networks`.
const Set<String> _cloudflareZeroTrustDeviceManagedNetworksSensitive =
    <String>{};

/// Typed helper for the `config` block of
/// `cloudflare_zero_trust_device_managed_networks` (derived from provider schema).
@immutable
final class ZeroTrustDeviceManagedNetworksConfig {
  const ZeroTrustDeviceManagedNetworksConfig({
    this.sha256,
    required this.tlsSockaddr,
  });

  final TfArg<String>? sha256;

  final TfArg<String> tlsSockaddr;

  Map<String, Object?> encode() => {
    if (sha256 != null) 'sha256': sha256!.toTfJson(),
    'tls_sockaddr': tlsSockaddr.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_device_managed_networks`.
///
/// Accepted Permissions
///
/// - `Zero Trust Write`
final class CloudflareZeroTrustDeviceManagedNetworks extends Resource {
  static const String tfType = 'cloudflare_zero_trust_device_managed_networks';

  CloudflareZeroTrustDeviceManagedNetworks({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> name,
    required TfArg<String> type,
    required ZeroTrustDeviceManagedNetworksConfig config,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'name': name,
           'type': type,
           'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceManagedNetworksSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `network_id` attribute.
  TfRef<String> get networkId => TfRef.attribute<String>(this, 'network_id');
}
