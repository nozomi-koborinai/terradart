// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_os_config_v2_policy_orchestrator_for_organization`.
const Set<String> _googleOsConfigV2PolicyOrchestratorForOrganizationSensitive =
    <String>{};

/// Typed helper for the `orchestrated_resource` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResource {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResource({
    this.id,
    this.osPolicyAssignmentV1Payload,
  });

  final TfArg<String>? id;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1Payload?
  osPolicyAssignmentV1Payload;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (osPolicyAssignmentV1Payload != null)
      'os_policy_assignment_v1_payload': osPolicyAssignmentV1Payload!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1Payload {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1Payload({
    this.description,
    this.etag,
    this.name,
    required this.instanceFilter,
    required this.osPolicies,
    required this.rollout,
  });

  final TfArg<String>? description;

  final TfArg<String>? etag;

  final TfArg<String>? name;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter
  instanceFilter;

  final List<
    OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicies
  >
  osPolicies;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRollout
  rollout;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (etag != null) 'etag': etag!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    'instance_filter': instanceFilter.encode(),
    'os_policies': [for (final e in osPolicies) e.encode()],
    'rollout': rollout.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  final TfArg<bool>? all;

  final List<
    OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabels
  >?
  exclusionLabels;

  final List<
    OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabels
  >?
  inclusionLabels;

  final List<
    OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventories
  >?
  inventories;

  Map<String, Object?> encode() => {
    if (all != null) 'all': all!.toTfJson(),
    if (exclusionLabels != null)
      'exclusion_labels': [for (final e in exclusionLabels!) e.encode()],
    if (inclusionLabels != null)
      'inclusion_labels': [for (final e in inclusionLabels!) e.encode()],
    if (inventories != null)
      'inventories': [for (final e in inventories!) e.encode()],
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.exclusion_labels` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabels {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabels({
    this.labels,
  });

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.inclusion_labels` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabels {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabels({
    this.labels,
  });

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.inventories` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventories {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventories({
    required this.osShortName,
    this.osVersion,
  });

  final TfArg<String> osShortName;

  final TfArg<String>? osVersion;

  Map<String, Object?> encode() => {
    'os_short_name': osShortName.toTfJson(),
    if (osVersion != null) 'os_version': osVersion!.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicies {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicies({
    this.allowNoResourceGroupMatch,
    this.description,
    required this.id,
    required this.mode,
    required this.resourceGroups,
  });

  final TfArg<bool>? allowNoResourceGroupMatch;

  final TfArg<String>? description;

  final TfArg<String> id;

  final TfArg<String> mode;

  final List<
    OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroups
  >
  resourceGroups;

  Map<String, Object?> encode() => {
    if (allowNoResourceGroupMatch != null)
      'allow_no_resource_group_match': allowNoResourceGroupMatch!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    'id': id.toTfJson(),
    'mode': mode.toTfJson(),
    'resource_groups': [for (final e in resourceGroups) e.encode()],
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroups {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroups({
    this.inventoryFilters,
    required this.resources,
  });

  final List<
    OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsInventoryFilters
  >?
  inventoryFilters;

  final List<
    OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResources
  >
  resources;

  Map<String, Object?> encode() => {
    if (inventoryFilters != null)
      'inventory_filters': [for (final e in inventoryFilters!) e.encode()],
    'resources': [for (final e in resources) e.encode()],
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.inventory_filters` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsInventoryFilters {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsInventoryFilters({
    required this.osShortName,
    this.osVersion,
  });

  final TfArg<String> osShortName;

  final TfArg<String>? osVersion;

  Map<String, Object?> encode() => {
    'os_short_name': osShortName.toTfJson(),
    if (osVersion != null) 'os_version': osVersion!.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResources {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResources({
    required this.id,
    this.exec,
    this.file,
    this.pkg,
    this.repository,
  });

  final TfArg<String> id;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExec?
  exec;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFile?
  file;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkg?
  pkg;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepository?
  repository;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (exec != null) 'exec': exec!.encode(),
    if (file != null) 'file': file!.encode(),
    if (pkg != null) 'pkg': pkg!.encode(),
    if (repository != null) 'repository': repository!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExec {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExec({
    this.enforce,
    required this.validate,
  });

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforce?
  enforce;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidate
  validate;

  Map<String, Object?> encode() => {
    if (enforce != null) 'enforce': enforce!.encode(),
    'validate': validate.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.enforce` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforce {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforce({
    this.args,
    required this.interpreter,
    this.outputFilePath,
    this.script,
    this.file,
  });

  final TfArg<List<Object?>>? args;

  final TfArg<String> interpreter;

  final TfArg<String>? outputFilePath;

  final TfArg<String>? script;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFile?
  file;

  Map<String, Object?> encode() => {
    if (args != null) 'args': args!.toTfJson(),
    'interpreter': interpreter.toTfJson(),
    if (outputFilePath != null) 'output_file_path': outputFilePath!.toTfJson(),
    if (script != null) 'script': script!.toTfJson(),
    if (file != null) 'file': file!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.enforce.file` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFile {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFile({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFileGcs?
  gcs;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFileRemote?
  remote;

  Map<String, Object?> encode() => {
    if (allowInsecure != null) 'allow_insecure': allowInsecure!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (gcs != null) 'gcs': gcs!.encode(),
    if (remote != null) 'remote': remote!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.enforce.file.gcs` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFileGcs {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final TfArg<String> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (generation != null) 'generation': generation!.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.enforce.file.remote` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFileRemote {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFileRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    if (sha256Checksum != null) 'sha256_checksum': sha256Checksum!.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.validate` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidate {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidate({
    this.args,
    required this.interpreter,
    this.outputFilePath,
    this.script,
    this.file,
  });

  final TfArg<List<Object?>>? args;

  final TfArg<String> interpreter;

  final TfArg<String>? outputFilePath;

  final TfArg<String>? script;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFile?
  file;

  Map<String, Object?> encode() => {
    if (args != null) 'args': args!.toTfJson(),
    'interpreter': interpreter.toTfJson(),
    if (outputFilePath != null) 'output_file_path': outputFilePath!.toTfJson(),
    if (script != null) 'script': script!.toTfJson(),
    if (file != null) 'file': file!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.validate.file` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFile {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFile({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFileGcs?
  gcs;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFileRemote?
  remote;

  Map<String, Object?> encode() => {
    if (allowInsecure != null) 'allow_insecure': allowInsecure!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (gcs != null) 'gcs': gcs!.encode(),
    if (remote != null) 'remote': remote!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.validate.file.gcs` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFileGcs {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final TfArg<String> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (generation != null) 'generation': generation!.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.validate.file.remote` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFileRemote {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFileRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    if (sha256Checksum != null) 'sha256_checksum': sha256Checksum!.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFile {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFile({
    this.content,
    required this.path,
    this.permissions,
    required this.state,
    this.file,
  });

  final TfArg<String>? content;

  final TfArg<String> path;

  final TfArg<String>? permissions;

  final TfArg<String> state;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFile?
  file;

  Map<String, Object?> encode() => {
    if (content != null) 'content': content!.toTfJson(),
    'path': path.toTfJson(),
    if (permissions != null) 'permissions': permissions!.toTfJson(),
    'state': state.toTfJson(),
    if (file != null) 'file': file!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file.file` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFile {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFile({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFileGcs?
  gcs;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFileRemote?
  remote;

  Map<String, Object?> encode() => {
    if (allowInsecure != null) 'allow_insecure': allowInsecure!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (gcs != null) 'gcs': gcs!.encode(),
    if (remote != null) 'remote': remote!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file.file.gcs` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFileGcs {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final TfArg<String> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (generation != null) 'generation': generation!.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file.file.remote` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFileRemote {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFileRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    if (sha256Checksum != null) 'sha256_checksum': sha256Checksum!.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkg {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkg({
    required this.desiredState,
    this.apt,
    this.deb,
    this.googet,
    this.msi,
    this.rpm,
    this.yum,
    this.zypper,
  });

  final TfArg<String> desiredState;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgApt?
  apt;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDeb?
  deb;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgGooget?
  googet;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsi?
  msi;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpm?
  rpm;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgYum?
  yum;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgZypper?
  zypper;

  Map<String, Object?> encode() => {
    'desired_state': desiredState.toTfJson(),
    if (apt != null) 'apt': apt!.encode(),
    if (deb != null) 'deb': deb!.encode(),
    if (googet != null) 'googet': googet!.encode(),
    if (msi != null) 'msi': msi!.encode(),
    if (rpm != null) 'rpm': rpm!.encode(),
    if (yum != null) 'yum': yum!.encode(),
    if (zypper != null) 'zypper': zypper!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.apt` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgApt {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgApt({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.deb` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDeb {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDeb({
    this.pullDeps,
    required this.source,
  });

  final TfArg<bool>? pullDeps;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSource
  source;

  Map<String, Object?> encode() => {
    if (pullDeps != null) 'pull_deps': pullDeps!.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.deb.source` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSource {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSource({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSourceGcs?
  gcs;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSourceRemote?
  remote;

  Map<String, Object?> encode() => {
    if (allowInsecure != null) 'allow_insecure': allowInsecure!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (gcs != null) 'gcs': gcs!.encode(),
    if (remote != null) 'remote': remote!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.deb.source.gcs` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSourceGcs {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSourceGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final TfArg<String> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (generation != null) 'generation': generation!.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.deb.source.remote` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSourceRemote {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSourceRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    if (sha256Checksum != null) 'sha256_checksum': sha256Checksum!.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.googet` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgGooget {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgGooget({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.msi` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsi {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsi({
    this.properties,
    required this.source,
  });

  final TfArg<List<Object?>>? properties;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSource
  source;

  Map<String, Object?> encode() => {
    if (properties != null) 'properties': properties!.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.msi.source` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSource {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSource({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSourceGcs?
  gcs;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSourceRemote?
  remote;

  Map<String, Object?> encode() => {
    if (allowInsecure != null) 'allow_insecure': allowInsecure!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (gcs != null) 'gcs': gcs!.encode(),
    if (remote != null) 'remote': remote!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.msi.source.gcs` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSourceGcs {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSourceGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final TfArg<String> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (generation != null) 'generation': generation!.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.msi.source.remote` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSourceRemote {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSourceRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    if (sha256Checksum != null) 'sha256_checksum': sha256Checksum!.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.rpm` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpm {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpm({
    this.pullDeps,
    required this.source,
  });

  final TfArg<bool>? pullDeps;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSource
  source;

  Map<String, Object?> encode() => {
    if (pullDeps != null) 'pull_deps': pullDeps!.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.rpm.source` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSource {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSource({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSourceGcs?
  gcs;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSourceRemote?
  remote;

  Map<String, Object?> encode() => {
    if (allowInsecure != null) 'allow_insecure': allowInsecure!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (gcs != null) 'gcs': gcs!.encode(),
    if (remote != null) 'remote': remote!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.rpm.source.gcs` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSourceGcs {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSourceGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final TfArg<String> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (generation != null) 'generation': generation!.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.rpm.source.remote` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSourceRemote {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSourceRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    if (sha256Checksum != null) 'sha256_checksum': sha256Checksum!.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.yum` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgYum {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgYum({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.zypper` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgZypper {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgZypper({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepository {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepository({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryApt?
  apt;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryGoo?
  goo;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryYum?
  yum;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryZypper?
  zypper;

  Map<String, Object?> encode() => {
    if (apt != null) 'apt': apt!.encode(),
    if (goo != null) 'goo': goo!.encode(),
    if (yum != null) 'yum': yum!.encode(),
    if (zypper != null) 'zypper': zypper!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository.apt` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryApt {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryApt({
    required this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  final TfArg<String> archiveType;

  final TfArg<List<Object?>> components;

  final TfArg<String> distribution;

  final TfArg<String>? gpgKey;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'archive_type': archiveType.toTfJson(),
    'components': components.toTfJson(),
    'distribution': distribution.toTfJson(),
    if (gpgKey != null) 'gpg_key': gpgKey!.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository.goo` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryGoo {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryGoo({
    required this.name,
    required this.url,
  });

  final TfArg<String> name;

  final TfArg<String> url;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository.yum` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryYum {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryYum({
    required this.baseUrl,
    this.displayName,
    this.gpgKeys,
    required this.id,
  });

  final TfArg<String> baseUrl;

  final TfArg<String>? displayName;

  final TfArg<List<Object?>>? gpgKeys;

  final TfArg<String> id;

  Map<String, Object?> encode() => {
    'base_url': baseUrl.toTfJson(),
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (gpgKeys != null) 'gpg_keys': gpgKeys!.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository.zypper` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryZypper {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryZypper({
    required this.baseUrl,
    this.displayName,
    this.gpgKeys,
    required this.id,
  });

  final TfArg<String> baseUrl;

  final TfArg<String>? displayName;

  final TfArg<List<Object?>>? gpgKeys;

  final TfArg<String> id;

  Map<String, Object?> encode() => {
    'base_url': baseUrl.toTfJson(),
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (gpgKeys != null) 'gpg_keys': gpgKeys!.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.rollout` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRollout {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRollout({
    required this.minWaitDuration,
    required this.disruptionBudget,
  });

  final TfArg<String> minWaitDuration;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget
  disruptionBudget;

  Map<String, Object?> encode() => {
    'min_wait_duration': minWaitDuration.toTfJson(),
    'disruption_budget': disruptionBudget.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.rollout.disruption_budget` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget({
    this.fixed,
    this.percent,
  });

  final TfArg<num>? fixed;

  final TfArg<num>? percent;

  Map<String, Object?> encode() => {
    if (fixed != null) 'fixed': fixed!.toTfJson(),
    if (percent != null) 'percent': percent!.toTfJson(),
  };
}

/// Typed helper for the `orchestration_scope` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScope {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScope({
    this.selectors,
  });

  final List<
    OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScopeSelectors
  >?
  selectors;

  Map<String, Object?> encode() => {
    if (selectors != null)
      'selectors': [for (final e in selectors!) e.encode()],
  };
}

/// Typed helper for the `orchestration_scope.selectors` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScopeSelectors {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScopeSelectors({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorsLocationSelector?
  locationSelector;

  final OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorsResourceHierarchySelector?
  resourceHierarchySelector;

  Map<String, Object?> encode() => {
    if (locationSelector != null)
      'location_selector': locationSelector!.encode(),
    if (resourceHierarchySelector != null)
      'resource_hierarchy_selector': resourceHierarchySelector!.encode(),
  };
}

/// Typed helper for the `orchestration_scope.selectors.location_selector` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorsLocationSelector {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorsLocationSelector({
    this.includedLocations,
  });

  final TfArg<List<Object?>>? includedLocations;

  Map<String, Object?> encode() => {
    if (includedLocations != null)
      'included_locations': includedLocations!.toTfJson(),
  };
}

/// Typed helper for the `orchestration_scope.selectors.resource_hierarchy_selector` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorsResourceHierarchySelector {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorsResourceHierarchySelector({
    this.includedFolders,
    this.includedProjects,
  });

  final TfArg<List<Object?>>? includedFolders;

  final TfArg<List<Object?>>? includedProjects;

  Map<String, Object?> encode() => {
    if (includedFolders != null)
      'included_folders': includedFolders!.toTfJson(),
    if (includedProjects != null)
      'included_projects': includedProjects!.toTfJson(),
  };
}

/// Factory wrapper for `google_os_config_v2_policy_orchestrator_for_organization`.
///
/// PolicyOrchestrator helps managing project+zone level policy resources (e.g.
/// OS Policy Assignments), by providing tools to create, update and delete them
/// across projects and locations, at scale.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleOsConfigV2PolicyOrchestratorForOrganization extends Resource {
  static const String tfType =
      'google_os_config_v2_policy_orchestrator_for_organization';

  GoogleOsConfigV2PolicyOrchestratorForOrganization({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> organizationId,
    required TfArg<String> policyOrchestratorId,
    TfArg<String>? state,
    required OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResource
    orchestratedResource,
    OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScope?
    orchestrationScope,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           'organization_id': organizationId,
           'policy_orchestrator_id': policyOrchestratorId,
           if (state != null) 'state': state,
           'orchestrated_resource': TfArg.literal(
             orchestratedResource.encode(),
           ),
           if (orchestrationScope != null)
             'orchestration_scope': TfArg.literal(orchestrationScope.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOsConfigV2PolicyOrchestratorForOrganizationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `orchestration_state` attribute.
  TfRef<List<Map<String, Object?>>> get orchestrationState =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'orchestration_state');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
