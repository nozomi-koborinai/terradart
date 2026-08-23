// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_dns_settings`.
const Set<String> _cloudflareZoneDnsSettingsSensitive = <String>{};

/// Typed helper for the `internal_dns` block of
/// `cloudflare_zone_dns_settings` (derived from provider schema).
@immutable
final class ZoneDnsSettingsInternalDns {
  const ZoneDnsSettingsInternalDns({this.referenceZoneId});

  final TfArg<String>? referenceZoneId;

  Map<String, Object?> encode() => {
    if (referenceZoneId != null)
      'reference_zone_id': referenceZoneId!.toTfJson(),
  };
}

/// Typed helper for the `nameservers` block of
/// `cloudflare_zone_dns_settings` (derived from provider schema).
@immutable
final class ZoneDnsSettingsNameservers {
  const ZoneDnsSettingsNameservers({this.nsSet, this.type});

  final TfArg<num>? nsSet;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (nsSet != null) 'ns_set': nsSet!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
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
    if (expire != null) 'expire': expire!.toTfJson(),
    if (minTtl != null) 'min_ttl': minTtl!.toTfJson(),
    if (mname != null) 'mname': mname!.toTfJson(),
    if (refresh != null) 'refresh': refresh!.toTfJson(),
    if (retry != null) 'retry': retry!.toTfJson(),
    if (rname != null) 'rname': rname!.toTfJson(),
    if (ttl != null) 'ttl': ttl!.toTfJson(),
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
    required TfArg<String> zoneId,
    TfArg<String>? zoneMode,
    ZoneDnsSettingsInternalDns? internalDns,
    ZoneDnsSettingsNameservers? nameservers,
    ZoneDnsSettingsSoa? soa,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (flattenAllCnames != null) 'flatten_all_cnames': flattenAllCnames,
           if (foundationDns != null) 'foundation_dns': foundationDns,
           if (multiProvider != null) 'multi_provider': multiProvider,
           if (nsTtl != null) 'ns_ttl': nsTtl,
           if (secondaryOverrides != null)
             'secondary_overrides': secondaryOverrides,
           'zone_id': zoneId,
           if (zoneMode != null) 'zone_mode': zoneMode,
           if (internalDns != null)
             'internal_dns': TfArg.literal(internalDns.encode()),
           if (nameservers != null)
             'nameservers': TfArg.literal(nameservers.encode()),
           if (soa != null) 'soa': TfArg.literal(soa.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneDnsSettingsSensitive;
}
