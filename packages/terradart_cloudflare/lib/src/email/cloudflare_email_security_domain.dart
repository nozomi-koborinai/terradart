// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> accountId,
    required TfArg<List<String>> allowedDeliveryModes,
    required TfArg<String> domain,
    required TfArg<List<String>> dropDispositions,
    TfArg<EmailSecurityDomainFolder>? folder,
    TfArg<String>? integrationId,
    required TfArg<List<String>> ipRestrictions,
    TfArg<num>? lookbackHops,
    required TfArg<List<String>> regions,
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
           'account_id': accountId,
           'allowed_delivery_modes': allowedDeliveryModes,
           'domain': domain,
           'drop_dispositions': dropDispositions,
           if (folder != null) 'folder': folder,
           if (integrationId != null) 'integration_id': integrationId,
           'ip_restrictions': ipRestrictions,
           if (lookbackHops != null) 'lookback_hops': lookbackHops,
           'regions': regions,
           if (requireTlsInbound != null)
             'require_tls_inbound': requireTlsInbound,
           if (requireTlsOutbound != null)
             'require_tls_outbound': requireTlsOutbound,
           if (transport != null) 'transport': transport,
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
}
