// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_policy_definition_built_in`.
const Set<String> _azurermPolicyDefinitionBuiltInSensitive = <String>{};

/// Factory wrapper for `azurerm_policy_definition_built_in`.
final class DataAzurermPolicyDefinitionBuiltIn extends Data {
  static const String tfType = 'azurerm_policy_definition_built_in';

  DataAzurermPolicyDefinitionBuiltIn(
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
  Set<String> get sensitiveFields => _azurermPolicyDefinitionBuiltInSensitive;

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
