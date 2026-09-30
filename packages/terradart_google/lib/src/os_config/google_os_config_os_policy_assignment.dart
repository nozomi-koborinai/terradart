// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_os_config_os_policy_assignment`.
const Set<String> _googleOsConfigOsPolicyAssignmentSensitive = <String>{};

/// Typed helper for the `instance_filter` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentInstanceFilter {
  const OsConfigOsPolicyAssignmentInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  final TfArg<bool>? all;

  final List<OsConfigOsPolicyAssignmentInstanceFilterExclusionLabels>?
  exclusionLabels;

  final List<OsConfigOsPolicyAssignmentInstanceFilterInclusionLabels>?
  inclusionLabels;

  final List<OsConfigOsPolicyAssignmentInstanceFilterInventories>? inventories;

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

/// Typed helper for the `instance_filter.exclusion_labels` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentInstanceFilterExclusionLabels {
  const OsConfigOsPolicyAssignmentInstanceFilterExclusionLabels({this.labels});

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {'labels': ?labels?.toTfJson()};
}

/// Typed helper for the `instance_filter.inclusion_labels` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentInstanceFilterInclusionLabels {
  const OsConfigOsPolicyAssignmentInstanceFilterInclusionLabels({this.labels});

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {'labels': ?labels?.toTfJson()};
}

