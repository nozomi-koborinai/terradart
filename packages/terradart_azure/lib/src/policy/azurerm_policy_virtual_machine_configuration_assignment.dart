// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_policy_virtual_machine_configuration_assignment`.
const Set<String> _azurermPolicyVirtualMachineConfigurationAssignmentSensitive =
    <String>{};

/// Typed helper for the `configuration` block of
/// `azurerm_policy_virtual_machine_configuration_assignment` (derived from provider schema).
@immutable
final class PolicyVirtualMachineConfigurationAssignmentConfiguration {
  const PolicyVirtualMachineConfigurationAssignmentConfiguration({
    this.assignmentType,
    this.contentHash,
    this.contentUri,
    this.version,
    this.parameter,
  });

  final PolicyVirtualMachineConfigurationAssignmentType? assignmentType;

  final TfArg<String>? contentHash;

  final TfArg<String>? contentUri;

  final TfArg<String>? version;

  final List<PolicyVirtualMachineConfigurationAssignmentParameter>? parameter;

  @internal
  Map<String, Object?> encode() => {
    'assignment_type': ?assignmentType?.toTfJson(),
    'content_hash': ?contentHash?.toTfJson(),
    'content_uri': ?contentUri?.toTfJson(),
    'version': ?version?.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// `assignment_type` — derived from the provider schema description.
extension type const PolicyVirtualMachineConfigurationAssignmentType._(
  TfArg<String> _
) implements TfArg<String> {
  PolicyVirtualMachineConfigurationAssignmentType.variable(String name)
    : this._(TfArg.variable(name));
  PolicyVirtualMachineConfigurationAssignmentType.expression(String template)
    : this._(TfArg.expression(template));
  const PolicyVirtualMachineConfigurationAssignmentType.arg(TfArg<String> arg)
    : this._(arg);

  static const applyandautocorrect =
      PolicyVirtualMachineConfigurationAssignmentType._(
        TfArgLiteral('ApplyAndAutoCorrect'),
      );
  static const applyandmonitor =
      PolicyVirtualMachineConfigurationAssignmentType._(
        TfArgLiteral('ApplyAndMonitor'),
      );
  static const audit = PolicyVirtualMachineConfigurationAssignmentType._(
    TfArgLiteral('Audit'),
  );
  static const deployandautocorrect =
      PolicyVirtualMachineConfigurationAssignmentType._(
        TfArgLiteral('DeployAndAutoCorrect'),
      );

  static const List<PolicyVirtualMachineConfigurationAssignmentType> values = [
    applyandautocorrect,
    applyandmonitor,
    audit,
    deployandautocorrect,
  ];
}

/// Typed helper for the `configuration.parameter` block of
/// `azurerm_policy_virtual_machine_configuration_assignment` (derived from provider schema).
@immutable
final class PolicyVirtualMachineConfigurationAssignmentParameter {
  const PolicyVirtualMachineConfigurationAssignmentParameter({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_policy_virtual_machine_configuration_assignment`.
final class AzurermPolicyVirtualMachineConfigurationAssignment
    extends Resource {
  static const String tfType =
      'azurerm_policy_virtual_machine_configuration_assignment';

  AzurermPolicyVirtualMachineConfigurationAssignment(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> virtualMachineId,
    required PolicyVirtualMachineConfigurationAssignmentConfiguration
    configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'virtual_machine_id': virtualMachineId,
           'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPolicyVirtualMachineConfigurationAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPolicyVirtualMachineConfigurationAssignment>`.
  RefTo<AzurermPolicyVirtualMachineConfigurationAssignment> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');
}
