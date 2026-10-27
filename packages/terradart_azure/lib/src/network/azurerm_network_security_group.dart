// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_network_security_group`.
const Set<String> _azurermNetworkSecurityGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_network_security_group`.
final class AzurermNetworkSecurityGroup extends Resource {
  static const String tfType = 'azurerm_network_security_group';

  AzurermNetworkSecurityGroup(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<List<Map<String, Object?>>>? securityRule,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'security_rule': ?securityRule,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetworkSecurityGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkSecurityGroup>`.
  RefTo<AzurermNetworkSecurityGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `security_rule` attribute.
  TfRef<List<Map<String, Object?>>> get securityRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'security_rule');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
