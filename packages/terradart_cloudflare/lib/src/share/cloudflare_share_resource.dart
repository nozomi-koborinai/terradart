// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_share_resource`.
const Set<String> _cloudflareShareResourceSensitive = <String>{};

/// Share Resource Resource enum for `resource_type`.
extension type const ShareResourceResourceType._(TfArg<String> _)
    implements TfArg<String> {
  ShareResourceResourceType.variable(String name)
    : this._(TfArg.variable(name));
  ShareResourceResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const ShareResourceResourceType.arg(TfArg<String> arg) : this._(arg);

  static const customRuleset = ShareResourceResourceType._(
    TfArgLiteral('custom-ruleset'),
  );
  static const gatewayPolicy = ShareResourceResourceType._(
    TfArgLiteral('gateway-policy'),
  );
  static const gatewayDestinationIp = ShareResourceResourceType._(
    TfArgLiteral('gateway-destination-ip'),
  );
  static const gatewayBlockPageSettings = ShareResourceResourceType._(
    TfArgLiteral('gateway-block-page-settings'),
  );
  static const gatewayExtendedEmailMatching = ShareResourceResourceType._(
    TfArgLiteral('gateway-extended-email-matching'),
  );
  static const idpFederationGrant = ShareResourceResourceType._(
    TfArgLiteral('idp-federation-grant'),
  );
  static const trustGrant = ShareResourceResourceType._(
    TfArgLiteral('trust-grant'),
  );

  static const List<ShareResourceResourceType> values = [
    customRuleset,
    gatewayPolicy,
    gatewayDestinationIp,
    gatewayBlockPageSettings,
    gatewayExtendedEmailMatching,
    idpFederationGrant,
    trustGrant,
  ];
}

/// Factory wrapper for `cloudflare_share_resource`.
final class CloudflareShareResource extends Resource {
  static const String tfType = 'cloudflare_share_resource';

  CloudflareShareResource(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> meta,
    required TfArg<String> resourceAccountId,
    required TfArg<String> resourceId,
    required ShareResourceResourceType resourceType,
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
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `meta` attribute.
  TfRef<String> get meta => TfRef.attribute<String>(this, 'meta');

  /// Reference to `resource_account_id` attribute.
  TfRef<String> get resourceAccountId =>
      TfRef.attribute<String>(this, 'resource_account_id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareId => TfRef.attribute<String>(this, 'share_id');
}
