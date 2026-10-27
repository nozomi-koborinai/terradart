// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_application_load_balancer_subnet_association`.
const Set<String> _azurermApplicationLoadBalancerSubnetAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_application_load_balancer_subnet_association`.
final class AzurermApplicationLoadBalancerSubnetAssociation extends Resource {
  static const String tfType =
      'azurerm_application_load_balancer_subnet_association';

  AzurermApplicationLoadBalancerSubnetAssociation(
    super.localName, {
    required TfArg<String> applicationLoadBalancerId,
    required TfArg<String> name,
    required RefTo<AzurermSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_load_balancer_id': applicationLoadBalancerId,
           'name': name,
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApplicationLoadBalancerSubnetAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationLoadBalancerSubnetAssociation>`.
  RefTo<AzurermApplicationLoadBalancerSubnetAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_load_balancer_id` attribute.
  TfRef<String> get applicationLoadBalancerId =>
      TfRef.attribute<String>(this, 'application_load_balancer_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
