// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_trusted_domains_list`.
const Set<String> _cloudflareEmailSecurityTrustedDomainsListSensitive =
    <String>{};

/// Data Email Security Trusted Domains List enum for `direction`.
extension type const DataEmailSecurityTrustedDomainsListDirection._(
  TfArg<String> _
) implements TfArg<String> {
  DataEmailSecurityTrustedDomainsListDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityTrustedDomainsListDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityTrustedDomainsListDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataEmailSecurityTrustedDomainsListDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataEmailSecurityTrustedDomainsListDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataEmailSecurityTrustedDomainsListDirection> values = [
    asc,
    desc,
  ];
}

/// Data Email Security Trusted Domains List enum for `order`.
extension type const DataEmailSecurityTrustedDomainsListOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityTrustedDomainsListOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityTrustedDomainsListOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityTrustedDomainsListOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const pattern = DataEmailSecurityTrustedDomainsListOrder._(
    TfArgLiteral('pattern'),
  );
  static const createdAt = DataEmailSecurityTrustedDomainsListOrder._(
    TfArgLiteral('created_at'),
  );

  static const List<DataEmailSecurityTrustedDomainsListOrder> values = [
    pattern,
    createdAt,
  ];
}

/// Factory wrapper for `cloudflare_email_security_trusted_domains_list`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityTrustedDomainsList extends Data {
  static const String tfType = 'cloudflare_email_security_trusted_domains_list';

  DataCloudflareEmailSecurityTrustedDomainsList(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataEmailSecurityTrustedDomainsListDirection? direction,
    TfArg<bool>? isRecent,
    TfArg<bool>? isSimilarity,
    TfArg<num>? maxItems,
    DataEmailSecurityTrustedDomainsListOrder? order,
    TfArg<String>? pattern,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'is_recent': ?isRecent,
           'is_similarity': ?isSimilarity,
           'max_items': ?maxItems,
           'order': ?order,
           'pattern': ?pattern,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityTrustedDomainsListSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `is_recent` attribute.
  TfRef<bool> get isRecent => TfRef.attribute<bool>(this, 'is_recent');

  /// Reference to `is_similarity` attribute.
  TfRef<bool> get isSimilarity => TfRef.attribute<bool>(this, 'is_similarity');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `pattern` attribute.
  TfRef<String> get pattern => TfRef.attribute<String>(this, 'pattern');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');
}
