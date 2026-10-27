// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_policy_definition`.
const Set<String> _azurermPolicyDefinitionSensitive = <String>{};

/// Policy Definition enum for `mode`.
extension type const PolicyDefinitionMode._(TfArg<String> _)
    implements TfArg<String> {
  PolicyDefinitionMode.variable(String name) : this._(TfArg.variable(name));
  PolicyDefinitionMode.expression(String template)
    : this._(TfArg.expression(template));
  const PolicyDefinitionMode.arg(TfArg<String> arg) : this._(arg);

  static const all = PolicyDefinitionMode._(TfArgLiteral('All'));
  static const indexed = PolicyDefinitionMode._(TfArgLiteral('Indexed'));
  static const microsoftContainerserviceData = PolicyDefinitionMode._(
    TfArgLiteral('Microsoft.ContainerService.Data'),
  );
  static const microsoftCustomerlockboxData = PolicyDefinitionMode._(
    TfArgLiteral('Microsoft.CustomerLockbox.Data'),
  );
  static const microsoftDatacatalogData = PolicyDefinitionMode._(
    TfArgLiteral('Microsoft.DataCatalog.Data'),
  );
  static const microsoftKeyvaultData = PolicyDefinitionMode._(
    TfArgLiteral('Microsoft.KeyVault.Data'),
  );
  static const microsoftKubernetesData = PolicyDefinitionMode._(
    TfArgLiteral('Microsoft.Kubernetes.Data'),
  );
  static const microsoftMachinelearningservicesData = PolicyDefinitionMode._(
    TfArgLiteral('Microsoft.MachineLearningServices.Data'),
  );
  static const microsoftNetworkData = PolicyDefinitionMode._(
    TfArgLiteral('Microsoft.Network.Data'),
  );
  static const microsoftSynapseData = PolicyDefinitionMode._(
    TfArgLiteral('Microsoft.Synapse.Data'),
  );

  static const List<PolicyDefinitionMode> values = [
    all,
    indexed,
    microsoftContainerserviceData,
    microsoftCustomerlockboxData,
    microsoftDatacatalogData,
    microsoftKeyvaultData,
    microsoftKubernetesData,
    microsoftMachinelearningservicesData,
    microsoftNetworkData,
    microsoftSynapseData,
  ];
}

/// Factory wrapper for `azurerm_policy_definition`.
final class AzurermPolicyDefinition extends Resource {
  static const String tfType = 'azurerm_policy_definition';

  AzurermPolicyDefinition(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> displayName,
    TfArg<String>? managementGroupId,
    TfArg<String>? metadata,
    required PolicyDefinitionMode mode,
    required TfArg<String> name,
    TfArg<String>? parameters,
    TfArg<String>? policyRule,
    required TfArg<String> policyType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'display_name': displayName,
           'management_group_id': ?managementGroupId,
           'metadata': ?metadata,
           'mode': mode,
           'name': name,
           'parameters': ?parameters,
           'policy_rule': ?policyRule,
           'policy_type': policyType,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPolicyDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPolicyDefinition>`.
  RefTo<AzurermPolicyDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `role_definition_ids` attribute.
  TfRef<List<String>> get roleDefinitionIds =>
      TfRef.attribute<List<String>>(this, 'role_definition_ids');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `management_group_id` attribute.
  TfRef<String> get managementGroupId =>
      TfRef.attribute<String>(this, 'management_group_id');

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
}
