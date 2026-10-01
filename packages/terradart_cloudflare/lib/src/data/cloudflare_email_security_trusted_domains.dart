// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../email/cloudflare_email_security_trusted_domains.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_trusted_domains`.
const Set<String> _cloudflareEmailSecurityTrustedDomainsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_email_security_trusted_domains` (derived from provider schema).
@immutable
final class DataEmailSecurityTrustedDomainsFilter {
  const DataEmailSecurityTrustedDomainsFilter({
    this.direction,
    this.isRecent,
    this.isSimilarity,
    this.order,
    this.pattern,
    this.search,
  });

  final DataEmailSecurityTrustedDomainsDirection? direction;

  final TfArg<bool>? isRecent;

  final TfArg<bool>? isSimilarity;

  final DataEmailSecurityTrustedDomainsOrder? order;

  final TfArg<String>? pattern;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'is_recent': ?isRecent?.toTfJson(),
    'is_similarity': ?isSimilarity?.toTfJson(),
    'order': ?order?.toTfJson(),
    'pattern': ?pattern?.toTfJson(),
    'search': ?search?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataEmailSecurityTrustedDomainsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityTrustedDomainsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityTrustedDomainsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityTrustedDomainsDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataEmailSecurityTrustedDomainsDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataEmailSecurityTrustedDomainsDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataEmailSecurityTrustedDomainsDirection> values = [
    asc,
    desc,
  ];
}

/// `order` — derived from the provider schema description.
extension type const DataEmailSecurityTrustedDomainsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityTrustedDomainsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityTrustedDomainsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityTrustedDomainsOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const pattern = DataEmailSecurityTrustedDomainsOrder._(
    TfArgLiteral('pattern'),
  );
  static const createdAt = DataEmailSecurityTrustedDomainsOrder._(
    TfArgLiteral('created_at'),
  );

  static const List<DataEmailSecurityTrustedDomainsOrder> values = [
    pattern,
    createdAt,
  ];
}

/// Factory wrapper for `cloudflare_email_security_trusted_domains`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityTrustedDomains extends Data {
  static const String tfType = 'cloudflare_email_security_trusted_domains';

  DataCloudflareEmailSecurityTrustedDomains(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? trustedDomainId,
    DataEmailSecurityTrustedDomainsFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'trusted_domain_id': ?trustedDomainId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityTrustedDomainsSensitive;

  /// A reference to the `cloudflare_email_security_trusted_domains` this data source reads, for
  /// arguments typed `RefTo<CloudflareEmailSecurityTrustedDomains>`.
  RefTo<CloudflareEmailSecurityTrustedDomains> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `comments` attribute.
  TfRef<String> get comments => TfRef.attribute<String>(this, 'comments');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `is_recent` attribute.
  TfRef<bool> get isRecent => TfRef.attribute<bool>(this, 'is_recent');

  /// Reference to `is_regex` attribute.
  TfRef<bool> get isRegex => TfRef.attribute<bool>(this, 'is_regex');

  /// Reference to `is_similarity` attribute.
  TfRef<bool> get isSimilarity => TfRef.attribute<bool>(this, 'is_similarity');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `pattern` attribute.
  TfRef<String> get pattern => TfRef.attribute<String>(this, 'pattern');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `trusted_domain_id` attribute.
  TfRef<String> get trustedDomainId =>
      TfRef.attribute<String>(this, 'trusted_domain_id');
}
