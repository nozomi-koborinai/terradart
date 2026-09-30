// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_wan_ipsec_tunnel`.
const Set<String> _cloudflareMagicWanIpsecTunnelSensitive = <String>{'psk'};

/// Typed helper for the `bgp` block of
/// `cloudflare_magic_wan_ipsec_tunnel` (derived from provider schema).
@immutable
final class MagicWanIpsecTunnelBgp {
  const MagicWanIpsecTunnelBgp({
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

/// Typed helper for the `custom_remote_identities` block of
/// `cloudflare_magic_wan_ipsec_tunnel` (derived from provider schema).
@immutable
final class MagicWanIpsecTunnelCustomRemoteIdentities {
  const MagicWanIpsecTunnelCustomRemoteIdentities({this.fqdnId});

  final TfArg<String>? fqdnId;

  Map<String, Object?> encode() => {'fqdn_id': ?fqdnId?.toTfJson()};
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

  final TfArg<MagicWanIpsecTunnelDirection>? direction;

  final TfArg<bool>? enabled;

  final TfArg<MagicWanIpsecTunnelRate>? rate;

  final TfArg<MagicWanIpsecTunnelType>? type;

  final MagicWanIpsecTunnelTarget? target;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'rate': ?rate?.toTfJson(),
    'type': ?type?.toTfJson(),
    'target': ?target?.encode(),
  };
}

/// `direction` — derived from the provider schema description.
enum MagicWanIpsecTunnelDirection implements TerraformEnum {
  unidirectional('unidirectional'),
  bidirectional('bidirectional');

  const MagicWanIpsecTunnelDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `rate` — derived from the provider schema description.
enum MagicWanIpsecTunnelRate implements TerraformEnum {
  low('low'),
  mid('mid'),
  high('high');

  const MagicWanIpsecTunnelRate(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum MagicWanIpsecTunnelType implements TerraformEnum {
  reply('reply'),
  request('request');

  const MagicWanIpsecTunnelType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `health_check.target` block of
/// `cloudflare_magic_wan_ipsec_tunnel` (derived from provider schema).
@immutable
final class MagicWanIpsecTunnelTarget {
  const MagicWanIpsecTunnelTarget({this.saved});

  final TfArg<String>? saved;

  Map<String, Object?> encode() => {'saved': ?saved?.toTfJson()};
}

/// Factory wrapper for `cloudflare_magic_wan_ipsec_tunnel`.
final class CloudflareMagicWanIpsecTunnel extends Resource {
  static const String tfType = 'cloudflare_magic_wan_ipsec_tunnel';

  CloudflareMagicWanIpsecTunnel({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'automatic_return_routing': ?automaticReturnRouting,
           'cloudflare_endpoint': cloudflareEndpoint,
           'customer_endpoint': ?customerEndpoint,
           'description': ?description,
           'interface_address': interfaceAddress,
           'interface_address6': ?interfaceAddress6,
           'name': name,
           'psk': ?psk,
           'replay_protection': ?replayProtection,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMagicWanIpsecTunnel>`.
  RefTo<CloudflareMagicWanIpsecTunnel> get ref => RefTo.of(this);

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `automatic_return_routing` attribute.
  TfRef<bool> get automaticReturnRoutingRef =>
      TfRef.attribute<bool>(this, 'automatic_return_routing');

  /// Reference to `cloudflare_endpoint` attribute.
  TfRef<String> get cloudflareEndpointRef =>
      TfRef.attribute<String>(this, 'cloudflare_endpoint');

  /// Reference to `customer_endpoint` attribute.
  TfRef<String> get customerEndpointRef =>
      TfRef.attribute<String>(this, 'customer_endpoint');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `interface_address` attribute.
  TfRef<String> get interfaceAddressRef =>
      TfRef.attribute<String>(this, 'interface_address');

  /// Reference to `interface_address6` attribute.
  TfRef<String> get interfaceAddress6Ref =>
      TfRef.attribute<String>(this, 'interface_address6');

  /// Reference to `psk` attribute.
  TfRef<String> get pskRef => TfRef.attribute<String>(this, 'psk');

  /// Reference to `replay_protection` attribute.
  TfRef<bool> get replayProtectionRef =>
      TfRef.attribute<bool>(this, 'replay_protection');
}
