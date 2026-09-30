// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_os_config_v2_policy_orchestrator`.
const Set<String> _googleOsConfigV2PolicyOrchestratorSensitive = <String>{};

/// Typed helper for the `orchestrated_resource` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResource {
  const OsConfigV2PolicyOrchestratorOrchestratedResource({
    this.id,
    this.osPolicyAssignmentV1Payload,
  });

  final TfArg<String>? id;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload?
  osPolicyAssignmentV1Payload;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'os_policy_assignment_v1_payload': ?osPolicyAssignmentV1Payload?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload({
    this.description,
    this.name,
    required this.instanceFilter,
    required this.osPolicies,
    required this.rollout,
  });

  final TfArg<String>? description;

  final TfArg<String>? name;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter
  instanceFilter;

  final List<
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicies
  >
  osPolicies;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout
  rollout;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': ?name?.toTfJson(),
    'instance_filter': instanceFilter.encode(),
    'os_policies': [for (final e in osPolicies) e.encode()],
    'rollout': rollout.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  final TfArg<bool>? all;

  final List<
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabels
  >?
  exclusionLabels;

  final List<
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabels
  >?
  inclusionLabels;

  final List<
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventories
  >?
  inventories;

  Map<String, Object?> encode() => {
    'all': ?all?.toTfJson(),
    if (exclusionLabels != null)
      'exclusion_labels': [for (final e in exclusionLabels!) e.encode()],
    if (inclusionLabels != null)
      'inclusion_labels': [for (final e in inclusionLabels!) e.encode()],
    if (inventories != null)
      'inventories': [for (final e in inventories!) e.encode()],
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.exclusion_labels` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabels {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabels({
    this.labels,
  });

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {'labels': ?labels?.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.inclusion_labels` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabels {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabels({
    this.labels,
  });

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {'labels': ?labels?.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.inventories` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventories {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventories({
    required this.osShortName,
    this.osVersion,
  });

  final TfArg<String> osShortName;

  final TfArg<String>? osVersion;

  Map<String, Object?> encode() => {
    'os_short_name': osShortName.toTfJson(),
    'os_version': ?osVersion?.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicies {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicies({
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
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroups
  >
  resourceGroups;

  Map<String, Object?> encode() => {
    'allow_no_resource_group_match': ?allowNoResourceGroupMatch?.toTfJson(),
    'description': ?description?.toTfJson(),
    'id': id.toTfJson(),
    'mode': mode.toTfJson(),
    'resource_groups': [for (final e in resourceGroups) e.encode()],
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroups {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroups({
    this.inventoryFilters,
    required this.resources,
  });

  final List<
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsInventoryFilters
  >?
  inventoryFilters;

  final List<
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResources
  >
  resources;

  Map<String, Object?> encode() => {
    if (inventoryFilters != null)
      'inventory_filters': [for (final e in inventoryFilters!) e.encode()],
    'resources': [for (final e in resources) e.encode()],
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.inventory_filters` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsInventoryFilters {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsInventoryFilters({
    required this.osShortName,
    this.osVersion,
  });

  final TfArg<String> osShortName;

  final TfArg<String>? osVersion;

  Map<String, Object?> encode() => {
    'os_short_name': osShortName.toTfJson(),
    'os_version': ?osVersion?.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResources {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResources({
    required this.id,
    this.exec,
    this.file,
    this.pkg,
    this.repository,
  });

  final TfArg<String> id;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExec?
  exec;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFile?
  file;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkg?
  pkg;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepository?
  repository;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'exec': ?exec?.encode(),
    'file': ?file?.encode(),
    'pkg': ?pkg?.encode(),
    'repository': ?repository?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExec {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExec({
    this.enforce,
    required this.validate,
  });

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforce?
  enforce;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidate
  validate;

  Map<String, Object?> encode() => {
    'enforce': ?enforce?.encode(),
    'validate': validate.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.enforce` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforce {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforce({
    this.args,
    required this.interpreter,
    this.outputFilePath,
    this.script,
    this.file,
  });

  final TfArg<List<String>>? args;

  final TfArg<String> interpreter;

  final TfArg<String>? outputFilePath;

  final TfArg<String>? script;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFile?
  file;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'interpreter': interpreter.toTfJson(),
    'output_file_path': ?outputFilePath?.toTfJson(),
    'script': ?script?.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.enforce.file` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFile {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFile({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFileGcs?
  gcs;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFileRemote?
  remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.enforce.file.gcs` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFileGcs {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.enforce.file.remote` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFileRemote {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecEnforceFileRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'sha256_checksum': ?sha256Checksum?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.validate` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidate {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidate({
    this.args,
    required this.interpreter,
    this.outputFilePath,
    this.script,
    this.file,
  });

  final TfArg<List<String>>? args;

  final TfArg<String> interpreter;

  final TfArg<String>? outputFilePath;

  final TfArg<String>? script;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFile?
  file;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'interpreter': interpreter.toTfJson(),
    'output_file_path': ?outputFilePath?.toTfJson(),
    'script': ?script?.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.validate.file` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFile {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFile({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFileGcs?
  gcs;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFileRemote?
  remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.validate.file.gcs` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFileGcs {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.validate.file.remote` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFileRemote {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesExecValidateFileRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'sha256_checksum': ?sha256Checksum?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFile {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFile({
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

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFile?
  file;

  Map<String, Object?> encode() => {
    'content': ?content?.toTfJson(),
    'path': path.toTfJson(),
    'permissions': ?permissions?.toTfJson(),
    'state': state.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file.file` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFile {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFile({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFileGcs?
  gcs;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFileRemote?
  remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file.file.gcs` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFileGcs {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file.file.remote` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFileRemote {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFileFileRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'sha256_checksum': ?sha256Checksum?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkg {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkg({
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

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgApt?
  apt;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDeb?
  deb;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgGooget?
  googet;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsi?
  msi;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpm?
  rpm;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgYum?
  yum;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgZypper?
  zypper;

  Map<String, Object?> encode() => {
    'desired_state': desiredState.toTfJson(),
    'apt': ?apt?.encode(),
    'deb': ?deb?.encode(),
    'googet': ?googet?.encode(),
    'msi': ?msi?.encode(),
    'rpm': ?rpm?.encode(),
    'yum': ?yum?.encode(),
    'zypper': ?zypper?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.apt` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgApt {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgApt({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.deb` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDeb {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDeb({
    this.pullDeps,
    required this.source,
  });

  final TfArg<bool>? pullDeps;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSource
  source;

  Map<String, Object?> encode() => {
    'pull_deps': ?pullDeps?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.deb.source` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSource {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSource({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSourceGcs?
  gcs;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSourceRemote?
  remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.deb.source.gcs` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSourceGcs {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSourceGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.deb.source.remote` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSourceRemote {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgDebSourceRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'sha256_checksum': ?sha256Checksum?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.googet` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgGooget {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgGooget({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.msi` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsi {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsi({
    this.properties,
    required this.source,
  });

  final TfArg<List<String>>? properties;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSource
  source;

  Map<String, Object?> encode() => {
    'properties': ?properties?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.msi.source` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSource {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSource({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSourceGcs?
  gcs;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSourceRemote?
  remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.msi.source.gcs` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSourceGcs {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSourceGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.msi.source.remote` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSourceRemote {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgMsiSourceRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'sha256_checksum': ?sha256Checksum?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.rpm` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpm {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpm({
    this.pullDeps,
    required this.source,
  });

  final TfArg<bool>? pullDeps;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSource
  source;

  Map<String, Object?> encode() => {
    'pull_deps': ?pullDeps?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.rpm.source` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSource {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSource({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSourceGcs?
  gcs;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSourceRemote?
  remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.rpm.source.gcs` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSourceGcs {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSourceGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.rpm.source.remote` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSourceRemote {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgRpmSourceRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'sha256_checksum': ?sha256Checksum?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.yum` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgYum {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgYum({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.zypper` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgZypper {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesPkgZypper({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepository {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepository({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryApt?
  apt;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryGoo?
  goo;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryYum?
  yum;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryZypper?
  zypper;

  Map<String, Object?> encode() => {
    'apt': ?apt?.encode(),
    'goo': ?goo?.encode(),
    'yum': ?yum?.encode(),
    'zypper': ?zypper?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository.apt` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryApt {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryApt({
    required this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  final TfArg<String> archiveType;

  final TfArg<List<String>> components;

  final TfArg<String> distribution;

  final TfArg<String>? gpgKey;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'archive_type': archiveType.toTfJson(),
    'components': components.toTfJson(),
    'distribution': distribution.toTfJson(),
    'gpg_key': ?gpgKey?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository.goo` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryGoo {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryGoo({
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
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryYum {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryYum({
    required this.baseUrl,
    this.displayName,
    this.gpgKeys,
    required this.id,
  });

  final TfArg<String> baseUrl;

  final TfArg<String>? displayName;

  final TfArg<List<String>>? gpgKeys;

  final TfArg<String> id;

  Map<String, Object?> encode() => {
    'base_url': baseUrl.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'gpg_keys': ?gpgKeys?.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository.zypper` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryZypper {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesRepositoryZypper({
    required this.baseUrl,
    this.displayName,
    this.gpgKeys,
    required this.id,
  });

  final TfArg<String> baseUrl;

  final TfArg<String>? displayName;

  final TfArg<List<String>>? gpgKeys;

  final TfArg<String> id;

  Map<String, Object?> encode() => {
    'base_url': baseUrl.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'gpg_keys': ?gpgKeys?.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.rollout` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout({
    required this.minWaitDuration,
    required this.disruptionBudget,
  });

  final TfArg<String> minWaitDuration;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget
  disruptionBudget;

  Map<String, Object?> encode() => {
    'min_wait_duration': minWaitDuration.toTfJson(),
    'disruption_budget': disruptionBudget.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.rollout.disruption_budget` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget({
    this.fixed,
    this.percent,
  });

  final TfArg<num>? fixed;

  final TfArg<num>? percent;

  Map<String, Object?> encode() => {
    'fixed': ?fixed?.toTfJson(),
    'percent': ?percent?.toTfJson(),
  };
}

/// Typed helper for the `orchestration_scope` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestrationScope {
  const OsConfigV2PolicyOrchestratorOrchestrationScope({this.selectors});

  final List<OsConfigV2PolicyOrchestratorOrchestrationScopeSelectors>?
  selectors;

  Map<String, Object?> encode() => {
    if (selectors != null)
      'selectors': [for (final e in selectors!) e.encode()],
  };
}

/// Typed helper for the `orchestration_scope.selectors` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestrationScopeSelectors {
  const OsConfigV2PolicyOrchestratorOrchestrationScopeSelectors({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  final OsConfigV2PolicyOrchestratorOrchestrationScopeSelectorsLocationSelector?
  locationSelector;

  final OsConfigV2PolicyOrchestratorOrchestrationScopeSelectorsResourceHierarchySelector?
  resourceHierarchySelector;

  Map<String, Object?> encode() => {
    'location_selector': ?locationSelector?.encode(),
    'resource_hierarchy_selector': ?resourceHierarchySelector?.encode(),
  };
}

/// Typed helper for the `orchestration_scope.selectors.location_selector` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestrationScopeSelectorsLocationSelector {
  const OsConfigV2PolicyOrchestratorOrchestrationScopeSelectorsLocationSelector({
    this.includedLocations,
  });

  final TfArg<List<String>>? includedLocations;

  Map<String, Object?> encode() => {
    'included_locations': ?includedLocations?.toTfJson(),
  };
}

/// Typed helper for the `orchestration_scope.selectors.resource_hierarchy_selector` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestrationScopeSelectorsResourceHierarchySelector {
  const OsConfigV2PolicyOrchestratorOrchestrationScopeSelectorsResourceHierarchySelector({
    this.includedFolders,
    this.includedProjects,
  });

  final TfArg<List<String>>? includedFolders;

  final TfArg<List<String>>? includedProjects;

  Map<String, Object?> encode() => {
    'included_folders': ?includedFolders?.toTfJson(),
    'included_projects': ?includedProjects?.toTfJson(),
  };
}

/// Factory wrapper for `google_os_config_v2_policy_orchestrator`.
///
/// PolicyOrchestrator helps managing project+zone level policy resources (e.g.
/// OS Policy Assignments), by providing tools to create, update and delete them
/// across projects and locations, at scale.
///
/// OS Config v2 **policy orchestrator** — stores a project-scoped recipe
/// that can create, update, or delete zonal OS policy assignments.
///
/// Set [state] to `STOPPED` so the orchestrator is stored but **does not
/// create any OS policy assignments** (Google: STOPPED = won't make any
/// changes). `ACTIVE` + `UPSERT` would fan out assignments across zones
/// and is not used in apply-smoke.
///
/// Enable `osconfig.googleapis.com` via [GoogleProjectService] before
/// apply. Set [deletionPolicy] to `DELETE` so destroy removes the unused
/// orchestrator.
///
/// Example:
/// ```dart
/// GoogleOsConfigV2PolicyOrchestrator(
///   localName: 'stopped',
///   policyOrchestratorId: TfArg.literal('terradart-po'),
///   action: TfArg.literal('UPSERT'),
///   state: TfArg.literal('STOPPED'),
///   orchestratedResource: OsConfigV2PolicyOrchestratorOrchestratedResource(
///     osPolicyAssignmentV1Payload:
///         OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload(
///       osPolicies: [
///         OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicies(
///           id: TfArg.literal('test-os-policy'),
///           mode: TfArg.literal('VALIDATION'),
///           resourceGroups: [
///             OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroups(
///               resources: [
///                 OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResources(
///                   id: .literal('resource-tf'),
///                   file:
///                       OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsResourcesFile(
///                     content: .literal('file-content-tf'),
///                     path: .literal('file-path-tf-1'),
///                     state: .literal('PRESENT'),
///                   ),
///                 ),
///               ],
///             ),
///           ],
///         ),
///       ],
///       instanceFilter:
///           OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter(
///         inventories: [
///           OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventories(
///             osShortName: TfArg.literal('windows-10'),
///           ),
///         ],
///       ),
///       rollout:
///           OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout(
///         disruptionBudget:
///             OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget(
///           percent: TfArg.literal(100),
///         ),
///         minWaitDuration: TfArg.literal('60s'),
///       ),
///     ),
///   ),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleOsConfigV2PolicyOrchestrator extends Resource {
  static const String tfType = 'google_os_config_v2_policy_orchestrator';

  GoogleOsConfigV2PolicyOrchestrator({
    required super.localName,
    required TfArg<String> policyOrchestratorId,
    required TfArg<String> action,
    required OsConfigV2PolicyOrchestratorOrchestratedResource
    orchestratedResource,
    TfArg<String>? state,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    OsConfigV2PolicyOrchestratorOrchestrationScope? orchestrationScope,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_orchestrator_id': policyOrchestratorId,
           'action': action,
           'orchestrated_resource': TfArg.literal(
             orchestratedResource.encode(),
           ),
           'state': ?state,
           'description': ?description,
           'labels': ?labels,
           if (orchestrationScope != null)
             'orchestration_scope': TfArg.literal(orchestrationScope.encode()),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOsConfigV2PolicyOrchestratorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOsConfigV2PolicyOrchestrator>`.
  RefTo<GoogleOsConfigV2PolicyOrchestrator> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

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

  /// Reference to `action` attribute.
  TfRef<String> get actionRef => TfRef.attribute<String>(this, 'action');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `policy_orchestrator_id` attribute.
  TfRef<String> get policyOrchestratorIdRef =>
      TfRef.attribute<String>(this, 'policy_orchestrator_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `state` attribute.
  TfRef<String> get stateRef => TfRef.attribute<String>(this, 'state');
}
