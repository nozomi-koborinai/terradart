// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_standalone_gateway`.
const Set<String> _azurermApiManagementStandaloneGatewaySensitive = <String>{};

/// Api Management Standalone Gateway Virtual Network enum for `virtual_network_type`.
extension type const ApiManagementStandaloneGatewayVirtualNetworkType._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementStandaloneGatewayVirtualNetworkType.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementStandaloneGatewayVirtualNetworkType.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementStandaloneGatewayVirtualNetworkType.arg(TfArg<String> arg)
    : this._(arg);

  static const external = ApiManagementStandaloneGatewayVirtualNetworkType._(
    TfArgLiteral('External'),
  );
  static const internal = ApiManagementStandaloneGatewayVirtualNetworkType._(
    TfArgLiteral('Internal'),
  );

  static const List<ApiManagementStandaloneGatewayVirtualNetworkType> values = [
    external,
    internal,
  ];
}

/// Typed helper for the `sku` block of
/// `azurerm_api_management_standalone_gateway` (derived from provider schema).
@immutable
final class ApiManagementStandaloneGatewaySku {
  const ApiManagementStandaloneGatewaySku({this.capacity, required this.name});

  final TfArg<num>? capacity;

  final ApiManagementStandaloneGatewaySkuName name;

  @internal
  Map<String, Object?> encode() => {
    'capacity': ?capacity?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const ApiManagementStandaloneGatewaySkuName._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementStandaloneGatewaySkuName.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementStandaloneGatewaySkuName.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementStandaloneGatewaySkuName.arg(TfArg<String> arg)
    : this._(arg);

  static const workspacegatewaypremium =
      ApiManagementStandaloneGatewaySkuName._(
        TfArgLiteral('WorkspaceGatewayPremium'),
      );

  static const List<ApiManagementStandaloneGatewaySkuName> values = [
    workspacegatewaypremium,
  ];
}

/// Factory wrapper for `azurerm_api_management_standalone_gateway`.
final class AzurermApiManagementStandaloneGateway extends Resource {
  static const String tfType = 'azurerm_api_management_standalone_gateway';

  AzurermApiManagementStandaloneGateway(
    super.localName, {
    TfArg<String>? backendSubnetId,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    ApiManagementStandaloneGatewayVirtualNetworkType? virtualNetworkType,
    required ApiManagementStandaloneGatewaySku sku,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backend_subnet_id': ?backendSubnetId,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'virtual_network_type': ?virtualNetworkType,
           'sku': TfArg.literal(sku.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementStandaloneGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementStandaloneGateway>`.
  RefTo<AzurermApiManagementStandaloneGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backend_subnet_id` attribute.
  TfRef<String> get backendSubnetId =>
      TfRef.attribute<String>(this, 'backend_subnet_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_network_type` attribute.
  TfRef<String> get virtualNetworkType =>
      TfRef.attribute<String>(this, 'virtual_network_type');
}
