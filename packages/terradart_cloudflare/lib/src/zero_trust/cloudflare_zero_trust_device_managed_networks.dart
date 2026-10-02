// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_device_managed_networks`.
const Set<String> _cloudflareZeroTrustDeviceManagedNetworksSensitive =
    <String>{};

/// Zero Trust Device Managed Networks enum for `type`.
extension type const ZeroTrustDeviceManagedNetworksType._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDeviceManagedNetworksType.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDeviceManagedNetworksType.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDeviceManagedNetworksType.arg(TfArg<String> arg) : this._(arg);

  static const tls = ZeroTrustDeviceManagedNetworksType._(TfArgLiteral('tls'));

  static const List<ZeroTrustDeviceManagedNetworksType> values = [tls];
}

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

  @internal
  Map<String, Object?> encode() => {
    'sha256': ?sha256?.toTfJson(),
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

  CloudflareZeroTrustDeviceManagedNetworks(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> name,
    required ZeroTrustDeviceManagedNetworksType type,
    required ZeroTrustDeviceManagedNetworksConfig config,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'name': name,
           'type': type,
           'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceManagedNetworksSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDeviceManagedNetworks>`.
  RefTo<CloudflareZeroTrustDeviceManagedNetworks> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `network_id` attribute.
  TfRef<String> get networkId => TfRef.attribute<String>(this, 'network_id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
