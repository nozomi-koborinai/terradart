// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_notification_hub_namespace`.
const Set<String> _azurermNotificationHubNamespaceSensitive = <String>{};

/// Notification Hub Namespace enum for `namespace_type`.
extension type const NotificationHubNamespaceType._(TfArg<String> _)
    implements TfArg<String> {
  NotificationHubNamespaceType.variable(String name)
    : this._(TfArg.variable(name));
  NotificationHubNamespaceType.expression(String template)
    : this._(TfArg.expression(template));
  const NotificationHubNamespaceType.arg(TfArg<String> arg) : this._(arg);

  static const messaging = NotificationHubNamespaceType._(
    TfArgLiteral('Messaging'),
  );
  static const notificationhub = NotificationHubNamespaceType._(
    TfArgLiteral('NotificationHub'),
  );

  static const List<NotificationHubNamespaceType> values = [
    messaging,
    notificationhub,
  ];
}

/// Notification Hub Namespace Replication enum for `replication_region`.
extension type const NotificationHubNamespaceReplicationRegion._(
  TfArg<String> _
) implements TfArg<String> {
  NotificationHubNamespaceReplicationRegion.variable(String name)
    : this._(TfArg.variable(name));
  NotificationHubNamespaceReplicationRegion.expression(String template)
    : this._(TfArg.expression(template));
  const NotificationHubNamespaceReplicationRegion.arg(TfArg<String> arg)
    : this._(arg);

  static const australiaeast = NotificationHubNamespaceReplicationRegion._(
    TfArgLiteral('AustraliaEast'),
  );
  static const brazilsouth = NotificationHubNamespaceReplicationRegion._(
    TfArgLiteral('BrazilSouth'),
  );
  static const defaultCase = NotificationHubNamespaceReplicationRegion._(
    TfArgLiteral('Default'),
  );
  static const none = NotificationHubNamespaceReplicationRegion._(
    TfArgLiteral('None'),
  );
  static const northeurope = NotificationHubNamespaceReplicationRegion._(
    TfArgLiteral('NorthEurope'),
  );
  static const southafricanorth = NotificationHubNamespaceReplicationRegion._(
    TfArgLiteral('SouthAfricaNorth'),
  );
  static const southeastasia = NotificationHubNamespaceReplicationRegion._(
    TfArgLiteral('SouthEastAsia'),
  );
  static const westus2 = NotificationHubNamespaceReplicationRegion._(
    TfArgLiteral('WestUs2'),
  );

  static const List<NotificationHubNamespaceReplicationRegion> values = [
    australiaeast,
    brazilsouth,
    defaultCase,
    none,
    northeurope,
    southafricanorth,
    southeastasia,
    westus2,
  ];
}

/// Notification Hub Namespace Sku enum for `sku_name`.
extension type const NotificationHubNamespaceSkuName._(TfArg<String> _)
    implements TfArg<String> {
  NotificationHubNamespaceSkuName.variable(String name)
    : this._(TfArg.variable(name));
  NotificationHubNamespaceSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const NotificationHubNamespaceSkuName.arg(TfArg<String> arg) : this._(arg);

  static const basic = NotificationHubNamespaceSkuName._(TfArgLiteral('Basic'));
  static const free = NotificationHubNamespaceSkuName._(TfArgLiteral('Free'));
  static const standard = NotificationHubNamespaceSkuName._(
    TfArgLiteral('Standard'),
  );

  static const List<NotificationHubNamespaceSkuName> values = [
    basic,
    free,
    standard,
  ];
}

/// Factory wrapper for `azurerm_notification_hub_namespace`.
final class AzurermNotificationHubNamespace extends Resource {
  static const String tfType = 'azurerm_notification_hub_namespace';

  AzurermNotificationHubNamespace(
    super.localName, {
    TfArg<bool>? enabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required NotificationHubNamespaceType namespaceType,
    NotificationHubNamespaceReplicationRegion? replicationRegion,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required NotificationHubNamespaceSkuName skuName,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? zoneRedundancyEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'location': location,
           'name': name,
           'namespace_type': namespaceType,
           'replication_region': ?replicationRegion,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
           'zone_redundancy_enabled': ?zoneRedundancyEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNotificationHubNamespaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNotificationHubNamespace>`.
  RefTo<AzurermNotificationHubNamespace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `servicebus_endpoint` attribute.
  TfRef<String> get servicebusEndpoint =>
      TfRef.attribute<String>(this, 'servicebus_endpoint');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `namespace_type` attribute.
  TfRef<String> get namespaceType =>
      TfRef.attribute<String>(this, 'namespace_type');

  /// Reference to `replication_region` attribute.
  TfRef<String> get replicationRegion =>
      TfRef.attribute<String>(this, 'replication_region');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone_redundancy_enabled` attribute.
  TfRef<bool> get zoneRedundancyEnabled =>
      TfRef.attribute<bool>(this, 'zone_redundancy_enabled');
}
