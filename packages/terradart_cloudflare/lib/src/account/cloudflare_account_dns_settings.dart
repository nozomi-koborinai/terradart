// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_dns_settings`.
const Set<String> _cloudflareAccountDnsSettingsSensitive = <String>{};

/// Typed helper for the `zone_defaults` block of
/// `cloudflare_account_dns_settings` (derived from provider schema).
@immutable
final class AccountDnsSettingsZoneDefaults {
  const AccountDnsSettingsZoneDefaults({
    this.flattenAllCnames,
    this.foundationDns,
    this.multiProvider,
    this.nsTtl,
    this.secondaryOverrides,
    this.zoneMode,
    this.internalDns,
    this.nameservers,
    this.soa,
  });

  final TfArg<bool>? flattenAllCnames;

  final TfArg<bool>? foundationDns;

  final TfArg<bool>? multiProvider;

  final TfArg<num>? nsTtl;

  final TfArg<bool>? secondaryOverrides;

  final TfArg<String>? zoneMode;

  final AccountDnsSettingsZoneDefaultsInternalDns? internalDns;

  final AccountDnsSettingsZoneDefaultsNameservers? nameservers;

  final AccountDnsSettingsZoneDefaultsSoa? soa;

  Map<String, Object?> encode() => {
    if (flattenAllCnames != null)
      'flatten_all_cnames': flattenAllCnames!.toTfJson(),
    if (foundationDns != null) 'foundation_dns': foundationDns!.toTfJson(),
    if (multiProvider != null) 'multi_provider': multiProvider!.toTfJson(),
    if (nsTtl != null) 'ns_ttl': nsTtl!.toTfJson(),
    if (secondaryOverrides != null)
      'secondary_overrides': secondaryOverrides!.toTfJson(),
    if (zoneMode != null) 'zone_mode': zoneMode!.toTfJson(),
    if (internalDns != null) 'internal_dns': internalDns!.encode(),
    if (nameservers != null) 'nameservers': nameservers!.encode(),
    if (soa != null) 'soa': soa!.encode(),
  };
}

/// Typed helper for the `zone_defaults.internal_dns` block of
/// `cloudflare_account_dns_settings` (derived from provider schema).
@immutable
final class AccountDnsSettingsZoneDefaultsInternalDns {
  const AccountDnsSettingsZoneDefaultsInternalDns({this.referenceZoneId});

  final TfArg<String>? referenceZoneId;

  Map<String, Object?> encode() => {
    if (referenceZoneId != null)
      'reference_zone_id': referenceZoneId!.toTfJson(),
  };
}

/// Typed helper for the `zone_defaults.nameservers` block of
/// `cloudflare_account_dns_settings` (derived from provider schema).
@immutable
final class AccountDnsSettingsZoneDefaultsNameservers {
  const AccountDnsSettingsZoneDefaultsNameservers({this.type});

  final TfArg<String>? type;

  Map<String, Object?> encode() => {if (type != null) 'type': type!.toTfJson()};
}

/// Typed helper for the `zone_defaults.soa` block of
/// `cloudflare_account_dns_settings` (derived from provider schema).
@immutable
final class AccountDnsSettingsZoneDefaultsSoa {
  const AccountDnsSettingsZoneDefaultsSoa({
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

/// Factory wrapper for `cloudflare_account_dns_settings`.
///
/// Accepted Permissions
///
/// - `Account DNS Settings Read` - `Account DNS Settings Write`
final class CloudflareAccountDnsSettings extends Resource {
  static const String tfType = 'cloudflare_account_dns_settings';

  CloudflareAccountDnsSettings({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? enforceDnsOnly,
    AccountDnsSettingsZoneDefaults? zoneDefaults,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (enforceDnsOnly != null) 'enforce_dns_only': enforceDnsOnly,
           if (zoneDefaults != null)
             'zone_defaults': TfArg.literal(zoneDefaults.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountDnsSettingsSensitive;
}
