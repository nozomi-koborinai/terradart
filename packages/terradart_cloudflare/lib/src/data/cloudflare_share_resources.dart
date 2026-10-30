// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_share_resources`.
const Set<String> _cloudflareShareResourcesSensitive = <String>{};

/// Data Share Resources Resource enum for `resource_type`.
extension type const DataShareResourcesResourceType._(TfArg<String> _)
    implements TfArg<String> {
  DataShareResourcesResourceType.variable(String name)
    : this._(TfArg.variable(name));
  DataShareResourcesResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const DataShareResourcesResourceType.arg(TfArg<String> arg) : this._(arg);

  static const customRuleset = DataShareResourcesResourceType._(
    TfArgLiteral('custom-ruleset'),
  );
  static const gatewayPolicy = DataShareResourcesResourceType._(
    TfArgLiteral('gateway-policy'),
  );
  static const gatewayDestinationIp = DataShareResourcesResourceType._(
    TfArgLiteral('gateway-destination-ip'),
  );
  static const gatewayBlockPageSettings = DataShareResourcesResourceType._(
    TfArgLiteral('gateway-block-page-settings'),
  );
  static const gatewayExtendedEmailMatching = DataShareResourcesResourceType._(
    TfArgLiteral('gateway-extended-email-matching'),
  );
  static const idpFederationGrant = DataShareResourcesResourceType._(
    TfArgLiteral('idp-federation-grant'),
  );
  static const trustGrant = DataShareResourcesResourceType._(
    TfArgLiteral('trust-grant'),
  );

  static const List<DataShareResourcesResourceType> values = [
    customRuleset,
    gatewayPolicy,
    gatewayDestinationIp,
    gatewayBlockPageSettings,
    gatewayExtendedEmailMatching,
    idpFederationGrant,
    trustGrant,
  ];
}

/// Data Share Resources enum for `status`.
extension type const DataShareResourcesStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataShareResourcesStatus.variable(String name) : this._(TfArg.variable(name));
  DataShareResourcesStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataShareResourcesStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = DataShareResourcesStatus._(TfArgLiteral('active'));
  static const deleting = DataShareResourcesStatus._(TfArgLiteral('deleting'));
  static const deleted = DataShareResourcesStatus._(TfArgLiteral('deleted'));

  static const List<DataShareResourcesStatus> values = [
    active,
    deleting,
    deleted,
  ];
}

/// Factory wrapper for `cloudflare_share_resources`.
final class DataCloudflareShareResources extends Data {
  static const String tfType = 'cloudflare_share_resources';

  DataCloudflareShareResources(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<num>? maxItems,
    DataShareResourcesResourceType? resourceType,
    required TfArg<String> shareId,
    DataShareResourcesStatus? status,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'max_items': ?maxItems,
           'resource_type': ?resourceType,
           'share_id': shareId,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareResourcesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareId => TfRef.attribute<String>(this, 'share_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
