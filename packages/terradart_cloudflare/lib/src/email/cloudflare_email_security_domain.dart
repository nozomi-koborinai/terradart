// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_domain`.
const Set<String> _cloudflareEmailSecurityDomainSensitive = <String>{};

/// Email Security Domain enum for `folder`.
enum EmailSecurityDomainFolder implements TerraformEnum {
  allitems('AllItems'),
  inbox('Inbox');

  const EmailSecurityDomainFolder(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_email_security_domain`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class CloudflareEmailSecurityDomain extends Resource {
  static const String tfType = 'cloudflare_email_security_domain';

  CloudflareEmailSecurityDomain({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> domain,
    required TfArg<List<String>> allowedDeliveryModes,
    required TfArg<List<String>> dropDispositions,
    required TfArg<List<String>> ipRestrictions,
    required TfArg<List<String>> regions,
    TfArg<EmailSecurityDomainFolder>? folder,
    TfArg<String>? integrationId,
    TfArg<num>? lookbackHops,
    TfArg<bool>? requireTlsInbound,
    TfArg<bool>? requireTlsOutbound,
    TfArg<String>? transport,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'domain': domain,
           'allowed_delivery_modes': allowedDeliveryModes,
           'drop_dispositions': dropDispositions,
           'ip_restrictions': ipRestrictions,
           'regions': regions,
           'folder': ?folder,
           'integration_id': ?integrationId,
           'lookback_hops': ?lookbackHops,
           'require_tls_inbound': ?requireTlsInbound,
           'require_tls_outbound': ?requireTlsOutbound,
           'transport': ?transport,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailSecurityDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareEmailSecurityDomain>`.
  RefTo<CloudflareEmailSecurityDomain> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `dmarc_status` attribute.
  TfRef<String> get dmarcStatus =>
      TfRef.attribute<String>(this, 'dmarc_status');

  /// Reference to `inbox_provider` attribute.
  TfRef<String> get inboxProvider =>
      TfRef.attribute<String>(this, 'inbox_provider');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `o365_tenant_id` attribute.
  TfRef<String> get o365TenantId =>
      TfRef.attribute<String>(this, 'o365_tenant_id');

  /// Reference to `spf_status` attribute.
  TfRef<String> get spfStatus => TfRef.attribute<String>(this, 'spf_status');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `allowed_delivery_modes` attribute.
  TfRef<List<String>> get allowedDeliveryModes =>
      TfRef.attribute<List<String>>(this, 'allowed_delivery_modes');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `drop_dispositions` attribute.
  TfRef<List<String>> get dropDispositions =>
      TfRef.attribute<List<String>>(this, 'drop_dispositions');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `integration_id` attribute.
  TfRef<String> get integrationId =>
      TfRef.attribute<String>(this, 'integration_id');

  /// Reference to `ip_restrictions` attribute.
  TfRef<List<String>> get ipRestrictions =>
      TfRef.attribute<List<String>>(this, 'ip_restrictions');

  /// Reference to `lookback_hops` attribute.
  TfRef<num> get lookbackHops => TfRef.attribute<num>(this, 'lookback_hops');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regions =>
      TfRef.attribute<List<String>>(this, 'regions');

  /// Reference to `require_tls_inbound` attribute.
  TfRef<bool> get requireTlsInbound =>
      TfRef.attribute<bool>(this, 'require_tls_inbound');

  /// Reference to `require_tls_outbound` attribute.
  TfRef<bool> get requireTlsOutbound =>
      TfRef.attribute<bool>(this, 'require_tls_outbound');

  /// Reference to `transport` attribute.
  TfRef<String> get transport => TfRef.attribute<String>(this, 'transport');
}
