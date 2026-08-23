// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_wan_ipsec_tunnel`.
const Set<String> _cloudflareMagicWanIpsecTunnelSensitive = <String>{'psk'};

/// Typed helper for the `bgp` block of
/// `cloudflare_magic_wan_ipsec_tunnel` (derived from provider schema).
@immutable
final class MagicWanIpsecTunnelBgp {
  const MagicWanIpsecTunnelBgp({
    required this.customerAsn,
    this.extraPrefixes,
    this.md5Key,
  });

  final TfArg<num> customerAsn;

  final TfArg<List<Object?>>? extraPrefixes;

  final TfArg<String>? md5Key;

  Map<String, Object?> encode() => {
    'customer_asn': customerAsn.toTfJson(),
    if (extraPrefixes != null) 'extra_prefixes': extraPrefixes!.toTfJson(),
    if (md5Key != null) 'md5_key': md5Key!.toTfJson(),
  };
}

/// Typed helper for the `custom_remote_identities` block of
/// `cloudflare_magic_wan_ipsec_tunnel` (derived from provider schema).
@immutable
final class MagicWanIpsecTunnelCustomRemoteIdentities {
  const MagicWanIpsecTunnelCustomRemoteIdentities({this.fqdnId});

  final TfArg<String>? fqdnId;

  Map<String, Object?> encode() => {
    if (fqdnId != null) 'fqdn_id': fqdnId!.toTfJson(),
  };
}

/// Typed helper for the `health_check` block of
/// `cloudflare_magic_wan_ipsec_tunnel` (derived from provider schema).
@immutable
final class MagicWanIpsecTunnelHealthCheck {
  const MagicWanIpsecTunnelHealthCheck({
    this.direction,
    this.enabled,
    this.rate,
    this.type,
    this.target,
  });

  final TfArg<String>? direction;

  final TfArg<bool>? enabled;

  final TfArg<String>? rate;

  final TfArg<String>? type;

  final MagicWanIpsecTunnelHealthCheckTarget? target;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (rate != null) 'rate': rate!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (target != null) 'target': target!.encode(),
  };
}

/// Typed helper for the `health_check.target` block of
/// `cloudflare_magic_wan_ipsec_tunnel` (derived from provider schema).
@immutable
final class MagicWanIpsecTunnelHealthCheckTarget {
  const MagicWanIpsecTunnelHealthCheckTarget({this.saved});

  final TfArg<String>? saved;

  Map<String, Object?> encode() => {
    if (saved != null) 'saved': saved!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_wan_ipsec_tunnel`.
final class CloudflareMagicWanIpsecTunnel extends Resource {
  static const String tfType = 'cloudflare_magic_wan_ipsec_tunnel';

  CloudflareMagicWanIpsecTunnel({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? automaticReturnRouting,
    required TfArg<String> cloudflareEndpoint,
    TfArg<String>? customerEndpoint,
    TfArg<String>? description,
    required TfArg<String> interfaceAddress,
    TfArg<String>? interfaceAddress6,
    required TfArg<String> name,
    TfArg<String>? psk,
    TfArg<bool>? replayProtection,
    MagicWanIpsecTunnelBgp? bgp,
    MagicWanIpsecTunnelCustomRemoteIdentities? customRemoteIdentities,
    MagicWanIpsecTunnelHealthCheck? healthCheck,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (automaticReturnRouting != null)
             'automatic_return_routing': automaticReturnRouting,
           'cloudflare_endpoint': cloudflareEndpoint,
           if (customerEndpoint != null) 'customer_endpoint': customerEndpoint,
           if (description != null) 'description': description,
           'interface_address': interfaceAddress,
           if (interfaceAddress6 != null)
             'interface_address6': interfaceAddress6,
           'name': name,
           if (psk != null) 'psk': psk,
           if (replayProtection != null) 'replay_protection': replayProtection,
           if (bgp != null) 'bgp': TfArg.literal(bgp.encode()),
           if (customRemoteIdentities != null)
             'custom_remote_identities': TfArg.literal(
               customRemoteIdentities.encode(),
             ),
           if (healthCheck != null)
             'health_check': TfArg.literal(healthCheck.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicWanIpsecTunnelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_null_cipher` attribute.
  TfRef<bool> get allowNullCipher =>
      TfRef.attribute<bool>(this, 'allow_null_cipher');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
