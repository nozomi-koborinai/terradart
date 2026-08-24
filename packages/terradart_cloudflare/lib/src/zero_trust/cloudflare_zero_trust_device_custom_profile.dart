// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_custom_profile`.
const Set<String> _cloudflareZeroTrustDeviceCustomProfileSensitive = <String>{};

/// Typed helper for the `dns_search_suffixes` block of
/// `cloudflare_zero_trust_device_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDeviceCustomProfileDnsSearchSuffixes {
  const ZeroTrustDeviceCustomProfileDnsSearchSuffixes({
    this.description,
    required this.suffix,
  });

  final TfArg<String>? description;

  final TfArg<String> suffix;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'suffix': suffix.toTfJson(),
  };
}

/// Typed helper for the `exclude` block of
/// `cloudflare_zero_trust_device_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDeviceCustomProfileExclude {
  const ZeroTrustDeviceCustomProfileExclude({
    this.address,
    this.description,
    this.host,
  });

  final TfArg<String>? address;

  final TfArg<String>? description;

  final TfArg<String>? host;

  Map<String, Object?> encode() => {
    if (address != null) 'address': address!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (host != null) 'host': host!.toTfJson(),
  };
}

/// Typed helper for the `global_acceleration` block of
/// `cloudflare_zero_trust_device_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDeviceCustomProfileGlobalAcceleration {
  const ZeroTrustDeviceCustomProfileGlobalAcceleration({
    required this.apiEndpoints,
    required this.enabled,
    required this.masqueEndpoints,
    required this.wireguardEndpoints,
  });

  final TfArg<List<Object?>> apiEndpoints;

  final TfArg<bool> enabled;

  final TfArg<List<Object?>> masqueEndpoints;

  final TfArg<List<Object?>> wireguardEndpoints;

  Map<String, Object?> encode() => {
    'api_endpoints': apiEndpoints.toTfJson(),
    'enabled': enabled.toTfJson(),
    'masque_endpoints': masqueEndpoints.toTfJson(),
    'wireguard_endpoints': wireguardEndpoints.toTfJson(),
  };
}

/// Typed helper for the `include` block of
/// `cloudflare_zero_trust_device_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDeviceCustomProfileInclude {
  const ZeroTrustDeviceCustomProfileInclude({
    this.address,
    this.description,
    this.host,
  });

  final TfArg<String>? address;

  final TfArg<String>? description;

  final TfArg<String>? host;

  Map<String, Object?> encode() => {
    if (address != null) 'address': address!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (host != null) 'host': host!.toTfJson(),
  };
}

/// Typed helper for the `service_mode_v2` block of
/// `cloudflare_zero_trust_device_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDeviceCustomProfileServiceModeV2 {
  const ZeroTrustDeviceCustomProfileServiceModeV2({this.mode, this.port});

  final TfArg<String>? mode;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
  };
}

/// Typed helper for the `virtual_networks` block of
/// `cloudflare_zero_trust_device_custom_profile` (derived from provider schema).
@immutable
final class ZeroTrustDeviceCustomProfileVirtualNetworks {
  const ZeroTrustDeviceCustomProfileVirtualNetworks({
    required this.allowed,
    required this.defaultCase,
  });

  final TfArg<List<Object?>> allowed;

  final TfArg<String> defaultCase;

  Map<String, Object?> encode() => {
    'allowed': allowed.toTfJson(),
    'default': defaultCase.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_device_custom_profile`.
///
/// Accepted Permissions
///
/// - `Zero Trust Write`
final class CloudflareZeroTrustDeviceCustomProfile extends Resource {
  static const String tfType = 'cloudflare_zero_trust_device_custom_profile';

  CloudflareZeroTrustDeviceCustomProfile({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? allowModeSwitch,
    TfArg<bool>? allowUpdates,
    TfArg<bool>? allowedToLeave,
    TfArg<num>? autoConnect,
    TfArg<num>? captivePortal,
    TfArg<String>? description,
    TfArg<bool>? disableAutoFallback,
    TfArg<bool>? enabled,
    TfArg<bool>? excludeOfficeIps,
    TfArg<num>? lanAllowMinutes,
    TfArg<num>? lanAllowSubnetSize,
    required TfArg<String> match,
    required TfArg<String> name,
    TfArg<num>? precedence,
    TfArg<bool>? registerInterfaceIpWithDns,
    TfArg<bool>? sccmVpnBoundarySupport,
    TfArg<String>? supportUrl,
    TfArg<bool>? switchLocked,
    TfArg<String>? tunnelProtocol,
    List<ZeroTrustDeviceCustomProfileDnsSearchSuffixes>? dnsSearchSuffixes,
    List<ZeroTrustDeviceCustomProfileExclude>? exclude,
    ZeroTrustDeviceCustomProfileGlobalAcceleration? globalAcceleration,
    List<ZeroTrustDeviceCustomProfileInclude>? include,
    ZeroTrustDeviceCustomProfileServiceModeV2? serviceModeV2,
    ZeroTrustDeviceCustomProfileVirtualNetworks? virtualNetworks,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (allowModeSwitch != null) 'allow_mode_switch': allowModeSwitch,
           if (allowUpdates != null) 'allow_updates': allowUpdates,
           if (allowedToLeave != null) 'allowed_to_leave': allowedToLeave,
           if (autoConnect != null) 'auto_connect': autoConnect,
           if (captivePortal != null) 'captive_portal': captivePortal,
           if (description != null) 'description': description,
           if (disableAutoFallback != null)
             'disable_auto_fallback': disableAutoFallback,
           if (enabled != null) 'enabled': enabled,
           if (excludeOfficeIps != null) 'exclude_office_ips': excludeOfficeIps,
           if (lanAllowMinutes != null) 'lan_allow_minutes': lanAllowMinutes,
           if (lanAllowSubnetSize != null)
             'lan_allow_subnet_size': lanAllowSubnetSize,
           'match': match,
           'name': name,
           if (precedence != null) 'precedence': precedence,
           if (registerInterfaceIpWithDns != null)
             'register_interface_ip_with_dns': registerInterfaceIpWithDns,
           if (sccmVpnBoundarySupport != null)
             'sccm_vpn_boundary_support': sccmVpnBoundarySupport,
           if (supportUrl != null) 'support_url': supportUrl,
           if (switchLocked != null) 'switch_locked': switchLocked,
           if (tunnelProtocol != null) 'tunnel_protocol': tunnelProtocol,
           if (dnsSearchSuffixes != null)
             'dns_search_suffixes': TfArg.literal([
               for (final e in dnsSearchSuffixes) e.encode(),
             ]),
           if (exclude != null)
             'exclude': TfArg.literal([for (final e in exclude) e.encode()]),
           if (globalAcceleration != null)
             'global_acceleration': TfArg.literal(globalAcceleration.encode()),
           if (include != null)
             'include': TfArg.literal([for (final e in include) e.encode()]),
           if (serviceModeV2 != null)
             'service_mode_v2': TfArg.literal(serviceModeV2.encode()),
           if (virtualNetworks != null)
             'virtual_networks': TfArg.literal(virtualNetworks.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceCustomProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default` attribute.
  TfRef<bool> get defaultCase => TfRef.attribute<bool>(this, 'default');

  /// Reference to `gateway_unique_id` attribute.
  TfRef<String> get gatewayUniqueId =>
      TfRef.attribute<String>(this, 'gateway_unique_id');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');
}
