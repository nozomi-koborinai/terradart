// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_storage_sync`.
const Set<String> _azurermStorageSyncSensitive = <String>{};

/// Storage Sync Incoming Traffic enum for `incoming_traffic_policy`.
extension type const StorageSyncIncomingTrafficPolicy._(TfArg<String> _)
    implements TfArg<String> {
  StorageSyncIncomingTrafficPolicy.variable(String name)
    : this._(TfArg.variable(name));
  StorageSyncIncomingTrafficPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const StorageSyncIncomingTrafficPolicy.arg(TfArg<String> arg) : this._(arg);

  static const allowalltraffic = StorageSyncIncomingTrafficPolicy._(
    TfArgLiteral('AllowAllTraffic'),
  );
  static const allowvirtualnetworksonly = StorageSyncIncomingTrafficPolicy._(
    TfArgLiteral('AllowVirtualNetworksOnly'),
  );

  static const List<StorageSyncIncomingTrafficPolicy> values = [
    allowalltraffic,
    allowvirtualnetworksonly,
  ];
}

/// Factory wrapper for `azurerm_storage_sync`.
final class AzurermStorageSync extends Resource {
  static const String tfType = 'azurerm_storage_sync';

  AzurermStorageSync(
    super.localName, {
    StorageSyncIncomingTrafficPolicy? incomingTrafficPolicy,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'incoming_traffic_policy': ?incomingTrafficPolicy,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageSyncSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageSync>`.
  RefTo<AzurermStorageSync> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `registered_servers` attribute.
  TfRef<List<String>> get registeredServers =>
      TfRef.attribute<List<String>>(this, 'registered_servers');

  /// Reference to `incoming_traffic_policy` attribute.
  TfRef<String> get incomingTrafficPolicy =>
      TfRef.attribute<String>(this, 'incoming_traffic_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
