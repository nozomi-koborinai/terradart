// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_share_resource`.
const Set<String> _cloudflareShareResourceSensitive = <String>{};

/// Share Resource Resource enum for `resource_type`.
enum ShareResourceResourceType implements TerraformEnum {
  customRuleset('custom-ruleset'),
  gatewayPolicy('gateway-policy'),
  gatewayDestinationIp('gateway-destination-ip'),
  gatewayBlockPageSettings('gateway-block-page-settings'),
  gatewayExtendedEmailMatching('gateway-extended-email-matching'),
  idpFederationGrant('idp-federation-grant'),
  trustGrant('trust-grant');

  const ShareResourceResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_share_resource`.
final class CloudflareShareResource extends Resource {
  static const String tfType = 'cloudflare_share_resource';

  CloudflareShareResource({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> meta,
    required TfArg<String> resourceAccountId,
    required TfArg<String> resourceId,
    required TfArg<ShareResourceResourceType> resourceType,
    required TfArg<String> shareId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'meta': meta,
           'resource_account_id': resourceAccountId,
           'resource_id': resourceId,
           'resource_type': resourceType,
           'share_id': shareId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareResourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareShareResource>`.
  RefTo<CloudflareShareResource> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `resource_version` attribute.
  TfRef<num> get resourceVersion =>
      TfRef.attribute<num>(this, 'resource_version');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `meta` attribute.
  TfRef<String> get metaRef => TfRef.attribute<String>(this, 'meta');

  /// Reference to `resource_account_id` attribute.
  TfRef<String> get resourceAccountIdRef =>
      TfRef.attribute<String>(this, 'resource_account_id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceIdRef =>
      TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceTypeRef =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareIdRef => TfRef.attribute<String>(this, 'share_id');
}
