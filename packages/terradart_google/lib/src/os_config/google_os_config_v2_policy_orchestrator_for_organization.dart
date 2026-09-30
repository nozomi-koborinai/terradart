// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

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

  final OsConfigV2PolicyOrchestratorForOrganizationOsPolicyAssignmentV1Payload?
  osPolicyAssignmentV1Payload;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'os_policy_assignment_v1_payload': ?osPolicyAssignmentV1Payload?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOsPolicyAssignmentV1Payload {
  const OsConfigV2PolicyOrchestratorForOrganizationOsPolicyAssignmentV1Payload({
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

  final OsConfigV2PolicyOrchestratorForOrganizationInstanceFilter
  instanceFilter;

  final List<OsConfigV2PolicyOrchestratorForOrganizationOsPolicies> osPolicies;

  final OsConfigV2PolicyOrchestratorForOrganizationRollout rollout;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'etag': ?etag?.toTfJson(),
    'name': ?name?.toTfJson(),
    'instance_filter': instanceFilter.encode(),
    'os_policies': [for (final e in osPolicies) e.encode()],
    'rollout': rollout.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationInstanceFilter {
  const OsConfigV2PolicyOrchestratorForOrganizationInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  final TfArg<bool>? all;

  final List<OsConfigV2PolicyOrchestratorForOrganizationExclusionLabels>?
  exclusionLabels;

  final List<OsConfigV2PolicyOrchestratorForOrganizationInclusionLabels>?
  inclusionLabels;

  final List<OsConfigV2PolicyOrchestratorForOrganizationInventories>?
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
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationExclusionLabels {
  const OsConfigV2PolicyOrchestratorForOrganizationExclusionLabels({
    this.labels,
  });

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {'labels': ?labels?.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.inclusion_labels` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationInclusionLabels {
  const OsConfigV2PolicyOrchestratorForOrganizationInclusionLabels({
    this.labels,
  });

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {'labels': ?labels?.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.inventories` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationInventories {
  const OsConfigV2PolicyOrchestratorForOrganizationInventories({
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
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOsPolicies {
  const OsConfigV2PolicyOrchestratorForOrganizationOsPolicies({
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

  final List<OsConfigV2PolicyOrchestratorForOrganizationResourceGroups>
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
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationResourceGroups {
  const OsConfigV2PolicyOrchestratorForOrganizationResourceGroups({
    this.inventoryFilters,
    required this.resources,
  });

  final List<OsConfigV2PolicyOrchestratorForOrganizationInventoryFilters>?
  inventoryFilters;

  final List<OsConfigV2PolicyOrchestratorForOrganizationResources> resources;

  Map<String, Object?> encode() => {
    if (inventoryFilters != null)
      'inventory_filters': [for (final e in inventoryFilters!) e.encode()],
    'resources': [for (final e in resources) e.encode()],
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.inventory_filters` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationInventoryFilters {
  const OsConfigV2PolicyOrchestratorForOrganizationInventoryFilters({
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
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationResources {
  const OsConfigV2PolicyOrchestratorForOrganizationResources({
    required this.id,
    this.exec,
    this.file,
    this.pkg,
    this.repository,
  });

  final TfArg<String> id;

  final OsConfigV2PolicyOrchestratorForOrganizationExec? exec;

  final OsConfigV2PolicyOrchestratorForOrganizationFile? file;

  final OsConfigV2PolicyOrchestratorForOrganizationPkg? pkg;

  final OsConfigV2PolicyOrchestratorForOrganizationRepository? repository;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'exec': ?exec?.encode(),
    'file': ?file?.encode(),
    'pkg': ?pkg?.encode(),
    'repository': ?repository?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationExec {
  const OsConfigV2PolicyOrchestratorForOrganizationExec({
    this.enforce,
    required this.validate,
  });

  final OsConfigV2PolicyOrchestratorForOrganizationEnforce? enforce;

  final OsConfigV2PolicyOrchestratorForOrganizationValidate validate;

  Map<String, Object?> encode() => {
    'enforce': ?enforce?.encode(),
    'validate': validate.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.enforce` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationEnforce {
  const OsConfigV2PolicyOrchestratorForOrganizationEnforce({
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

  final OsConfigV2PolicyOrchestratorForOrganizationFileFile? file;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'interpreter': interpreter.toTfJson(),
    'output_file_path': ?outputFilePath?.toTfJson(),
    'script': ?script?.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file.file` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationFileFile {
  const OsConfigV2PolicyOrchestratorForOrganizationFileFile({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorForOrganizationGcs? gcs;

  final OsConfigV2PolicyOrchestratorForOrganizationRemote? remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file.file.gcs` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationGcs {
  const OsConfigV2PolicyOrchestratorForOrganizationGcs({
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
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationRemote {
  const OsConfigV2PolicyOrchestratorForOrganizationRemote({
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
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationValidate {
  const OsConfigV2PolicyOrchestratorForOrganizationValidate({
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

  final OsConfigV2PolicyOrchestratorForOrganizationFileFile? file;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'interpreter': interpreter.toTfJson(),
    'output_file_path': ?outputFilePath?.toTfJson(),
    'script': ?script?.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationFile {
  const OsConfigV2PolicyOrchestratorForOrganizationFile({
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

  final OsConfigV2PolicyOrchestratorForOrganizationFileFile? file;

  Map<String, Object?> encode() => {
    'content': ?content?.toTfJson(),
    'path': path.toTfJson(),
    'permissions': ?permissions?.toTfJson(),
    'state': state.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationPkg {
  const OsConfigV2PolicyOrchestratorForOrganizationPkg({
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

  final OsConfigV2PolicyOrchestratorForOrganizationPkgApt? apt;

  final OsConfigV2PolicyOrchestratorForOrganizationDeb? deb;

  final OsConfigV2PolicyOrchestratorForOrganizationGooget? googet;

  final OsConfigV2PolicyOrchestratorForOrganizationMsi? msi;

  final OsConfigV2PolicyOrchestratorForOrganizationRpm? rpm;

  final OsConfigV2PolicyOrchestratorForOrganizationPkgYum? yum;

  final OsConfigV2PolicyOrchestratorForOrganizationPkgZypper? zypper;

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
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationPkgApt {
  const OsConfigV2PolicyOrchestratorForOrganizationPkgApt({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.deb` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationDeb {
  const OsConfigV2PolicyOrchestratorForOrganizationDeb({
    this.pullDeps,
    required this.source,
  });

  final TfArg<bool>? pullDeps;

  final OsConfigV2PolicyOrchestratorForOrganizationSource source;

  Map<String, Object?> encode() => {
    'pull_deps': ?pullDeps?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.deb.source` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationSource {
  const OsConfigV2PolicyOrchestratorForOrganizationSource({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorForOrganizationGcs? gcs;

  final OsConfigV2PolicyOrchestratorForOrganizationRemote? remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.googet` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationGooget {
  const OsConfigV2PolicyOrchestratorForOrganizationGooget({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.msi` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationMsi {
  const OsConfigV2PolicyOrchestratorForOrganizationMsi({
    this.properties,
    required this.source,
  });

  final TfArg<List<String>>? properties;

  final OsConfigV2PolicyOrchestratorForOrganizationSource source;

  Map<String, Object?> encode() => {
    'properties': ?properties?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.rpm` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationRpm {
  const OsConfigV2PolicyOrchestratorForOrganizationRpm({
    this.pullDeps,
    required this.source,
  });

  final TfArg<bool>? pullDeps;

  final OsConfigV2PolicyOrchestratorForOrganizationSource source;

  Map<String, Object?> encode() => {
    'pull_deps': ?pullDeps?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.yum` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationPkgYum {
  const OsConfigV2PolicyOrchestratorForOrganizationPkgYum({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.zypper` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationPkgZypper {
  const OsConfigV2PolicyOrchestratorForOrganizationPkgZypper({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationRepository {
  const OsConfigV2PolicyOrchestratorForOrganizationRepository({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  final OsConfigV2PolicyOrchestratorForOrganizationRepositoryApt? apt;

  final OsConfigV2PolicyOrchestratorForOrganizationGoo? goo;

  final OsConfigV2PolicyOrchestratorForOrganizationRepositoryYum? yum;

  final OsConfigV2PolicyOrchestratorForOrganizationRepositoryZypper? zypper;

  Map<String, Object?> encode() => {
    'apt': ?apt?.encode(),
    'goo': ?goo?.encode(),
    'yum': ?yum?.encode(),
    'zypper': ?zypper?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository.apt` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationRepositoryApt {
  const OsConfigV2PolicyOrchestratorForOrganizationRepositoryApt({
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
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationGoo {
  const OsConfigV2PolicyOrchestratorForOrganizationGoo({
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
final class OsConfigV2PolicyOrchestratorForOrganizationRepositoryYum {
  const OsConfigV2PolicyOrchestratorForOrganizationRepositoryYum({
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
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationRepositoryZypper {
  const OsConfigV2PolicyOrchestratorForOrganizationRepositoryZypper({
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
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationRollout {
  const OsConfigV2PolicyOrchestratorForOrganizationRollout({
    required this.minWaitDuration,
    required this.disruptionBudget,
  });

  final TfArg<String> minWaitDuration;

  final OsConfigV2PolicyOrchestratorForOrganizationDisruptionBudget
  disruptionBudget;

  Map<String, Object?> encode() => {
    'min_wait_duration': minWaitDuration.toTfJson(),
    'disruption_budget': disruptionBudget.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.rollout.disruption_budget` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationDisruptionBudget {
  const OsConfigV2PolicyOrchestratorForOrganizationDisruptionBudget({
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
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScope {
  const OsConfigV2PolicyOrchestratorForOrganizationOrchestrationScope({
    this.selectors,
  });

  final List<OsConfigV2PolicyOrchestratorForOrganizationSelectors>? selectors;

  Map<String, Object?> encode() => {
    if (selectors != null)
      'selectors': [for (final e in selectors!) e.encode()],
  };
}

/// Typed helper for the `orchestration_scope.selectors` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationSelectors {
  const OsConfigV2PolicyOrchestratorForOrganizationSelectors({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  final OsConfigV2PolicyOrchestratorForOrganizationLocationSelector?
  locationSelector;

  final OsConfigV2PolicyOrchestratorForOrganizationResourceHierarchySelector?
  resourceHierarchySelector;

  Map<String, Object?> encode() => {
    'location_selector': ?locationSelector?.encode(),
    'resource_hierarchy_selector': ?resourceHierarchySelector?.encode(),
  };
}

/// Typed helper for the `orchestration_scope.selectors.location_selector` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationLocationSelector {
  const OsConfigV2PolicyOrchestratorForOrganizationLocationSelector({
    this.includedLocations,
  });

  final TfArg<List<String>>? includedLocations;

  Map<String, Object?> encode() => {
    'included_locations': ?includedLocations?.toTfJson(),
  };
}

/// Typed helper for the `orchestration_scope.selectors.resource_hierarchy_selector` block of
/// `google_os_config_v2_policy_orchestrator_for_organization` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForOrganizationResourceHierarchySelector {
  const OsConfigV2PolicyOrchestratorForOrganizationResourceHierarchySelector({
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'labels': ?labels,
           'organization_id': organizationId,
           'policy_orchestrator_id': policyOrchestratorId,
           'state': ?state,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOsConfigV2PolicyOrchestratorForOrganization>`.
  RefTo<GoogleOsConfigV2PolicyOrchestratorForOrganization> get ref =>
      RefTo.of(this);

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

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationIdRef =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `policy_orchestrator_id` attribute.
  TfRef<String> get policyOrchestratorIdRef =>
      TfRef.attribute<String>(this, 'policy_orchestrator_id');

  /// Reference to `state` attribute.
  TfRef<String> get stateRef => TfRef.attribute<String>(this, 'state');
}
