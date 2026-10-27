// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_role_assignment`.
const Set<String> _azurermSynapseRoleAssignmentSensitive = <String>{};

/// Synapse Role Assignment Principal enum for `principal_type`.
extension type const SynapseRoleAssignmentPrincipalType._(TfArg<String> _)
    implements TfArg<String> {
  SynapseRoleAssignmentPrincipalType.variable(String name)
    : this._(TfArg.variable(name));
  SynapseRoleAssignmentPrincipalType.expression(String template)
    : this._(TfArg.expression(template));
  const SynapseRoleAssignmentPrincipalType.arg(TfArg<String> arg) : this._(arg);

  static const user = SynapseRoleAssignmentPrincipalType._(
    TfArgLiteral('User'),
  );
  static const group = SynapseRoleAssignmentPrincipalType._(
    TfArgLiteral('Group'),
  );
  static const serviceprincipal = SynapseRoleAssignmentPrincipalType._(
    TfArgLiteral('ServicePrincipal'),
  );

  static const List<SynapseRoleAssignmentPrincipalType> values = [
    user,
    group,
    serviceprincipal,
  ];
}

/// Synapse Role Assignment Role enum for `role_name`.
extension type const SynapseRoleAssignmentRoleName._(TfArg<String> _)
    implements TfArg<String> {
  SynapseRoleAssignmentRoleName.variable(String name)
    : this._(TfArg.variable(name));
  SynapseRoleAssignmentRoleName.expression(String template)
    : this._(TfArg.expression(template));
  const SynapseRoleAssignmentRoleName.arg(TfArg<String> arg) : this._(arg);

  static const apacheSparkAdministrator = SynapseRoleAssignmentRoleName._(
    TfArgLiteral('Apache Spark Administrator'),
  );
  static const synapseAdministrator = SynapseRoleAssignmentRoleName._(
    TfArgLiteral('Synapse Administrator'),
  );
  static const synapseArtifactPublisher = SynapseRoleAssignmentRoleName._(
    TfArgLiteral('Synapse Artifact Publisher'),
  );
  static const synapseArtifactUser = SynapseRoleAssignmentRoleName._(
    TfArgLiteral('Synapse Artifact User'),
  );
  static const synapseComputeOperator = SynapseRoleAssignmentRoleName._(
    TfArgLiteral('Synapse Compute Operator'),
  );
  static const synapseContributor = SynapseRoleAssignmentRoleName._(
    TfArgLiteral('Synapse Contributor'),
  );
  static const synapseCredentialUser = SynapseRoleAssignmentRoleName._(
    TfArgLiteral('Synapse Credential User'),
  );
  static const synapseLinkedDataManager = SynapseRoleAssignmentRoleName._(
    TfArgLiteral('Synapse Linked Data Manager'),
  );
  static const synapseMonitoringOperator = SynapseRoleAssignmentRoleName._(
    TfArgLiteral('Synapse Monitoring Operator'),
  );
  static const synapseSqlAdministrator = SynapseRoleAssignmentRoleName._(
    TfArgLiteral('Synapse SQL Administrator'),
  );
  static const synapseUser = SynapseRoleAssignmentRoleName._(
    TfArgLiteral('Synapse User'),
  );

  static const List<SynapseRoleAssignmentRoleName> values = [
    apacheSparkAdministrator,
    synapseAdministrator,
    synapseArtifactPublisher,
    synapseArtifactUser,
    synapseComputeOperator,
    synapseContributor,
    synapseCredentialUser,
    synapseLinkedDataManager,
    synapseMonitoringOperator,
    synapseSqlAdministrator,
    synapseUser,
  ];
}

/// Exactly one of `synapse_spark_pool_id`, `synapse_workspace_id` on `azurerm_synapse_role_assignment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.synapseSparkPoolId(...)`.
sealed class SynapseRoleAssignmentSynapse {
  const SynapseRoleAssignmentSynapse();

  /// Sets `synapse_spark_pool_id`.
  const factory SynapseRoleAssignmentSynapse.synapseSparkPoolId(
    TfArg<String> synapseSparkPoolId,
  ) = SynapseRoleAssignmentSynapseSparkPoolId;

  /// Sets `synapse_workspace_id`.
  const factory SynapseRoleAssignmentSynapse.synapseWorkspaceId(
    TfArg<String> synapseWorkspaceId,
  ) = SynapseRoleAssignmentSynapseWorkspaceId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SynapseRoleAssignmentSynapse.synapseSparkPoolId] choice: sets `synapse_spark_pool_id`.
final class SynapseRoleAssignmentSynapseSparkPoolId
    extends SynapseRoleAssignmentSynapse {
  const SynapseRoleAssignmentSynapseSparkPoolId(this.synapseSparkPoolId);

  final TfArg<String> synapseSparkPoolId;

  @internal
  @override
  String get blockKey => 'synapse_spark_pool_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'synapse_spark_pool_id': synapseSparkPoolId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'synapse_spark_pool_id': synapseSparkPoolId,
  };
}

/// The [SynapseRoleAssignmentSynapse.synapseWorkspaceId] choice: sets `synapse_workspace_id`.
final class SynapseRoleAssignmentSynapseWorkspaceId
    extends SynapseRoleAssignmentSynapse {
  const SynapseRoleAssignmentSynapseWorkspaceId(this.synapseWorkspaceId);

  final TfArg<String> synapseWorkspaceId;

  @internal
  @override
  String get blockKey => 'synapse_workspace_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'synapse_workspace_id': synapseWorkspaceId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'synapse_workspace_id': synapseWorkspaceId,
  };
}

/// Factory wrapper for `azurerm_synapse_role_assignment`.
final class AzurermSynapseRoleAssignment extends Resource {
  static const String tfType = 'azurerm_synapse_role_assignment';

  AzurermSynapseRoleAssignment(
    super.localName, {
    required TfArg<String> principalId,
    SynapseRoleAssignmentPrincipalType? principalType,
    required SynapseRoleAssignmentRoleName roleName,
    required SynapseRoleAssignmentSynapse synapse,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'principal_id': principalId,
           'principal_type': ?principalType,
           'role_name': roleName,
           ...synapse.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSynapseRoleAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseRoleAssignment>`.
  RefTo<AzurermSynapseRoleAssignment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalType =>
      TfRef.attribute<String>(this, 'principal_type');

  /// Reference to `role_name` attribute.
  TfRef<String> get roleName => TfRef.attribute<String>(this, 'role_name');

  /// Reference to `synapse_spark_pool_id` attribute.
  TfRef<String> get synapseSparkPoolId =>
      TfRef.attribute<String>(this, 'synapse_spark_pool_id');

  /// Reference to `synapse_workspace_id` attribute.
  TfRef<String> get synapseWorkspaceId =>
      TfRef.attribute<String>(this, 'synapse_workspace_id');
}
