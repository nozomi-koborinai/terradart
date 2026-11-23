// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_domain_acl`.
const Set<String> _cloudflareZeroTrustCwsDomainAclSensitive = <String>{};

/// Zero Trust Cws Domain Acl Default enum for `default_action`.
extension type const ZeroTrustCwsDomainAclDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustCwsDomainAclDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustCwsDomainAclDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustCwsDomainAclDefaultAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = ZeroTrustCwsDomainAclDefaultAction._(
    TfArgLiteral('ALLOW'),
  );
  static const block = ZeroTrustCwsDomainAclDefaultAction._(
    TfArgLiteral('BLOCK'),
  );

  static const List<ZeroTrustCwsDomainAclDefaultAction> values = [allow, block];
}

/// Typed helper for the `entries` block of
/// `cloudflare_zero_trust_cws_domain_acl` (derived from provider schema).
@immutable
final class ZeroTrustCwsDomainAclEntries {
  const ZeroTrustCwsDomainAclEntries({
    required this.action,
    required this.domain,
  });

  final ZeroTrustCwsDomainAclAction action;

  final TfArg<String> domain;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'domain': domain.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const ZeroTrustCwsDomainAclAction._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustCwsDomainAclAction.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustCwsDomainAclAction.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustCwsDomainAclAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = ZeroTrustCwsDomainAclAction._(TfArgLiteral('ALLOW'));
  static const block = ZeroTrustCwsDomainAclAction._(TfArgLiteral('BLOCK'));

  static const List<ZeroTrustCwsDomainAclAction> values = [allow, block];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_domain_acl`.
final class CloudflareZeroTrustCwsDomainAcl extends Resource {
  static const String tfType = 'cloudflare_zero_trust_cws_domain_acl';

  CloudflareZeroTrustCwsDomainAcl(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required ZeroTrustCwsDomainAclDefaultAction defaultAction,
    required TfArg<String> name,
    required List<ZeroTrustCwsDomainAclEntries> entries,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'default_action': defaultAction,
           'name': name,
           'entries': TfArg.literal([for (final e in entries) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsDomainAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCwsDomainAcl>`.
  RefTo<CloudflareZeroTrustCwsDomainAcl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `default_action` attribute.
  TfRef<String> get defaultAction =>
      TfRef.attribute<String>(this, 'default_action');
}
