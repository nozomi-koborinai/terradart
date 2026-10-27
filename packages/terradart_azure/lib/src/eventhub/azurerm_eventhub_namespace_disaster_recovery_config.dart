// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventhub_namespace_disaster_recovery_config`.
const Set<String> _azurermEventhubNamespaceDisasterRecoveryConfigSensitive =
    <String>{};

/// Factory wrapper for `azurerm_eventhub_namespace_disaster_recovery_config`.
final class AzurermEventhubNamespaceDisasterRecoveryConfig extends Resource {
  static const String tfType =
      'azurerm_eventhub_namespace_disaster_recovery_config';

  AzurermEventhubNamespaceDisasterRecoveryConfig(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> namespaceName,
    required TfArg<String> partnerNamespaceId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'namespace_name': namespaceName,
           'partner_namespace_id': partnerNamespaceId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermEventhubNamespaceDisasterRecoveryConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventhubNamespaceDisasterRecoveryConfig>`.
  RefTo<AzurermEventhubNamespaceDisasterRecoveryConfig> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `namespace_name` attribute.
  TfRef<String> get namespaceName =>
      TfRef.attribute<String>(this, 'namespace_name');

  /// Reference to `partner_namespace_id` attribute.
  TfRef<String> get partnerNamespaceId =>
      TfRef.attribute<String>(this, 'partner_namespace_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
