// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../policy/azurerm_policy_definition.dart';

/// Sensitive field paths for `azurerm_policy_definition`.
const Set<String> _azurermPolicyDefinitionSensitive = <String>{};

/// Factory wrapper for `azurerm_policy_definition`.
final class DataAzurermPolicyDefinition extends Data {
  static const String tfType = 'azurerm_policy_definition';

  DataAzurermPolicyDefinition(
    super.localName, {
    TfArg<String>? displayName,
    TfArg<String>? managementGroupName,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': ?displayName,
           'management_group_name': ?managementGroupName,
           'name': ?name,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPolicyDefinitionSensitive;

  /// A reference to the `azurerm_policy_definition` this data source reads, for
  /// arguments typed `RefTo<AzurermPolicyDefinition>`.
  RefTo<AzurermPolicyDefinition> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `parameters` attribute.
  TfRef<String> get parameters => TfRef.attribute<String>(this, 'parameters');

  /// Reference to `policy_rule` attribute.
  TfRef<String> get policyRule => TfRef.attribute<String>(this, 'policy_rule');

  /// Reference to `policy_type` attribute.
  TfRef<String> get policyType => TfRef.attribute<String>(this, 'policy_type');

  /// Reference to `role_definition_ids` attribute.
  TfRef<List<String>> get roleDefinitionIds =>
      TfRef.attribute<List<String>>(this, 'role_definition_ids');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `management_group_name` attribute.
  TfRef<String> get managementGroupName =>
      TfRef.attribute<String>(this, 'management_group_name');
}
