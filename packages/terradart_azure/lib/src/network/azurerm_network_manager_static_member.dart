// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_static_member`.
const Set<String> _azurermNetworkManagerStaticMemberSensitive = <String>{};

/// Factory wrapper for `azurerm_network_manager_static_member`.
final class AzurermNetworkManagerStaticMember extends Resource {
  static const String tfType = 'azurerm_network_manager_static_member';

  AzurermNetworkManagerStaticMember(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> networkGroupId,
    required TfArg<String> targetVirtualNetworkId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'network_group_id': networkGroupId,
           'target_virtual_network_id': targetVirtualNetworkId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerStaticMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerStaticMember>`.
  RefTo<AzurermNetworkManagerStaticMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `network_group_id` attribute.
  TfRef<String> get networkGroupId =>
      TfRef.attribute<String>(this, 'network_group_id');

  /// Reference to `target_virtual_network_id` attribute.
  TfRef<String> get targetVirtualNetworkId =>
      TfRef.attribute<String>(this, 'target_virtual_network_id');
}
