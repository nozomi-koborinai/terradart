// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_policy_assignment`.
const Set<String> _azurermPolicyAssignmentSensitive = <String>{};

/// Factory wrapper for `azurerm_policy_assignment`.
final class DataAzurermPolicyAssignment extends Data {
  static const String tfType = 'azurerm_policy_assignment';

  DataAzurermPolicyAssignment(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> scopeId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'scope_id': scopeId},
       );

  @override
  Set<String> get sensitiveFields => _azurermPolicyAssignmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enforce` attribute.
  TfRef<bool> get enforce => TfRef.attribute<bool>(this, 'enforce');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `non_compliance_message` attribute.
  TfRef<List<Map<String, Object?>>> get nonComplianceMessage =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'non_compliance_message',
      );

  /// Reference to `not_scopes` attribute.
  TfRef<List<String>> get notScopes =>
      TfRef.attribute<List<String>>(this, 'not_scopes');

  /// Reference to `parameters` attribute.
  TfRef<String> get parameters => TfRef.attribute<String>(this, 'parameters');

  /// Reference to `policy_definition_id` attribute.
  TfRef<String> get policyDefinitionId =>
      TfRef.attribute<String>(this, 'policy_definition_id');

  /// Reference to `scope_id` attribute.
  TfRef<String> get scopeId => TfRef.attribute<String>(this, 'scope_id');
}
