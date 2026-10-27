// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_management/azurerm_api_management_gateway.dart';

/// Sensitive field paths for `azurerm_api_management_gateway`.
const Set<String> _azurermApiManagementGatewaySensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_gateway`.
final class DataAzurermApiManagementGateway extends Data {
  static const String tfType = 'azurerm_api_management_gateway';

  DataAzurermApiManagementGateway(
    super.localName, {
    required TfArg<String> apiManagementId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'api_management_id': apiManagementId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementGatewaySensitive;

  /// A reference to the `azurerm_api_management_gateway` this data source reads, for
  /// arguments typed `RefTo<AzurermApiManagementGateway>`.
  RefTo<AzurermApiManagementGateway> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location_data` attribute.
  TfRef<List<Map<String, Object?>>> get locationData =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'location_data');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');
}
