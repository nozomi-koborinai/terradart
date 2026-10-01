// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_managed_domain`.
const Set<String> _cloudflareR2ManagedDomainSensitive = <String>{};

/// R2 Managed Domain enum for `jurisdiction`.
extension type const R2ManagedDomainJurisdiction._(TfArg<String> _)
    implements TfArg<String> {
  R2ManagedDomainJurisdiction.variable(String name)
    : this._(TfArg.variable(name));
  R2ManagedDomainJurisdiction.expression(String template)
    : this._(TfArg.expression(template));
  const R2ManagedDomainJurisdiction.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = R2ManagedDomainJurisdiction._(
    TfArgLiteral('default'),
  );
  static const eu = R2ManagedDomainJurisdiction._(TfArgLiteral('eu'));
  static const fedramp = R2ManagedDomainJurisdiction._(TfArgLiteral('fedramp'));

  static const List<R2ManagedDomainJurisdiction> values = [
    defaultCase,
    eu,
    fedramp,
  ];
}

/// Factory wrapper for `cloudflare_r2_managed_domain`.
final class CloudflareR2ManagedDomain extends Resource {
  static const String tfType = 'cloudflare_r2_managed_domain';

  CloudflareR2ManagedDomain(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    required TfArg<bool> enabled,
    R2ManagedDomainJurisdiction? jurisdiction,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'bucket_name': bucketName,
           'enabled': enabled,
           'jurisdiction': ?jurisdiction,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2ManagedDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareR2ManagedDomain>`.
  RefTo<CloudflareR2ManagedDomain> get ref => RefTo.of(this);

  /// Reference to `bucket_id` attribute.
  TfRef<String> get bucketId => TfRef.attribute<String>(this, 'bucket_id');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');
}
