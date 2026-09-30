// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_wan_gre_tunnel`.
const Set<String> _cloudflareMagicWanGreTunnelSensitive = <String>{};

/// Typed helper for the `bgp` block of
/// `cloudflare_magic_wan_gre_tunnel` (derived from provider schema).
@immutable
final class MagicWanGreTunnelBgp {
  const MagicWanGreTunnelBgp({
    required this.customerAsn,
    this.exportFilterId,
    this.extraPrefixes,
    this.importFilterId,
    this.md5Key,
  });

  final TfArg<num> customerAsn;

  final TfArg<String>? exportFilterId;

  final TfArg<List<String>>? extraPrefixes;

  final TfArg<String>? importFilterId;

  final TfArg<String>? md5Key;

  Map<String, Object?> encode() => {
    'customer_asn': customerAsn.toTfJson(),
    'export_filter_id': ?exportFilterId?.toTfJson(),
    'extra_prefixes': ?extraPrefixes?.toTfJson(),
    'import_filter_id': ?importFilterId?.toTfJson(),
    'md5_key': ?md5Key?.toTfJson(),
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

  final TfArg<MagicWanGreTunnelDirection>? direction;

  final TfArg<bool>? enabled;

  final TfArg<MagicWanGreTunnelRate>? rate;

  final TfArg<MagicWanGreTunnelType>? type;

  final MagicWanGreTunnelTarget? target;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'rate': ?rate?.toTfJson(),
    'type': ?type?.toTfJson(),
    'target': ?target?.encode(),
  };
}

/// `direction` — derived from the provider schema description.
enum MagicWanGreTunnelDirection implements TerraformEnum {
  unidirectional('unidirectional'),
  bidirectional('bidirectional');

  const MagicWanGreTunnelDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `rate` — derived from the provider schema description.
enum MagicWanGreTunnelRate implements TerraformEnum {
  low('low'),
  mid('mid'),
  high('high');

  const MagicWanGreTunnelRate(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum MagicWanGreTunnelType implements TerraformEnum {
  reply('reply'),
  request('request');

  const MagicWanGreTunnelType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `health_check.target` block of
/// `cloudflare_magic_wan_gre_tunnel` (derived from provider schema).
@immutable
final class MagicWanGreTunnelTarget {
  const MagicWanGreTunnelTarget({this.saved});

  final TfArg<String>? saved;

  Map<String, Object?> encode() => {'saved': ?saved?.toTfJson()};
}

/// Factory wrapper for `cloudflare_magic_wan_gre_tunnel`.
final class CloudflareMagicWanGreTunnel extends Resource {
  static const String tfType = 'cloudflare_magic_wan_gre_tunnel';

  CloudflareMagicWanGreTunnel({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'automatic_return_routing': ?automaticReturnRouting,
           'cloudflare_gre_endpoint': cloudflareGreEndpoint,
           'customer_gre_endpoint': customerGreEndpoint,
           'description': ?description,
           'interface_address': interfaceAddress,
           'interface_address6': ?interfaceAddress6,
           'mtu': ?mtu,
           'name': name,
           'ttl': ?ttl,
           if (bgp != null) 'bgp': TfArg.literal(bgp.encode()),
           if (healthCheck != null)
             'health_check': TfArg.literal(healthCheck.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicWanGreTunnelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMagicWanGreTunnel>`.
  RefTo<CloudflareMagicWanGreTunnel> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `automatic_return_routing` attribute.
  TfRef<bool> get automaticReturnRoutingRef =>
      TfRef.attribute<bool>(this, 'automatic_return_routing');

  /// Reference to `cloudflare_gre_endpoint` attribute.
  TfRef<String> get cloudflareGreEndpointRef =>
      TfRef.attribute<String>(this, 'cloudflare_gre_endpoint');

  /// Reference to `customer_gre_endpoint` attribute.
  TfRef<String> get customerGreEndpointRef =>
      TfRef.attribute<String>(this, 'customer_gre_endpoint');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `interface_address` attribute.
  TfRef<String> get interfaceAddressRef =>
      TfRef.attribute<String>(this, 'interface_address');

  /// Reference to `interface_address6` attribute.
  TfRef<String> get interfaceAddress6Ref =>
      TfRef.attribute<String>(this, 'interface_address6');

  /// Reference to `mtu` attribute.
  TfRef<num> get mtuRef => TfRef.attribute<num>(this, 'mtu');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttlRef => TfRef.attribute<num>(this, 'ttl');
}
