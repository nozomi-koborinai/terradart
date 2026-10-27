// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_network_group`.
const Set<String> _azurermNetworkManagerNetworkGroupSensitive = <String>{};

/// Network Manager Network Group Member enum for `member_type`.
extension type const NetworkManagerNetworkGroupMemberType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkManagerNetworkGroupMemberType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagerNetworkGroupMemberType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkManagerNetworkGroupMemberType.arg(TfArg<String> arg)
    : this._(arg);

  static const subnet = NetworkManagerNetworkGroupMemberType._(
    TfArgLiteral('Subnet'),
  );
  static const virtualnetwork = NetworkManagerNetworkGroupMemberType._(
    TfArgLiteral('VirtualNetwork'),
  );

  static const List<NetworkManagerNetworkGroupMemberType> values = [
    subnet,
    virtualnetwork,
  ];
}

/// Factory wrapper for `azurerm_network_manager_network_group`.
final class AzurermNetworkManagerNetworkGroup extends Resource {
  static const String tfType = 'azurerm_network_manager_network_group';

  AzurermNetworkManagerNetworkGroup(
    super.localName, {
    TfArg<String>? description,
    NetworkManagerNetworkGroupMemberType? memberType,
    required TfArg<String> name,
    required TfArg<String> networkManagerId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'member_type': ?memberType,
           'name': name,
           'network_manager_id': networkManagerId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerNetworkGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerNetworkGroup>`.
  RefTo<AzurermNetworkManagerNetworkGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `member_type` attribute.
  TfRef<String> get memberType => TfRef.attribute<String>(this, 'member_type');

  /// Reference to `network_manager_id` attribute.
  TfRef<String> get networkManagerId =>
      TfRef.attribute<String>(this, 'network_manager_id');
}
