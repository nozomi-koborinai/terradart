// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../notification/azurerm_notification_hub.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_notification_hub`.
const Set<String> _azurermNotificationHubSensitive = <String>{};

/// Factory wrapper for `azurerm_notification_hub`.
final class DataAzurermNotificationHub extends Data {
  static const String tfType = 'azurerm_notification_hub';

  DataAzurermNotificationHub(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> namespaceName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'namespace_name': namespaceName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNotificationHubSensitive;

  /// A reference to the `azurerm_notification_hub` this data source reads, for
  /// arguments typed `RefTo<AzurermNotificationHub>`.
  RefTo<AzurermNotificationHub> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `apns_credential` attribute.
  TfRef<List<Map<String, Object?>>> get apnsCredential =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'apns_credential');

  /// Reference to `gcm_credential` attribute.
  TfRef<List<Map<String, Object?>>> get gcmCredential =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'gcm_credential');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `namespace_name` attribute.
  TfRef<String> get namespaceName =>
      TfRef.attribute<String>(this, 'namespace_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
