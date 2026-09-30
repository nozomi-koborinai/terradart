// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_registrar_domain`.
const Set<String> _cloudflareRegistrarDomainSensitive = <String>{};

/// Factory wrapper for `cloudflare_registrar_domain`.
final class CloudflareRegistrarDomain extends Resource {
  static const String tfType = 'cloudflare_registrar_domain';

  CloudflareRegistrarDomain({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? autoRenew,
    required TfArg<String> domainName,
    TfArg<bool>? locked,
    TfArg<bool>? privacy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'auto_renew': ?autoRenew,
           'domain_name': domainName,
           'locked': ?locked,
           'privacy': ?privacy,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRegistrarDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareRegistrarDomain>`.
  RefTo<CloudflareRegistrarDomain> get ref => RefTo.of(this);

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `auto_renew` attribute.
  TfRef<bool> get autoRenewRef => TfRef.attribute<bool>(this, 'auto_renew');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainNameRef =>
      TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `locked` attribute.
  TfRef<bool> get lockedRef => TfRef.attribute<bool>(this, 'locked');

  /// Reference to `privacy` attribute.
  TfRef<bool> get privacyRef => TfRef.attribute<bool>(this, 'privacy');
}
