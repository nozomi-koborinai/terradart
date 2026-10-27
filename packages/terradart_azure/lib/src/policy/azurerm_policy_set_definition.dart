// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_policy_set_definition`.
const Set<String> _azurermPolicySetDefinitionSensitive = <String>{};

/// Policy Set Definition Policy enum for `policy_type`.
extension type const PolicySetDefinitionPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  PolicySetDefinitionPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  PolicySetDefinitionPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const PolicySetDefinitionPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const builtin = PolicySetDefinitionPolicyType._(
    TfArgLiteral('BuiltIn'),
  );
  static const custom = PolicySetDefinitionPolicyType._(TfArgLiteral('Custom'));
  static const notspecified = PolicySetDefinitionPolicyType._(
    TfArgLiteral('NotSpecified'),
  );
  static const static = PolicySetDefinitionPolicyType._(TfArgLiteral('Static'));

  static const List<PolicySetDefinitionPolicyType> values = [
    builtin,
    custom,
    notspecified,
    static,
  ];
}

/// Typed helper for the `policy_definition_group` block of
/// `azurerm_policy_set_definition` (derived from provider schema).
@immutable
final class PolicySetDefinitionPolicyDefinitionGroup {
  const PolicySetDefinitionPolicyDefinitionGroup({
    this.additionalMetadataResourceId,
    this.category,
    this.description,
    this.displayName,
    required this.name,
  });

  final TfArg<String>? additionalMetadataResourceId;

  final TfArg<String>? category;

  final TfArg<String>? description;

  final TfArg<String>? displayName;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'additional_metadata_resource_id': ?additionalMetadataResourceId
        ?.toTfJson(),
    'category': ?category?.toTfJson(),
    'description': ?description?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `policy_definition_reference` block of
/// `azurerm_policy_set_definition` (derived from provider schema).
@immutable
final class PolicySetDefinitionPolicyDefinitionReference {
  const PolicySetDefinitionPolicyDefinitionReference({
    this.parameterValues,
    required this.policyDefinitionId,
    this.policyGroupNames,
    this.referenceId,
    this.version,
  });

  final TfArg<String>? parameterValues;

  final TfArg<String> policyDefinitionId;

  final TfArg<List<String>>? policyGroupNames;

  final TfArg<String>? referenceId;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    'parameter_values': ?parameterValues?.toTfJson(),
    'policy_definition_id': policyDefinitionId.toTfJson(),
    'policy_group_names': ?policyGroupNames?.toTfJson(),
    'reference_id': ?referenceId?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_policy_set_definition`.
final class AzurermPolicySetDefinition extends Resource {
  static const String tfType = 'azurerm_policy_set_definition';

  AzurermPolicySetDefinition(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> displayName,
    TfArg<String>? metadata,
    required TfArg<String> name,
    TfArg<String>? parameters,
    required PolicySetDefinitionPolicyType policyType,
    List<PolicySetDefinitionPolicyDefinitionGroup>? policyDefinitionGroup,
    required List<PolicySetDefinitionPolicyDefinitionReference>
    policyDefinitionReference,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'display_name': displayName,
           'metadata': ?metadata,
           'name': name,
           'parameters': ?parameters,
           'policy_type': policyType,
           if (policyDefinitionGroup != null)
             'policy_definition_group': TfArg.literal([
               for (final e in policyDefinitionGroup) e.encode(),
             ]),
           'policy_definition_reference': TfArg.literal([
             for (final e in policyDefinitionReference) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPolicySetDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPolicySetDefinition>`.
  RefTo<AzurermPolicySetDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `parameters` attribute.
  TfRef<String> get parameters => TfRef.attribute<String>(this, 'parameters');

  /// Reference to `policy_type` attribute.
  TfRef<String> get policyType => TfRef.attribute<String>(this, 'policy_type');
}
