// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_dns_settings`.
const Set<String> _cloudflareZoneDnsSettingsSensitive = <String>{};

/// Zone Dns Settings Zone enum for `zone_mode`.
enum ZoneDnsSettingsZoneMode implements TerraformEnum {
  standard('standard'),
  cdnOnly('cdn_only'),
  dnsOnly('dns_only');

  const ZoneDnsSettingsZoneMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `internal_dns` block of
/// `cloudflare_zone_dns_settings` (derived from provider schema).
@immutable
final class ZoneDnsSettingsInternalDns {
  const ZoneDnsSettingsInternalDns({this.referenceZoneId});

  final TfArg<String>? referenceZoneId;

  Map<String, Object?> encode() => {
    'reference_zone_id': ?referenceZoneId?.toTfJson(),
  };
}

/// Typed helper for the `nameservers` block of
/// `cloudflare_zone_dns_settings` (derived from provider schema).
@immutable
final class ZoneDnsSettingsNameservers {
  const ZoneDnsSettingsNameservers({this.nsSet, this.type});

  final TfArg<num>? nsSet;

  final TfArg<ZoneDnsSettingsNameserversType>? type;

  Map<String, Object?> encode() => {
    'ns_set': ?nsSet?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum ZoneDnsSettingsNameserversType implements TerraformEnum {
  cloudflareStandard('cloudflare.standard'),
  customAccount('custom.account'),
  customTenant('custom.tenant'),
  customZone('custom.zone');

  const ZoneDnsSettingsNameserversType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `soa` block of
/// `cloudflare_zone_dns_settings` (derived from provider schema).
@immutable
final class ZoneDnsSettingsSoa {
  const ZoneDnsSettingsSoa({
    this.expire,
    this.minTtl,
    this.mname,
    this.refresh,
    this.retry,
    this.rname,
    this.ttl,
  });

  final TfArg<num>? expire;

  final TfArg<num>? minTtl;

  final TfArg<String>? mname;

  final TfArg<num>? refresh;

  final TfArg<num>? retry;

  final TfArg<String>? rname;

  final TfArg<num>? ttl;

  Map<String, Object?> encode() => {
    'expire': ?expire?.toTfJson(),
    'min_ttl': ?minTtl?.toTfJson(),
    'mname': ?mname?.toTfJson(),
    'refresh': ?refresh?.toTfJson(),
    'retry': ?retry?.toTfJson(),
    'rname': ?rname?.toTfJson(),
    'ttl': ?ttl?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zone_dns_settings`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write` - `Zone DNS Settings Read` - `Zone DNS Settings
/// Write`
final class CloudflareZoneDnsSettings extends Resource {
  static const String tfType = 'cloudflare_zone_dns_settings';

  CloudflareZoneDnsSettings({
    required super.localName,
    TfArg<bool>? flattenAllCnames,
    TfArg<bool>? foundationDns,
    TfArg<bool>? multiProvider,
    TfArg<num>? nsTtl,
    TfArg<bool>? secondaryOverrides,
    required RefTo<CloudflareZone> zoneId,
    TfArg<ZoneDnsSettingsZoneMode>? zoneMode,
    ZoneDnsSettingsInternalDns? internalDns,
    ZoneDnsSettingsNameservers? nameservers,
    ZoneDnsSettingsSoa? soa,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'flatten_all_cnames': ?flattenAllCnames,
           'foundation_dns': ?foundationDns,
           'multi_provider': ?multiProvider,
           'ns_ttl': ?nsTtl,
           'secondary_overrides': ?secondaryOverrides,
           'zone_id': zoneId.encodeAs('id'),
           'zone_mode': ?zoneMode,
           if (internalDns != null)
             'internal_dns': TfArg.literal(internalDns.encode()),
           if (nameservers != null)
             'nameservers': TfArg.literal(nameservers.encode()),
           if (soa != null) 'soa': TfArg.literal(soa.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneDnsSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZoneDnsSettings>`.
  RefTo<CloudflareZoneDnsSettings> get ref => RefTo.of(this);

  /// Reference to `flatten_all_cnames` attribute.
  TfRef<bool> get flattenAllCnamesRef =>
      TfRef.attribute<bool>(this, 'flatten_all_cnames');

  /// Reference to `foundation_dns` attribute.
  TfRef<bool> get foundationDnsRef =>
      TfRef.attribute<bool>(this, 'foundation_dns');

  /// Reference to `multi_provider` attribute.
  TfRef<bool> get multiProviderRef =>
      TfRef.attribute<bool>(this, 'multi_provider');

  /// Reference to `ns_ttl` attribute.
  TfRef<num> get nsTtlRef => TfRef.attribute<num>(this, 'ns_ttl');

  /// Reference to `secondary_overrides` attribute.
  TfRef<bool> get secondaryOverridesRef =>
      TfRef.attribute<bool>(this, 'secondary_overrides');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');

  /// Reference to `zone_mode` attribute.
  TfRef<String> get zoneModeRef => TfRef.attribute<String>(this, 'zone_mode');
}
