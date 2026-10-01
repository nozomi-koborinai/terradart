// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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

  final TfArg<AccountDnsSettingsZoneMode>? zoneMode;

  final AccountDnsSettingsInternalDns? internalDns;

  final AccountDnsSettingsNameservers? nameservers;

  final AccountDnsSettingsSoa? soa;

  Map<String, Object?> encode() => {
    'flatten_all_cnames': ?flattenAllCnames?.toTfJson(),
    'foundation_dns': ?foundationDns?.toTfJson(),
    'multi_provider': ?multiProvider?.toTfJson(),
    'ns_ttl': ?nsTtl?.toTfJson(),
    'secondary_overrides': ?secondaryOverrides?.toTfJson(),
    'zone_mode': ?zoneMode?.toTfJson(),
    'internal_dns': ?internalDns?.encode(),
    'nameservers': ?nameservers?.encode(),
    'soa': ?soa?.encode(),
  };
}

/// `zone_mode` — derived from the provider schema description.
enum AccountDnsSettingsZoneMode implements TerraformEnum {
  standard('standard'),
  cdnOnly('cdn_only'),
  dnsOnly('dns_only');

  const AccountDnsSettingsZoneMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `zone_defaults.internal_dns` block of
/// `cloudflare_account_dns_settings` (derived from provider schema).
@immutable
final class AccountDnsSettingsInternalDns {
  const AccountDnsSettingsInternalDns({this.referenceZoneId});

  final TfArg<String>? referenceZoneId;

  Map<String, Object?> encode() => {
    'reference_zone_id': ?referenceZoneId?.toTfJson(),
  };
}

/// Typed helper for the `zone_defaults.nameservers` block of
/// `cloudflare_account_dns_settings` (derived from provider schema).
@immutable
final class AccountDnsSettingsNameservers {
  const AccountDnsSettingsNameservers({this.type});

  final TfArg<AccountDnsSettingsType>? type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum AccountDnsSettingsType implements TerraformEnum {
  cloudflareStandard('cloudflare.standard'),
  cloudflareStandardRandom('cloudflare.standard.random'),
  customAccount('custom.account'),
  customTenant('custom.tenant');

  const AccountDnsSettingsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `zone_defaults.soa` block of
/// `cloudflare_account_dns_settings` (derived from provider schema).
@immutable
final class AccountDnsSettingsSoa {
  const AccountDnsSettingsSoa({
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

/// Factory wrapper for `cloudflare_account_dns_settings`.
///
/// Accepted Permissions
///
/// - `Account DNS Settings Read` - `Account DNS Settings Write`
final class CloudflareAccountDnsSettings extends Resource {
  static const String tfType = 'cloudflare_account_dns_settings';

  CloudflareAccountDnsSettings({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? enforceDnsOnly,
    AccountDnsSettingsZoneDefaults? zoneDefaults,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'enforce_dns_only': ?enforceDnsOnly,
           if (zoneDefaults != null)
             'zone_defaults': TfArg.literal(zoneDefaults.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountDnsSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAccountDnsSettings>`.
  RefTo<CloudflareAccountDnsSettings> get ref => RefTo.of(this);

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `enforce_dns_only` attribute.
  TfRef<bool> get enforceDnsOnlyRef =>
      TfRef.attribute<bool>(this, 'enforce_dns_only');
}
