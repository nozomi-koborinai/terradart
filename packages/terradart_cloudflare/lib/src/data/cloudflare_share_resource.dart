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

  final DataShareResourceFilterResourceType? resourceType;

  final DataShareResourceFilterStatus? status;

  @internal
  Map<String, Object?> encode() => {
    'resource_type': ?resourceType?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
extension type const DataShareResourceFilterResourceType._(TfArg<String> _)
    implements TfArg<String> {
  DataShareResourceFilterResourceType.variable(String name)
    : this._(TfArg.variable(name));
  DataShareResourceFilterResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const DataShareResourceFilterResourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const customRuleset = DataShareResourceFilterResourceType._(
    TfArgLiteral('custom-ruleset'),
  );
  static const gatewayPolicy = DataShareResourceFilterResourceType._(
    TfArgLiteral('gateway-policy'),
  );
  static const gatewayDestinationIp = DataShareResourceFilterResourceType._(
    TfArgLiteral('gateway-destination-ip'),
  );
  static const gatewayBlockPageSettings = DataShareResourceFilterResourceType._(
    TfArgLiteral('gateway-block-page-settings'),
  );
  static const gatewayExtendedEmailMatching =
      DataShareResourceFilterResourceType._(
        TfArgLiteral('gateway-extended-email-matching'),
      );
  static const idpFederationGrant = DataShareResourceFilterResourceType._(
    TfArgLiteral('idp-federation-grant'),
  );
  static const trustGrant = DataShareResourceFilterResourceType._(
    TfArgLiteral('trust-grant'),
  );

  static const List<DataShareResourceFilterResourceType> values = [
    customRuleset,
    gatewayPolicy,
    gatewayDestinationIp,
    gatewayBlockPageSettings,
    gatewayExtendedEmailMatching,
    idpFederationGrant,
    trustGrant,
  ];
}

/// `status` — derived from the provider schema description.
extension type const DataShareResourceFilterStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataShareResourceFilterStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataShareResourceFilterStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataShareResourceFilterStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = DataShareResourceFilterStatus._(TfArgLiteral('active'));
  static const deleting = DataShareResourceFilterStatus._(
    TfArgLiteral('deleting'),
  );
  static const deleted = DataShareResourceFilterStatus._(
    TfArgLiteral('deleted'),
  );

  static const List<DataShareResourceFilterStatus> values = [
    active,
    deleting,
    deleted,
  ];
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