/// Typed helper for the `instance_filter.inventories` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentInstanceFilterInventories {
  const OsConfigOsPolicyAssignmentInstanceFilterInventories({
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

/// Typed helper for the `os_policies` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPolicies {
  const OsConfigOsPolicyAssignmentOsPolicies({
    this.allowNoResourceGroupMatch,
    this.description,
    required this.id,
    required this.mode,
    required this.resourceGroups,
  });

  final TfArg<bool>? allowNoResourceGroupMatch;

  final TfArg<String>? description;

  final TfArg<String> id;

  final TfArg<OsConfigOsPolicyAssignmentOsPoliciesMode> mode;

  final List<OsConfigOsPolicyAssignmentOsPoliciesResourceGroups> resourceGroups;

  Map<String, Object?> encode() => {
    'allow_no_resource_group_match': ?allowNoResourceGroupMatch?.toTfJson(),
    'description': ?description?.toTfJson(),
    'id': id.toTfJson(),
    'mode': mode.toTfJson(),
    'resource_groups': [for (final e in resourceGroups) e.encode()],
  };
}

/// `mode` — derived from the provider schema description.
enum OsConfigOsPolicyAssignmentOsPoliciesMode implements TerraformEnum {
  modeUnspecified('MODE_UNSPECIFIED'),
  validation('VALIDATION'),
  enforcement('ENFORCEMENT');

  const OsConfigOsPolicyAssignmentOsPoliciesMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `os_policies.resource_groups` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroups {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroups({
    this.inventoryFilters,
    required this.resources,
  });

  final List<
    OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsInventoryFilters
  >?
  inventoryFilters;

  final List<OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResources>
  resources;

  Map<String, Object?> encode() => {
    if (inventoryFilters != null)
      'inventory_filters': [for (final e in inventoryFilters!) e.encode()],
    'resources': [for (final e in resources) e.encode()],
  };
}

/// Typed helper for the `os_policies.resource_groups.inventory_filters` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsInventoryFilters {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsInventoryFilters({
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

/// Typed helper for the `os_policies.resource_groups.resources` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResources {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResources({
    required this.id,
    this.exec,
    this.file,
    this.pkg,
    this.repository,
  });

  final TfArg<String> id;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExec? exec;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFile? file;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkg? pkg;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepository?
  repository;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'exec': ?exec?.encode(),
    'file': ?file?.encode(),
    'pkg': ?pkg?.encode(),
    'repository': ?repository?.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.exec` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExec {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExec({
    this.enforce,
    required this.validate,
  });

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforce?
  enforce;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidate
  validate;

  Map<String, Object?> encode() => {
    'enforce': ?enforce?.encode(),
    'validate': validate.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.exec.enforce` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforce {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforce({
    this.args,
    required this.interpreter,
    this.outputFilePath,
    this.script,
    this.file,
  });

  final TfArg<List<String>>? args;

  final TfArg<
    OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforceInterpreter
  >
  interpreter;

  final TfArg<String>? outputFilePath;

  final TfArg<String>? script;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforceFile?
  file;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'interpreter': interpreter.toTfJson(),
    'output_file_path': ?outputFilePath?.toTfJson(),
    'script': ?script?.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// `interpreter` — derived from the provider schema description.
enum OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforceInterpreter
    implements TerraformEnum {
  interpreterUnspecified('INTERPRETER_UNSPECIFIED'),
  none('NONE'),
  shell('SHELL'),
  powershell('POWERSHELL');

  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforceInterpreter(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `os_policies.resource_groups.resources.exec.enforce.file` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforceFile {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforceFile({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforceFileGcs?
  gcs;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforceFileRemote?
  remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.exec.enforce.file.gcs` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforceFileGcs {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforceFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<num>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.exec.enforce.file.remote` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforceFileRemote {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecEnforceFileRemote({
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

/// Typed helper for the `os_policies.resource_groups.resources.exec.validate` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidate {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidate({
    this.args,
    required this.interpreter,
    this.outputFilePath,
    this.script,
    this.file,
  });

  final TfArg<List<String>>? args;

  final TfArg<
    OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidateInterpreter
  >
  interpreter;

  final TfArg<String>? outputFilePath;

  final TfArg<String>? script;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidateFile?
  file;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'interpreter': interpreter.toTfJson(),
    'output_file_path': ?outputFilePath?.toTfJson(),
    'script': ?script?.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// `interpreter` — derived from the provider schema description.
enum OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidateInterpreter
    implements TerraformEnum {
  interpreterUnspecified('INTERPRETER_UNSPECIFIED'),
  none('NONE'),
  shell('SHELL'),
  powershell('POWERSHELL');

  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidateInterpreter(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `os_policies.resource_groups.resources.exec.validate.file` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidateFile {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidateFile({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidateFileGcs?
  gcs;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidateFileRemote?
  remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.exec.validate.file.gcs` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidateFileGcs {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidateFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<num>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.exec.validate.file.remote` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidateFileRemote {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesExecValidateFileRemote({
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

/// Typed helper for the `os_policies.resource_groups.resources.file` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFile {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFile({
    this.content,
    required this.path,
    required this.state,
    this.file,
  });

  final TfArg<String>? content;

  final TfArg<String> path;

  final TfArg<
    OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFileState
  >
  state;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFileFile?
  file;

  Map<String, Object?> encode() => {
    'content': ?content?.toTfJson(),
    'path': path.toTfJson(),
    'state': state.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// `state` — derived from the provider schema description.
enum OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFileState
    implements TerraformEnum {
  desiredStateUnspecified('DESIRED_STATE_UNSPECIFIED'),
  present('PRESENT'),
  absent('ABSENT'),
  contentsMatch('CONTENTS_MATCH');

  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFileState(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `os_policies.resource_groups.resources.file.file` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFileFile {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFileFile({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFileFileGcs?
  gcs;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFileFileRemote?
  remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.file.file.gcs` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFileFileGcs {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFileFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<num>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.file.file.remote` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFileFileRemote {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesFileFileRemote({
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

/// Typed helper for the `os_policies.resource_groups.resources.pkg` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkg {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkg({
    required this.desiredState,
    this.apt,
    this.deb,
    this.googet,
    this.msi,
    this.rpm,
    this.yum,
    this.zypper,
  });

  final TfArg<
    OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDesiredState
  >
  desiredState;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgApt? apt;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDeb? deb;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgGooget?
  googet;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgMsi? msi;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgRpm? rpm;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgYum? yum;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgZypper?
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

/// `desired_state` — derived from the provider schema description.
enum OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDesiredState
    implements TerraformEnum {
  desiredStateUnspecified('DESIRED_STATE_UNSPECIFIED'),
  installed('INSTALLED'),
  removed('REMOVED');

  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDesiredState(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.apt` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgApt {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgApt({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.deb` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDeb {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDeb({
    this.pullDeps,
    required this.source,
  });

  final TfArg<bool>? pullDeps;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDebSource
  source;

  Map<String, Object?> encode() => {
    'pull_deps': ?pullDeps?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.deb.source` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDebSource {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDebSource({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDebSourceGcs?
  gcs;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDebSourceRemote?
  remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.deb.source.gcs` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDebSourceGcs {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDebSourceGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<num>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.deb.source.remote` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDebSourceRemote {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgDebSourceRemote({
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

/// Typed helper for the `os_policies.resource_groups.resources.pkg.googet` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgGooget {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgGooget({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.msi` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgMsi {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgMsi({
    this.properties,
    required this.source,
  });

  final TfArg<List<String>>? properties;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgMsiSource
  source;

  Map<String, Object?> encode() => {
    'properties': ?properties?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.msi.source` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgMsiSource {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgMsiSource({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgMsiSourceGcs?
  gcs;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgMsiSourceRemote?
  remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.msi.source.gcs` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgMsiSourceGcs {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgMsiSourceGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<num>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.msi.source.remote` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgMsiSourceRemote {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgMsiSourceRemote({
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

/// Typed helper for the `os_policies.resource_groups.resources.pkg.rpm` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgRpm {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgRpm({
    this.pullDeps,
    required this.source,
  });

  final TfArg<bool>? pullDeps;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgRpmSource
  source;

  Map<String, Object?> encode() => {
    'pull_deps': ?pullDeps?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.rpm.source` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgRpmSource {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgRpmSource({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgRpmSourceGcs?
  gcs;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgRpmSourceRemote?
  remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.rpm.source.gcs` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgRpmSourceGcs {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgRpmSourceGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<num>? generation;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.rpm.source.remote` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgRpmSourceRemote {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgRpmSourceRemote({
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

/// Typed helper for the `os_policies.resource_groups.resources.pkg.yum` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgYum {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgYum({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.zypper` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgZypper {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesPkgZypper({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `os_policies.resource_groups.resources.repository` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepository {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepository({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryApt?
  apt;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryGoo?
  goo;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryYum?
  yum;

  final OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryZypper?
  zypper;

  Map<String, Object?> encode() => {
    'apt': ?apt?.encode(),
    'goo': ?goo?.encode(),
    'yum': ?yum?.encode(),
    'zypper': ?zypper?.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.repository.apt` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryApt {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryApt({
    required this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  final TfArg<
    OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryAptArchiveType
  >
  archiveType;

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

/// `archive_type` — derived from the provider schema description.
enum OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryAptArchiveType
    implements TerraformEnum {
  archiveTypeUnspecified('ARCHIVE_TYPE_UNSPECIFIED'),
  deb('DEB'),
  debSrc('DEB_SRC');

  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryAptArchiveType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `os_policies.resource_groups.resources.repository.goo` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryGoo {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryGoo({
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

/// Typed helper for the `os_policies.resource_groups.resources.repository.yum` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryYum {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryYum({
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

/// Typed helper for the `os_policies.resource_groups.resources.repository.zypper` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryZypper {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsResourcesRepositoryZypper({
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

/// Typed helper for the `rollout` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentRollout {
  const OsConfigOsPolicyAssignmentRollout({
    required this.minWaitDuration,
    required this.disruptionBudget,
  });

  final TfArg<String> minWaitDuration;

  final OsConfigOsPolicyAssignmentRolloutDisruptionBudget disruptionBudget;

  Map<String, Object?> encode() => {
    'min_wait_duration': minWaitDuration.toTfJson(),
    'disruption_budget': disruptionBudget.encode(),
  };
}

/// Typed helper for the `rollout.disruption_budget` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentRolloutDisruptionBudget {
  const OsConfigOsPolicyAssignmentRolloutDisruptionBudget({
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

/// Factory wrapper for `google_os_config_os_policy_assignment`.
///
/// OS Config OS policy assignment — bundles OS policies and rolls them out
/// to a filtered set of VM instances in a zone.
///
/// Enable `osconfig.googleapis.com` via [GoogleProjectService] before apply.
/// Requires `location` (zone), `name`, `os_policies`, `instance_filter`, and
/// `rollout` blocks.
///
/// Example:
/// ```dart
/// GoogleOsConfigOsPolicyAssignment(
///   localName: 'baseline',
///   name: TfArg.literal('baseline-policies'),
///   location: TfArg.literal('us-central1-a'),
///   osPolicies: [/* OsConfigOsPolicyAssignmentOsPolicies helpers */],
///   instanceFilter: OsConfigOsPolicyAssignmentInstanceFilter(
///     all: TfArg.literal(true),
///   ),
///   rollout: OsConfigOsPolicyAssignmentRollout(
///     disruptionBudget: OsConfigOsPolicyAssignmentRolloutDisruptionBudget(
///       percent: TfArg.literal(100),
///     ),
///     minWaitDuration: TfArg.literal('0s'),
///   ),
/// );
/// ```
final class GoogleOsConfigOsPolicyAssignment extends Resource {
  static const String tfType = 'google_os_config_os_policy_assignment';

  GoogleOsConfigOsPolicyAssignment({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required List<OsConfigOsPolicyAssignmentOsPolicies> osPolicies,
    required OsConfigOsPolicyAssignmentInstanceFilter instanceFilter,
    required OsConfigOsPolicyAssignmentRollout rollout,
    TfArg<String>? description,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? skipAwaitRollout,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'os_policies': TfArg.literal([
             for (final e in osPolicies) e.encode(),
           ]),
           'instance_filter': TfArg.literal(instanceFilter.encode()),
           'rollout': TfArg.literal(rollout.encode()),
           'description': ?description,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
           'skip_await_rollout': ?skipAwaitRollout,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOsConfigOsPolicyAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOsConfigOsPolicyAssignment>`.
  RefTo<GoogleOsConfigOsPolicyAssignment> get ref => RefTo.of(this);

  /// Reference to `baseline` attribute.
  TfRef<bool> get baseline => TfRef.attribute<bool>(this, 'baseline');

  /// Reference to `deleted` attribute.
  TfRef<bool> get deleted => TfRef.attribute<bool>(this, 'deleted');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `revision_create_time` attribute.
  TfRef<String> get revisionCreateTime =>
      TfRef.attribute<String>(this, 'revision_create_time');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `rollout_state` attribute.
  TfRef<String> get rolloutState =>
      TfRef.attribute<String>(this, 'rollout_state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
