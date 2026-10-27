// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_dev_center_network_connection`.
const Set<String> _azurermDevCenterNetworkConnectionSensitive = <String>{
  'domain_password',
};

/// Dev Center Network Connection Domain Join enum for `domain_join_type`.
extension type const DevCenterNetworkConnectionDomainJoinType._(TfArg<String> _)
    implements TfArg<String> {
  DevCenterNetworkConnectionDomainJoinType.variable(String name)
    : this._(TfArg.variable(name));
  DevCenterNetworkConnectionDomainJoinType.expression(String template)
    : this._(TfArg.expression(template));
  const DevCenterNetworkConnectionDomainJoinType.arg(TfArg<String> arg)
    : this._(arg);

  static const azureadjoin = DevCenterNetworkConnectionDomainJoinType._(
    TfArgLiteral('AzureADJoin'),
  );
  static const hybridazureadjoin = DevCenterNetworkConnectionDomainJoinType._(
    TfArgLiteral('HybridAzureADJoin'),
  );
  static const none = DevCenterNetworkConnectionDomainJoinType._(
    TfArgLiteral('None'),
  );

  static const List<DevCenterNetworkConnectionDomainJoinType> values = [
    azureadjoin,
    hybridazureadjoin,
    none,
  ];
}

/// Factory wrapper for `azurerm_dev_center_network_connection`.
final class AzurermDevCenterNetworkConnection extends Resource {
  static const String tfType = 'azurerm_dev_center_network_connection';

  AzurermDevCenterNetworkConnection(
    super.localName, {
    required DevCenterNetworkConnectionDomainJoinType domainJoinType,
    TfArg<String>? domainName,
    Sensitive<String>? domainPassword,
    TfArg<String>? domainUsername,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? organizationUnit,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required RefTo<AzurermSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_join_type': domainJoinType,
           'domain_name': ?domainName,
           'domain_password': ?domainPassword,
           'domain_username': ?domainUsername,
           'location': location,
           'name': name,
           'organization_unit': ?organizationUnit,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDevCenterNetworkConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevCenterNetworkConnection>`.
  RefTo<AzurermDevCenterNetworkConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_join_type` attribute.
  TfRef<String> get domainJoinType =>
      TfRef.attribute<String>(this, 'domain_join_type');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `domain_password` attribute.
  TfRef<String> get domainPassword =>
      TfRef.attribute<String>(this, 'domain_password');

  /// Reference to `domain_username` attribute.
  TfRef<String> get domainUsername =>
      TfRef.attribute<String>(this, 'domain_username');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization_unit` attribute.
  TfRef<String> get organizationUnit =>
      TfRef.attribute<String>(this, 'organization_unit');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
