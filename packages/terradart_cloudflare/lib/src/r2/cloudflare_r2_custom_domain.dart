// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_r2_custom_domain`.
const Set<String> _cloudflareR2CustomDomainSensitive = <String>{};

/// R2 Custom Domain enum for `jurisdiction`.
enum R2CustomDomainJurisdiction implements TerraformEnum {
  defaultCase('default'),
  eu('eu'),
  fedramp('fedramp');

  const R2CustomDomainJurisdiction(this.terraformValue);
  @override
  final String terraformValue;
}

/// R2 Custom Domain Min enum for `min_tls`.
enum R2CustomDomainMinTls implements TerraformEnum {
  v1p0('1.0'),
  v1p1('1.1'),
  v1p2('1.2'),
  v1p3('1.3');

  const R2CustomDomainMinTls(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_r2_custom_domain`.
///
/// Accepted Permissions
///
/// - `Workers R2 Storage Read` - `Workers R2 Storage Write`
final class CloudflareR2CustomDomain extends Resource {
  static const String tfType = 'cloudflare_r2_custom_domain';

  CloudflareR2CustomDomain({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    TfArg<List<String>>? ciphers,
    required TfArg<String> domain,
    required TfArg<bool> enabled,
    TfArg<R2CustomDomainJurisdiction>? jurisdiction,
    TfArg<R2CustomDomainMinTls>? minTls,
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
}
