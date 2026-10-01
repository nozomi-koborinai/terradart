// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../email/cloudflare_email_security_domain.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_domain`.
const Set<String> _cloudflareEmailSecurityDomainSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_email_security_domain` (derived from provider schema).
@immutable
final class DataEmailSecurityDomainFilter {
  const DataEmailSecurityDomainFilter({
    this.activeDeliveryMode,
    this.allowedDeliveryMode,
    this.direction,
    this.domain,
    this.integrationId,
    this.order,
    this.search,
    this.status,
  });

  final DataEmailSecurityDomainActiveDeliveryMode? activeDeliveryMode;

  final DataEmailSecurityDomainAllowedDeliveryMode? allowedDeliveryMode;

  final DataEmailSecurityDomainDirection? direction;

  final TfArg<List<String>>? domain;

  final TfArg<String>? integrationId;

  final DataEmailSecurityDomainOrder? order;

  final TfArg<String>? search;

  final DataEmailSecurityDomainFilterStatus? status;

  @internal
  Map<String, Object?> encode() => {
    'active_delivery_mode': ?activeDeliveryMode?.toTfJson(),
    'allowed_delivery_mode': ?allowedDeliveryMode?.toTfJson(),
    'direction': ?direction?.toTfJson(),
    'domain': ?domain?.toTfJson(),
    'integration_id': ?integrationId?.toTfJson(),
    'order': ?order?.toTfJson(),
    'search': ?search?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `active_delivery_mode` — derived from the provider schema description.
extension type const DataEmailSecurityDomainActiveDeliveryMode._(
  TfArg<String> _
) implements TfArg<String> {
  DataEmailSecurityDomainActiveDeliveryMode.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityDomainActiveDeliveryMode.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityDomainActiveDeliveryMode.arg(TfArg<String> arg)
    : this._(arg);

  static const direct = DataEmailSecurityDomainActiveDeliveryMode._(
    TfArgLiteral('DIRECT'),
  );
  static const bcc = DataEmailSecurityDomainActiveDeliveryMode._(
    TfArgLiteral('BCC'),
  );
  static const journal = DataEmailSecurityDomainActiveDeliveryMode._(
    TfArgLiteral('JOURNAL'),
  );
  static const api = DataEmailSecurityDomainActiveDeliveryMode._(
    TfArgLiteral('API'),
  );
  static const retroScan = DataEmailSecurityDomainActiveDeliveryMode._(
    TfArgLiteral('RETRO_SCAN'),
  );

  static const List<DataEmailSecurityDomainActiveDeliveryMode> values = [
    direct,
    bcc,
    journal,
    api,
    retroScan,
  ];
}

/// `allowed_delivery_mode` — derived from the provider schema description.
extension type const DataEmailSecurityDomainAllowedDeliveryMode._(
  TfArg<String> _
) implements TfArg<String> {
  DataEmailSecurityDomainAllowedDeliveryMode.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityDomainAllowedDeliveryMode.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityDomainAllowedDeliveryMode.arg(TfArg<String> arg)
    : this._(arg);

  static const direct = DataEmailSecurityDomainAllowedDeliveryMode._(
    TfArgLiteral('DIRECT'),
  );
  static const bcc = DataEmailSecurityDomainAllowedDeliveryMode._(
    TfArgLiteral('BCC'),
  );
  static const journal = DataEmailSecurityDomainAllowedDeliveryMode._(
    TfArgLiteral('JOURNAL'),
  );
  static const api = DataEmailSecurityDomainAllowedDeliveryMode._(
    TfArgLiteral('API'),
  );
  static const retroScan = DataEmailSecurityDomainAllowedDeliveryMode._(
    TfArgLiteral('RETRO_SCAN'),
  );

  static const List<DataEmailSecurityDomainAllowedDeliveryMode> values = [
    direct,
    bcc,
    journal,
    api,
    retroScan,
  ];
}

/// `direction` — derived from the provider schema description.
extension type const DataEmailSecurityDomainDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityDomainDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityDomainDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityDomainDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataEmailSecurityDomainDirection._(TfArgLiteral('asc'));
  static const desc = DataEmailSecurityDomainDirection._(TfArgLiteral('desc'));

  static const List<DataEmailSecurityDomainDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataEmailSecurityDomainOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityDomainOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityDomainOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityDomainOrder.arg(TfArg<String> arg) : this._(arg);

  static const domain = DataEmailSecurityDomainOrder._(TfArgLiteral('domain'));
  static const createdAt = DataEmailSecurityDomainOrder._(
    TfArgLiteral('created_at'),
  );

  static const List<DataEmailSecurityDomainOrder> values = [domain, createdAt];
}

/// `status` — derived from the provider schema description.
extension type const DataEmailSecurityDomainFilterStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailSecurityDomainFilterStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailSecurityDomainFilterStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailSecurityDomainFilterStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const pending = DataEmailSecurityDomainFilterStatus._(
    TfArgLiteral('PENDING'),
  );
  static const active = DataEmailSecurityDomainFilterStatus._(
    TfArgLiteral('ACTIVE'),
  );
  static const failed = DataEmailSecurityDomainFilterStatus._(
    TfArgLiteral('FAILED'),
  );
  static const timeout = DataEmailSecurityDomainFilterStatus._(
    TfArgLiteral('TIMEOUT'),
  );

  static const List<DataEmailSecurityDomainFilterStatus> values = [
    pending,
    active,
    failed,
    timeout,
  ];
}

/// Factory wrapper for `cloudflare_email_security_domain`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityDomain extends Data {
  static const String tfType = 'cloudflare_email_security_domain';

  DataCloudflareEmailSecurityDomain(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? domainId,
    DataEmailSecurityDomainFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'domain_id': ?domainId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailSecurityDomainSensitive;

  /// A reference to the `cloudflare_email_security_domain` this data source reads, for
  /// arguments typed `RefTo<CloudflareEmailSecurityDomain>`.
  RefTo<CloudflareEmailSecurityDomain> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_delivery_modes` attribute.
  TfRef<List<String>> get allowedDeliveryModes =>
      TfRef.attribute<List<String>>(this, 'allowed_delivery_modes');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `dmarc_status` attribute.
  TfRef<String> get dmarcStatus =>
      TfRef.attribute<String>(this, 'dmarc_status');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `drop_dispositions` attribute.
  TfRef<List<String>> get dropDispositions =>
      TfRef.attribute<List<String>>(this, 'drop_dispositions');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `inbox_provider` attribute.
  TfRef<String> get inboxProvider =>
      TfRef.attribute<String>(this, 'inbox_provider');

  /// Reference to `integration_id` attribute.
  TfRef<String> get integrationId =>
      TfRef.attribute<String>(this, 'integration_id');

  /// Reference to `ip_restrictions` attribute.
  TfRef<List<String>> get ipRestrictions =>
      TfRef.attribute<List<String>>(this, 'ip_restrictions');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `lookback_hops` attribute.
  TfRef<num> get lookbackHops => TfRef.attribute<num>(this, 'lookback_hops');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `o365_tenant_id` attribute.
  TfRef<String> get o365TenantId =>
      TfRef.attribute<String>(this, 'o365_tenant_id');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regions =>
      TfRef.attribute<List<String>>(this, 'regions');

  /// Reference to `require_tls_inbound` attribute.
  TfRef<bool> get requireTlsInbound =>
      TfRef.attribute<bool>(this, 'require_tls_inbound');

  /// Reference to `require_tls_outbound` attribute.
  TfRef<bool> get requireTlsOutbound =>
      TfRef.attribute<bool>(this, 'require_tls_outbound');

  /// Reference to `spf_status` attribute.
  TfRef<String> get spfStatus => TfRef.attribute<String>(this, 'spf_status');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `transport` attribute.
  TfRef<String> get transport => TfRef.attribute<String>(this, 'transport');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');
}
