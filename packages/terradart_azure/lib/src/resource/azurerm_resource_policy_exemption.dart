// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_resource_policy_exemption`.
const Set<String> _azurermResourcePolicyExemptionSensitive = <String>{};

/// Factory wrapper for `azurerm_resource_policy_exemption`.
final class AzurermResourcePolicyExemption extends Resource {
  static const String tfType = 'azurerm_resource_policy_exemption';

  AzurermResourcePolicyExemption(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> exemptionCategory,
    TfArg<String>? expiresOn,
    TfArg<String>? metadata,
    required TfArg<String> name,
    required TfArg<String> policyAssignmentId,
    TfArg<List<String>>? policyDefinitionReferenceIds,
    required TfArg<String> resourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'display_name': ?displayName,
           'exemption_category': exemptionCategory,
           'expires_on': ?expiresOn,
           'metadata': ?metadata,
           'name': name,
           'policy_assignment_id': policyAssignmentId,
           'policy_definition_reference_ids': ?policyDefinitionReferenceIds,
           'resource_id': resourceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermResourcePolicyExemptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermResourcePolicyExemption>`.
  RefTo<AzurermResourcePolicyExemption> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `exemption_category` attribute.
  TfRef<String> get exemptionCategory =>
      TfRef.attribute<String>(this, 'exemption_category');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `policy_assignment_id` attribute.
  TfRef<String> get policyAssignmentId =>
      TfRef.attribute<String>(this, 'policy_assignment_id');

  /// Reference to `policy_definition_reference_ids` attribute.
  TfRef<List<String>> get policyDefinitionReferenceIds =>
      TfRef.attribute<List<String>>(this, 'policy_definition_reference_ids');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');
}
