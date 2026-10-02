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

  final AccountDnsSettingsZoneMode? zoneMode;

  final AccountDnsSettingsInternalDns? internalDns;

  final AccountDnsSettingsNameservers? nameservers;

  final AccountDnsSettingsSoa? soa;

  @internal
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
extension type const AccountDnsSettingsZoneMode._(TfArg<String> _)
    implements TfArg<String> {
  AccountDnsSettingsZoneMode.variable(String name)
    : this._(TfArg.variable(name));
  AccountDnsSettingsZoneMode.expression(String template)
    : this._(TfArg.expression(template));
  const AccountDnsSettingsZoneMode.arg(TfArg<String> arg) : this._(arg);

  static const standard = AccountDnsSettingsZoneMode._(
    TfArgLiteral('standard'),
  );
  static const cdnOnly = AccountDnsSettingsZoneMode._(TfArgLiteral('cdn_only'));
  static const dnsOnly = AccountDnsSettingsZoneMode._(TfArgLiteral('dns_only'));

  static const List<AccountDnsSettingsZoneMode> values = [
    standard,
    cdnOnly,
    dnsOnly,
  ];
}

/// Typed helper for the `zone_defaults.internal_dns` block of
/// `cloudflare_account_dns_settings` (derived from provider schema).
@immutable
final class AccountDnsSettingsInternalDns {
  const AccountDnsSettingsInternalDns({this.referenceZoneId});

  final TfArg<String>? referenceZoneId;

  @internal
  Map<String, Object?> encode() => {
    'reference_zone_id': ?referenceZoneId?.toTfJson(),
  };
}

/// Typed helper for the `zone_defaults.nameservers` block of
/// `cloudflare_account_dns_settings` (derived from provider schema).
@immutable
final class AccountDnsSettingsNameservers {
  const AccountDnsSettingsNameservers({this.type});

  final AccountDnsSettingsType? type;

  @internal
  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const AccountDnsSettingsType._(TfArg<String> _)
    implements TfArg<String> {
  AccountDnsSettingsType.variable(String name) : this._(TfArg.variable(name));
  AccountDnsSettingsType.expression(String template)
    : this._(TfArg.expression(template));
  const AccountDnsSettingsType.arg(TfArg<String> arg) : this._(arg);

  static const cloudflareStandard = AccountDnsSettingsType._(
    TfArgLiteral('cloudflare.standard'),
  );
  static const cloudflareStandardRandom = AccountDnsSettingsType._(
    TfArgLiteral('cloudflare.standard.random'),
  );
  static const customAccount = AccountDnsSettingsType._(
    TfArgLiteral('custom.account'),
  );
  static const customTenant = AccountDnsSettingsType._(
    TfArgLiteral('custom.tenant'),
  );

  static const List<AccountDnsSettingsType> values = [
    cloudflareStandard,
    cloudflareStandardRandom,
    customAccount,
    customTenant,
  ];
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

  @internal
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

  CloudflareAccountDnsSettings(
    super.localName, {
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
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `enforce_dns_only` attribute.
  TfRef<bool> get enforceDnsOnly =>
      TfRef.attribute<bool>(this, 'enforce_dns_only');
}
