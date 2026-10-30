// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_domains`.
const Set<String> _cloudflareEmailSecurityDomainsSensitive = <String>{};

/// Data Email Security Domains Active Delivery enum for `active_delivery_mode`.
extension type const DataEmailSecurityDomainsActiveDeliveryMode._(
  TfArg<String> _
) implements TfArg<String> {
  DataEmailSecurityDomainsActiveDeliveryMode.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityDomainsActiveDeliveryMode.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityDomainsActiveDeliveryMode.arg(TfArg<String> arg)
    : this._(arg);

  static const direct = DataEmailSecurityDomainsActiveDeliveryMode._(
    TfArgLiteral('DIRECT'),
  );
  static const bcc = DataEmailSecurityDomainsActiveDeliveryMode._(
    TfArgLiteral('BCC'),
  );
  static const journal = DataEmailSecurityDomainsActiveDeliveryMode._(
    TfArgLiteral('JOURNAL'),
  );
  static const api = DataEmailSecurityDomainsActiveDeliveryMode._(
    TfArgLiteral('API'),
  );
  static const retroScan = DataEmailSecurityDomainsActiveDeliveryMode._(
    TfArgLiteral('RETRO_SCAN'),
  );

  static const List<DataEmailSecurityDomainsActiveDeliveryMode> values = [
    direct,
    bcc,
    journal,
    api,
    retroScan,
  ];
}

/// Data Email Security Domains Allowed Delivery enum for `allowed_delivery_mode`.
extension type const DataEmailSecurityDomainsAllowedDeliveryMode._(
  TfArg<String> _
) implements TfArg<String> {
  DataEmailSecurityDomainsAllowedDeliveryMode.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityDomainsAllowedDeliveryMode.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityDomainsAllowedDeliveryMode.arg(TfArg<String> arg)
    : this._(arg);

  static const direct = DataEmailSecurityDomainsAllowedDeliveryMode._(
    TfArgLiteral('DIRECT'),
  );
  static const bcc = DataEmailSecurityDomainsAllowedDeliveryMode._(
    TfArgLiteral('BCC'),
  );
  static const journal = DataEmailSecurityDomainsAllowedDeliveryMode._(
    TfArgLiteral('JOURNAL'),
  );
  static const api = DataEmailSecurityDomainsAllowedDeliveryMode._(
    TfArgLiteral('API'),
  );
  static const retroScan = DataEmailSecurityDomainsAllowedDeliveryMode._(
    TfArgLiteral('RETRO_SCAN'),
  );

  static const List<DataEmailSecurityDomainsAllowedDeliveryMode> values = [
    direct,
    bcc,
    journal,
    api,
    retroScan,
  ];
}

/// Data Email Security Domains enum for `direction`.
extension type const DataEmailSecurityDomainsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityDomainsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityDomainsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityDomainsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataEmailSecurityDomainsDirection._(TfArgLiteral('asc'));
  static const desc = DataEmailSecurityDomainsDirection._(TfArgLiteral('desc'));

  static const List<DataEmailSecurityDomainsDirection> values = [asc, desc];
}

/// Data Email Security Domains enum for `order`.
extension type const DataEmailSecurityDomainsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityDomainsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityDomainsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityDomainsOrder.arg(TfArg<String> arg) : this._(arg);

  static const domain = DataEmailSecurityDomainsOrder._(TfArgLiteral('domain'));
  static const createdAt = DataEmailSecurityDomainsOrder._(
    TfArgLiteral('created_at'),
  );

  static const List<DataEmailSecurityDomainsOrder> values = [domain, createdAt];
}

/// Data Email Security Domains enum for `status`.
extension type const DataEmailSecurityDomainsStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityDomainsStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityDomainsStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityDomainsStatus.arg(TfArg<String> arg) : this._(arg);

  static const pending = DataEmailSecurityDomainsStatus._(
    TfArgLiteral('PENDING'),
  );
  static const active = DataEmailSecurityDomainsStatus._(
    TfArgLiteral('ACTIVE'),
  );
  static const failed = DataEmailSecurityDomainsStatus._(
    TfArgLiteral('FAILED'),
  );
  static const timeout = DataEmailSecurityDomainsStatus._(
    TfArgLiteral('TIMEOUT'),
  );

  static const List<DataEmailSecurityDomainsStatus> values = [
    pending,
    active,
    failed,
    timeout,
  ];
}

/// Factory wrapper for `cloudflare_email_security_domains`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityDomains extends Data {
  static const String tfType = 'cloudflare_email_security_domains';

  DataCloudflareEmailSecurityDomains(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataEmailSecurityDomainsActiveDeliveryMode? activeDeliveryMode,
    DataEmailSecurityDomainsAllowedDeliveryMode? allowedDeliveryMode,
    DataEmailSecurityDomainsDirection? direction,
    TfArg<List<String>>? domain,
    TfArg<String>? integrationId,
    TfArg<num>? maxItems,
    DataEmailSecurityDomainsOrder? order,
    TfArg<String>? search,
    DataEmailSecurityDomainsStatus? status,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'active_delivery_mode': ?activeDeliveryMode,
           'allowed_delivery_mode': ?allowedDeliveryMode,
           'direction': ?direction,
           'domain': ?domain,
           'integration_id': ?integrationId,
           'max_items': ?maxItems,
           'order': ?order,
           'search': ?search,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailSecurityDomainsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `active_delivery_mode` attribute.
  TfRef<String> get activeDeliveryMode =>
      TfRef.attribute<String>(this, 'active_delivery_mode');

  /// Reference to `allowed_delivery_mode` attribute.
  TfRef<String> get allowedDeliveryMode =>
      TfRef.attribute<String>(this, 'allowed_delivery_mode');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `domain` attribute.
  TfRef<List<String>> get domain =>
      TfRef.attribute<List<String>>(this, 'domain');

  /// Reference to `integration_id` attribute.
  TfRef<String> get integrationId =>
      TfRef.attribute<String>(this, 'integration_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
