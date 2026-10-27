// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_nat_gateway`.
const Set<String> _azurermNatGatewaySensitive = <String>{};

/// Nat Gateway Sku enum for `sku_name`.
extension type const NatGatewaySkuName._(TfArg<String> _)
    implements TfArg<String> {
  NatGatewaySkuName.variable(String name) : this._(TfArg.variable(name));
  NatGatewaySkuName.expression(String template)
    : this._(TfArg.expression(template));
  const NatGatewaySkuName.arg(TfArg<String> arg) : this._(arg);

  static const standard = NatGatewaySkuName._(TfArgLiteral('Standard'));
  static const standardv2 = NatGatewaySkuName._(TfArgLiteral('StandardV2'));

  static const List<NatGatewaySkuName> values = [standard, standardv2];
}

/// Factory wrapper for `azurerm_nat_gateway`.
final class AzurermNatGateway extends Resource {
  static const String tfType = 'azurerm_nat_gateway';

  AzurermNatGateway(
    super.localName, {
    TfArg<num>? idleTimeoutInMinutes,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    NatGatewaySkuName? skuName,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? zones,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'idle_timeout_in_minutes': ?idleTimeoutInMinutes,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': ?skuName,
           'tags': ?tags,
           'zones': ?zones,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNatGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNatGateway>`.
  RefTo<AzurermNatGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_guid` attribute.
  TfRef<String> get resourceGuid =>
      TfRef.attribute<String>(this, 'resource_guid');

  /// Reference to `idle_timeout_in_minutes` attribute.
  TfRef<num> get idleTimeoutInMinutes =>
      TfRef.attribute<num>(this, 'idle_timeout_in_minutes');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
