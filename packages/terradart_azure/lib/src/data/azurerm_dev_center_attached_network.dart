// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dev_center/azurerm_dev_center_attached_network.dart';

/// Sensitive field paths for `azurerm_dev_center_attached_network`.
const Set<String> _azurermDevCenterAttachedNetworkSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_center_attached_network`.
final class DataAzurermDevCenterAttachedNetwork extends Data {
  static const String tfType = 'azurerm_dev_center_attached_network';

  DataAzurermDevCenterAttachedNetwork(
    super.localName, {
    required TfArg<String> devCenterId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'dev_center_id': devCenterId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermDevCenterAttachedNetworkSensitive;

  /// A reference to the `azurerm_dev_center_attached_network` this data source reads, for
  /// arguments typed `RefTo<AzurermDevCenterAttachedNetwork>`.
  RefTo<AzurermDevCenterAttachedNetwork> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `network_connection_id` attribute.
  TfRef<String> get networkConnectionId =>
      TfRef.attribute<String>(this, 'network_connection_id');

  /// Reference to `dev_center_id` attribute.
  TfRef<String> get devCenterId =>
      TfRef.attribute<String>(this, 'dev_center_id');
}
