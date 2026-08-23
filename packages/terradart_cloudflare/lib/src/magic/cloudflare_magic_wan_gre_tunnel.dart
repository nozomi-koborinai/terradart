// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_wan_gre_tunnel`.
const Set<String> _cloudflareMagicWanGreTunnelSensitive = <String>{};

/// Typed helper for the `bgp` block of
/// `cloudflare_magic_wan_gre_tunnel` (derived from provider schema).
@immutable
final class MagicWanGreTunnelBgp {
  const MagicWanGreTunnelBgp({
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

/// Typed helper for the `health_check` block of
/// `cloudflare_magic_wan_gre_tunnel` (derived from provider schema).
@immutable
final class MagicWanGreTunnelHealthCheck {
  const MagicWanGreTunnelHealthCheck({
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

  final MagicWanGreTunnelHealthCheckTarget? target;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (rate != null) 'rate': rate!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (target != null) 'target': target!.encode(),
  };
}

/// Typed helper for the `health_check.target` block of
/// `cloudflare_magic_wan_gre_tunnel` (derived from provider schema).
@immutable
final class MagicWanGreTunnelHealthCheckTarget {
  const MagicWanGreTunnelHealthCheckTarget({this.saved});

  final TfArg<String>? saved;

  Map<String, Object?> encode() => {
    if (saved != null) 'saved': saved!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_wan_gre_tunnel`.
final class CloudflareMagicWanGreTunnel extends Resource {
  static const String tfType = 'cloudflare_magic_wan_gre_tunnel';

  CloudflareMagicWanGreTunnel({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? automaticReturnRouting,
    required TfArg<String> cloudflareGreEndpoint,
    required TfArg<String> customerGreEndpoint,
    TfArg<String>? description,
    required TfArg<String> interfaceAddress,
    TfArg<String>? interfaceAddress6,
    TfArg<num>? mtu,
    required TfArg<String> name,
    TfArg<num>? ttl,
    MagicWanGreTunnelBgp? bgp,
    MagicWanGreTunnelHealthCheck? healthCheck,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (automaticReturnRouting != null)
             'automatic_return_routing': automaticReturnRouting,
           'cloudflare_gre_endpoint': cloudflareGreEndpoint,
           'customer_gre_endpoint': customerGreEndpoint,
           if (description != null) 'description': description,
           'interface_address': interfaceAddress,
           if (interfaceAddress6 != null)
             'interface_address6': interfaceAddress6,
           if (mtu != null) 'mtu': mtu,
           'name': name,
           if (ttl != null) 'ttl': ttl,
           if (bgp != null) 'bgp': TfArg.literal(bgp.encode()),
           if (healthCheck != null)
             'health_check': TfArg.literal(healthCheck.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicWanGreTunnelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
