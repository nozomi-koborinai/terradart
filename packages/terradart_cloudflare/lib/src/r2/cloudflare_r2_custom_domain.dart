// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_r2_custom_domain`.
const Set<String> _cloudflareR2CustomDomainSensitive = <String>{};

/// R2 Custom Domain enum for `jurisdiction`.
extension type const R2CustomDomainJurisdiction._(TfArg<String> _)
    implements TfArg<String> {
  R2CustomDomainJurisdiction.variable(String name)
    : this._(TfArg.variable(name));
  R2CustomDomainJurisdiction.expression(String template)
    : this._(TfArg.expression(template));
  const R2CustomDomainJurisdiction.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = R2CustomDomainJurisdiction._(
    TfArgLiteral('default'),
  );
  static const eu = R2CustomDomainJurisdiction._(TfArgLiteral('eu'));
  static const fedramp = R2CustomDomainJurisdiction._(TfArgLiteral('fedramp'));

  static const List<R2CustomDomainJurisdiction> values = [
    defaultCase,
    eu,
    fedramp,
  ];
}

/// R2 Custom Domain Min enum for `min_tls`.
extension type const R2CustomDomainMinTls._(TfArg<String> _)
    implements TfArg<String> {
  R2CustomDomainMinTls.variable(String name) : this._(TfArg.variable(name));
  R2CustomDomainMinTls.expression(String template)
    : this._(TfArg.expression(template));
  const R2CustomDomainMinTls.arg(TfArg<String> arg) : this._(arg);

  static const v1p0 = R2CustomDomainMinTls._(TfArgLiteral('1.0'));
  static const v1p1 = R2CustomDomainMinTls._(TfArgLiteral('1.1'));
  static const v1p2 = R2CustomDomainMinTls._(TfArgLiteral('1.2'));
  static const v1p3 = R2CustomDomainMinTls._(TfArgLiteral('1.3'));

  static const List<R2CustomDomainMinTls> values = [v1p0, v1p1, v1p2, v1p3];
}

/// Factory wrapper for `cloudflare_r2_custom_domain`.
///
/// Accepted Permissions
///
/// - `Workers R2 Storage Read` - `Workers R2 Storage Write`
final class CloudflareR2CustomDomain extends Resource {
  static const String tfType = 'cloudflare_r2_custom_domain';

  CloudflareR2CustomDomain(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    TfArg<List<String>>? ciphers,
    required TfArg<String> domain,
    required TfArg<bool> enabled,
    R2CustomDomainJurisdiction? jurisdiction,
    R2CustomDomainMinTls? minTls,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'bucket_name': bucketName,
           'ciphers': ?ciphers,
           'domain': domain,
           'enabled': enabled,
           'jurisdiction': ?jurisdiction,
           'min_tls': ?minTls,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2CustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareR2CustomDomain>`.
  RefTo<CloudflareR2CustomDomain> get ref => RefTo.of(this);

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `ciphers` attribute.
  TfRef<List<String>> get ciphers =>
      TfRef.attribute<List<String>>(this, 'ciphers');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');

  /// Reference to `min_tls` attribute.
  TfRef<String> get minTls => TfRef.attribute<String>(this, 'min_tls');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
