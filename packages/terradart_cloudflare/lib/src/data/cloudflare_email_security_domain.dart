// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? activeDeliveryMode;

  final TfArg<String>? allowedDeliveryMode;

  final TfArg<String>? direction;

  final TfArg<List<Object?>>? domain;

  final TfArg<String>? integrationId;

  final TfArg<String>? order;

  final TfArg<String>? search;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (activeDeliveryMode != null)
      'active_delivery_mode': activeDeliveryMode!.toTfJson(),
    if (allowedDeliveryMode != null)
      'allowed_delivery_mode': allowedDeliveryMode!.toTfJson(),
    if (direction != null) 'direction': direction!.toTfJson(),
    if (domain != null) 'domain': domain!.toTfJson(),
    if (integrationId != null) 'integration_id': integrationId!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_email_security_domain`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityDomain extends Data {
  static const String tfType = 'cloudflare_email_security_domain';

  DataCloudflareEmailSecurityDomain({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? domainId,
    DataEmailSecurityDomainFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (domainId != null) 'domain_id': domainId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailSecurityDomainSensitive;

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
}
