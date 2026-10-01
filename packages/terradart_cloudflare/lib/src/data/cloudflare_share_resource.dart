// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../share/cloudflare_share_resource.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_share_resource`.
const Set<String> _cloudflareShareResourceSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_share_resource` (derived from provider schema).
@immutable
final class DataShareResourceFilter {
  const DataShareResourceFilter({this.resourceType, this.status});

  final TfArg<DataShareResourceFilterResourceType>? resourceType;

  final TfArg<DataShareResourceFilterStatus>? status;

  Map<String, Object?> encode() => {
    'resource_type': ?resourceType?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
enum DataShareResourceFilterResourceType implements TerraformEnum {
  customRuleset('custom-ruleset'),
  gatewayPolicy('gateway-policy'),
  gatewayDestinationIp('gateway-destination-ip'),
  gatewayBlockPageSettings('gateway-block-page-settings'),
  gatewayExtendedEmailMatching('gateway-extended-email-matching'),
  idpFederationGrant('idp-federation-grant'),
  trustGrant('trust-grant');

  const DataShareResourceFilterResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `status` — derived from the provider schema description.
enum DataShareResourceFilterStatus implements TerraformEnum {
  active('active'),
  deleting('deleting'),
  deleted('deleted');

  const DataShareResourceFilterStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_share_resource`.
final class DataCloudflareShareResource extends Data {
  static const String tfType = 'cloudflare_share_resource';

  DataCloudflareShareResource(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> shareId,
    TfArg<String>? shareResourceId,
    DataShareResourceFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'share_id': shareId,
           'share_resource_id': ?shareResourceId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareResourceSensitive;

  /// A reference to the `cloudflare_share_resource` this data source reads, for
  /// arguments typed `RefTo<CloudflareShareResource>`.
  RefTo<CloudflareShareResource> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `meta` attribute.
  TfRef<String> get meta => TfRef.attribute<String>(this, 'meta');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `resource_account_id` attribute.
  TfRef<String> get resourceAccountId =>
      TfRef.attribute<String>(this, 'resource_account_id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `resource_version` attribute.
  TfRef<num> get resourceVersion =>
      TfRef.attribute<num>(this, 'resource_version');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareId => TfRef.attribute<String>(this, 'share_id');

  /// Reference to `share_resource_id` attribute.
  TfRef<String> get shareResourceId =>
      TfRef.attribute<String>(this, 'share_resource_id');
}
