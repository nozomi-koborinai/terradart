// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../healthcare/azurerm_healthcare_medtech_service.dart';

/// Sensitive field paths for `azurerm_healthcare_medtech_service`.
const Set<String> _azurermHealthcareMedtechServiceSensitive = <String>{};

/// Factory wrapper for `azurerm_healthcare_medtech_service`.
final class DataAzurermHealthcareMedtechService extends Data {
  static const String tfType = 'azurerm_healthcare_medtech_service';

  DataAzurermHealthcareMedtechService(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> workspaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'workspace_id': workspaceId},
       );

  @override
  Set<String> get sensitiveFields => _azurermHealthcareMedtechServiceSensitive;

  /// A reference to the `azurerm_healthcare_medtech_service` this data source reads, for
  /// arguments typed `RefTo<AzurermHealthcareMedtechService>`.
  RefTo<AzurermHealthcareMedtechService> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `device_mapping_json` attribute.
  TfRef<String> get deviceMappingJson =>
      TfRef.attribute<String>(this, 'device_mapping_json');

  /// Reference to `eventhub_consumer_group_name` attribute.
  TfRef<String> get eventhubConsumerGroupName =>
      TfRef.attribute<String>(this, 'eventhub_consumer_group_name');

  /// Reference to `eventhub_name` attribute.
  TfRef<String> get eventhubName =>
      TfRef.attribute<String>(this, 'eventhub_name');

  /// Reference to `eventhub_namespace_name` attribute.
  TfRef<String> get eventhubNamespaceName =>
      TfRef.attribute<String>(this, 'eventhub_namespace_name');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
