// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_device_default_profile`.
const Set<String> _cloudflareZeroTrustDeviceDefaultProfileSensitive =
    <String>{};

/// At most one of `exclude`, `include` on `cloudflare_zero_trust_device_default_profile`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.exclude(...)`.
sealed class ZeroTrustDeviceDefaultProfileSplitTunnel {
  const ZeroTrustDeviceDefaultProfileSplitTunnel();

  /// Sets `exclude`.
  const factory ZeroTrustDeviceDefaultProfileSplitTunnel.exclude(
    List<ZeroTrustDeviceDefaultProfileExclude> exclude,
  ) = ZeroTrustDeviceDefaultProfileSplitTunnelExclude;

  /// Sets `include`.
  const factory ZeroTrustDeviceDefaultProfileSplitTunnel.include(
    List<ZeroTrustDeviceDefaultProfileInclude> include,
  ) = ZeroTrustDeviceDefaultProfileSplitTunnelInclude;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ZeroTrustDeviceDefaultProfileSplitTunnel.exclude] choice: sets `exclude`.
final class ZeroTrustDeviceDefaultProfileSplitTunnelExclude
    extends ZeroTrustDeviceDefaultProfileSplitTunnel {
  const ZeroTrustDeviceDefaultProfileSplitTunnelExclude(this.exclude);

  final List<ZeroTrustDeviceDefaultProfileExclude> exclude;

  @internal
  @override
  String get blockKey => 'exclude';

  @internal
  @override
  Map<String, Object?> encode() => {
    'exclude': [for (final e in exclude) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'exclude': TfArg.literal([for (final e in exclude) e.encode()]),
  };
}

/// The [ZeroTrustDeviceDefaultProfileSplitTunnel.include] choice: sets `include`.
final class ZeroTrustDeviceDefaultProfileSplitTunnelInclude
    extends ZeroTrustDeviceDefaultProfileSplitTunnel {
  const ZeroTrustDeviceDefaultProfileSplitTunnelInclude(this.include);

  final List<ZeroTrustDeviceDefaultProfileInclude> include;

  @internal
  @override
  String get blockKey => 'include';

  @internal
  @override
  Map<String, Object?> encode() => {
    'include': [for (final e in include) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'include': TfArg.literal([for (final e in include) e.encode()]),
  };
}

/// Typed helper for the `dns_search_suffixes` block of
/// `cloudflare_zero_trust_device_default_profile` (derived from provider schema).
@immutable
final class ZeroTrustDeviceDefaultProfileDnsSearchSuffixes {
  const ZeroTrustDeviceDefaultProfileDnsSearchSuffixes({
    this.description,
    required this.suffix,
  });

  final TfArg<String>? description;

  final TfArg<String> suffix;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'suffix': suffix.toTfJson(),
  };
}

/// Typed helper for the `exclude` block of
/// `cloudflare_zero_trust_device_default_profile` (derived from provider schema).
@immutable
final class ZeroTrustDeviceDefaultProfileExclude {
  const ZeroTrustDeviceDefaultProfileExclude({
    this.address,
    this.description,
    this.host,
  });

  final TfArg<String>? address;

  final TfArg<String>? description;

  final TfArg<String>? host;

  @internal
  Map<String, Object?> encode() => {
    'address': ?address?.toTfJson(),
    'description': ?description?.toTfJson(),
    'host': ?host?.toTfJson(),
  };
}

/// Typed helper for the `global_acceleration` block of
/// `cloudflare_zero_trust_device_default_profile` (derived from provider schema).
@immutable
final class ZeroTrustDeviceDefaultProfileGlobalAcceleration {
  const ZeroTrustDeviceDefaultProfileGlobalAcceleration({
    required this.apiEndpoints,
    required this.enabled,
    required this.masqueEndpoints,
    required this.wireguardEndpoints,
  });

  final TfArg<List<String>> apiEndpoints;

  final TfArg<bool> enabled;

  final TfArg<List<String>> masqueEndpoints;

  final TfArg<List<String>> wireguardEndpoints;

  @internal
  Map<String, Object?> encode() => {
    'api_endpoints': apiEndpoints.toTfJson(),
    'enabled': enabled.toTfJson(),
    'masque_endpoints': masqueEndpoints.toTfJson(),
    'wireguard_endpoints': wireguardEndpoints.toTfJson(),
  };
}

/// Typed helper for the `include` block of
/// `cloudflare_zero_trust_device_default_profile` (derived from provider schema).
@immutable
final class ZeroTrustDeviceDefaultProfileInclude {
  const ZeroTrustDeviceDefaultProfileInclude({
    this.address,
    this.description,
    this.host,
  });

  final TfArg<String>? address;

  final TfArg<String>? description;

  final TfArg<String>? host;

  @internal
  Map<String, Object?> encode() => {
    'address': ?address?.toTfJson(),
    'description': ?description?.toTfJson(),
    'host': ?host?.toTfJson(),
  };
}

/// Typed helper for the `service_mode_v2` block of
/// `cloudflare_zero_trust_device_default_profile` (derived from provider schema).
@immutable
final class ZeroTrustDeviceDefaultProfileServiceModeV2 {
  const ZeroTrustDeviceDefaultProfileServiceModeV2({this.mode, this.port});

  final TfArg<String>? mode;

  final TfArg<num>? port;

  @internal
  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Typed helper for the `virtual_networks` block of
/// `cloudflare_zero_trust_device_default_profile` (derived from provider schema).
@immutable
final class ZeroTrustDeviceDefaultProfileVirtualNetworks {
  const ZeroTrustDeviceDefaultProfileVirtualNetworks({
    required this.allowed,
    required this.defaultCase,
  });

  final TfArg<List<String>> allowed;

  final TfArg<String> defaultCase;

  @internal
  Map<String, Object?> encode() => {
    'allowed': allowed.toTfJson(),
    'default': defaultCase.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_device_default_profile`.
///
/// Accepted Permissions
///
/// - `Zero Trust Write`
final class CloudflareZeroTrustDeviceDefaultProfile extends Resource {
  static const String tfType = 'cloudflare_zero_trust_device_default_profile';

  CloudflareZeroTrustDeviceDefaultProfile(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? allowModeSwitch,
    TfArg<bool>? allowUpdates,
    TfArg<bool>? allowedToLeave,
    TfArg<num>? autoConnect,
    TfArg<num>? captivePortal,
    TfArg<bool>? disableAutoFallback,
    TfArg<bool>? excludeOfficeIps,
    TfArg<num>? lanAllowMinutes,
    TfArg<num>? lanAllowSubnetSize,
    TfArg<bool>? registerInterfaceIpWithDns,
    TfArg<bool>? sccmVpnBoundarySupport,
    TfArg<String>? supportUrl,
    TfArg<bool>? switchLocked,
    TfArg<String>? tunnelProtocol,
    TfArg<bool>? uninstallProtection,
    List<ZeroTrustDeviceDefaultProfileDnsSearchSuffixes>? dnsSearchSuffixes,
    ZeroTrustDeviceDefaultProfileSplitTunnel? splitTunnel,
    ZeroTrustDeviceDefaultProfileGlobalAcceleration? globalAcceleration,
    ZeroTrustDeviceDefaultProfileServiceModeV2? serviceModeV2,
    ZeroTrustDeviceDefaultProfileVirtualNetworks? virtualNetworks,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'allow_mode_switch': ?allowModeSwitch,
           'allow_updates': ?allowUpdates,
           'allowed_to_leave': ?allowedToLeave,
           'auto_connect': ?autoConnect,
           'captive_portal': ?captivePortal,
           'disable_auto_fallback': ?disableAutoFallback,
           'exclude_office_ips': ?excludeOfficeIps,
           'lan_allow_minutes': ?lanAllowMinutes,
           'lan_allow_subnet_size': ?lanAllowSubnetSize,
           'register_interface_ip_with_dns': ?registerInterfaceIpWithDns,
           'sccm_vpn_boundary_support': ?sccmVpnBoundarySupport,
           'support_url': ?supportUrl,
           'switch_locked': ?switchLocked,
           'tunnel_protocol': ?tunnelProtocol,
           'uninstall_protection': ?uninstallProtection,
           if (dnsSearchSuffixes != null)
             'dns_search_suffixes': TfArg.literal([
               for (final e in dnsSearchSuffixes) e.encode(),
             ]),
           ...?splitTunnel?.argMap,
           if (globalAcceleration != null)
             'global_acceleration': TfArg.literal(globalAcceleration.encode()),
           if (serviceModeV2 != null)
             'service_mode_v2': TfArg.literal(serviceModeV2.encode()),
           if (virtualNetworks != null)
             'virtual_networks': TfArg.literal(virtualNetworks.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceDefaultProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDeviceDefaultProfile>`.
  RefTo<CloudflareZeroTrustDeviceDefaultProfile> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default` attribute.
  TfRef<bool> get defaultAttr => TfRef.attribute<bool>(this, 'default');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `gateway_unique_id` attribute.
  TfRef<String> get gatewayUniqueId =>
      TfRef.attribute<String>(this, 'gateway_unique_id');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `profile_type` attribute.
  TfRef<String> get profileType =>
      TfRef.attribute<String>(this, 'profile_type');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `allow_mode_switch` attribute.
  TfRef<bool> get allowModeSwitch =>
      TfRef.attribute<bool>(this, 'allow_mode_switch');

  /// Reference to `allow_updates` attribute.
  TfRef<bool> get allowUpdates => TfRef.attribute<bool>(this, 'allow_updates');

  /// Reference to `allowed_to_leave` attribute.
  TfRef<bool> get allowedToLeave =>
      TfRef.attribute<bool>(this, 'allowed_to_leave');

  /// Reference to `auto_connect` attribute.
  TfRef<num> get autoConnect => TfRef.attribute<num>(this, 'auto_connect');

  /// Reference to `captive_portal` attribute.
  TfRef<num> get captivePortal => TfRef.attribute<num>(this, 'captive_portal');

  /// Reference to `disable_auto_fallback` attribute.
  TfRef<bool> get disableAutoFallback =>
      TfRef.attribute<bool>(this, 'disable_auto_fallback');

  /// Reference to `exclude_office_ips` attribute.
  TfRef<bool> get excludeOfficeIps =>
      TfRef.attribute<bool>(this, 'exclude_office_ips');

  /// Reference to `lan_allow_minutes` attribute.
  TfRef<num> get lanAllowMinutes =>
      TfRef.attribute<num>(this, 'lan_allow_minutes');

  /// Reference to `lan_allow_subnet_size` attribute.
  TfRef<num> get lanAllowSubnetSize =>
      TfRef.attribute<num>(this, 'lan_allow_subnet_size');

  /// Reference to `register_interface_ip_with_dns` attribute.
  TfRef<bool> get registerInterfaceIpWithDns =>
      TfRef.attribute<bool>(this, 'register_interface_ip_with_dns');

  /// Reference to `sccm_vpn_boundary_support` attribute.
  TfRef<bool> get sccmVpnBoundarySupport =>
      TfRef.attribute<bool>(this, 'sccm_vpn_boundary_support');

  /// Reference to `support_url` attribute.
  TfRef<String> get supportUrl => TfRef.attribute<String>(this, 'support_url');

  /// Reference to `switch_locked` attribute.
  TfRef<bool> get switchLocked => TfRef.attribute<bool>(this, 'switch_locked');

  /// Reference to `tunnel_protocol` attribute.
  TfRef<String> get tunnelProtocol =>
      TfRef.attribute<String>(this, 'tunnel_protocol');

  /// Reference to `uninstall_protection` attribute.
  TfRef<bool> get uninstallProtection =>
      TfRef.attribute<bool>(this, 'uninstall_protection');
}
