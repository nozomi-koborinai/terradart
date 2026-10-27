// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_dev_center_attached_network`.
const Set<String> _azurermDevCenterAttachedNetworkSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_center_attached_network`.
final class AzurermDevCenterAttachedNetwork extends Resource {
  static const String tfType = 'azurerm_dev_center_attached_network';

  AzurermDevCenterAttachedNetwork(
    super.localName, {
    required TfArg<String> devCenterId,
    required TfArg<String> name,
    required TfArg<String> networkConnectionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dev_center_id': devCenterId,
           'name': name,
           'network_connection_id': networkConnectionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDevCenterAttachedNetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevCenterAttachedNetwork>`.
  RefTo<AzurermDevCenterAttachedNetwork> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dev_center_id` attribute.
  TfRef<String> get devCenterId =>
      TfRef.attribute<String>(this, 'dev_center_id');

  /// Reference to `network_connection_id` attribute.
  TfRef<String> get networkConnectionId =>
      TfRef.attribute<String>(this, 'network_connection_id');
}
