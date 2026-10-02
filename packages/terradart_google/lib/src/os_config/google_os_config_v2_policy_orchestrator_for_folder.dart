// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_os_config_v2_policy_orchestrator_for_folder`.
const Set<String> _googleOsConfigV2PolicyOrchestratorForFolderSensitive =
    <String>{};

/// Typed helper for the `orchestrated_resource` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderOrchestratedResource {
  const OsConfigV2PolicyOrchestratorForFolderOrchestratedResource({
    this.id,
    this.osPolicyAssignmentV1Payload,
  });

  final TfArg<String>? id;

  final OsConfigV2PolicyOrchestratorForFolderOsPolicyAssignmentV1Payload?
  osPolicyAssignmentV1Payload;

  @internal
  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'os_policy_assignment_v1_payload': ?osPolicyAssignmentV1Payload?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderOsPolicyAssignmentV1Payload {
  const OsConfigV2PolicyOrchestratorForFolderOsPolicyAssignmentV1Payload({
    this.description,
    this.name,
    required this.instanceFilter,
    required this.osPolicies,
    required this.rollout,
  });

  final TfArg<String>? description;

  final TfArg<String>? name;

  final OsConfigV2PolicyOrchestratorForFolderInstanceFilter instanceFilter;

  final List<OsConfigV2PolicyOrchestratorForFolderOsPolicies> osPolicies;

  final OsConfigV2PolicyOrchestratorForFolderRollout rollout;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': ?name?.toTfJson(),
    'instance_filter': instanceFilter.encode(),
    'os_policies': [for (final e in osPolicies) e.encode()],
    'rollout': rollout.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderInstanceFilter {
  const OsConfigV2PolicyOrchestratorForFolderInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  final TfArg<bool>? all;

  final List<OsConfigV2PolicyOrchestratorForFolderExclusionLabels>?
  exclusionLabels;

  final List<OsConfigV2PolicyOrchestratorForFolderInclusionLabels>?
  inclusionLabels;

  final List<OsConfigV2PolicyOrchestratorForFolderInventories>? inventories;

  @internal
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
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderExclusionLabels {
  const OsConfigV2PolicyOrchestratorForFolderExclusionLabels({this.labels});

  final TfArg<Map<String, String>>? labels;

  @internal
  Map<String, Object?> encode() => {'labels': ?labels?.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.inclusion_labels` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderInclusionLabels {
  const OsConfigV2PolicyOrchestratorForFolderInclusionLabels({this.labels});

  final TfArg<Map<String, String>>? labels;

  @internal
  Map<String, Object?> encode() => {'labels': ?labels?.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.inventories` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderInventories {
  const OsConfigV2PolicyOrchestratorForFolderInventories({
    required this.osShortName,
    this.osVersion,
  });

  final TfArg<String> osShortName;

  final TfArg<String>? osVersion;

  @internal
  Map<String, Object?> encode() => {
    'os_short_name': osShortName.toTfJson(),
    'os_version': ?osVersion?.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderOsPolicies {
  const OsConfigV2PolicyOrchestratorForFolderOsPolicies({
    this.allowNoResourceGroupMatch,
    this.description,
    required this.id,
    required this.mode,
    required this.resourceGroups,
  });

  final TfArg<bool>? allowNoResourceGroupMatch;

  final TfArg<String>? description;

  final TfArg<String> id;

  final OsConfigV2PolicyOrchestratorForFolderMode mode;

  final List<OsConfigV2PolicyOrchestratorForFolderResourceGroups>
  resourceGroups;

  @internal
  Map<String, Object?> encode() => {
    'allow_no_resource_group_match': ?allowNoResourceGroupMatch?.toTfJson(),
    'description': ?description?.toTfJson(),
    'id': id.toTfJson(),
    'mode': mode.toTfJson(),
    'resource_groups': [for (final e in resourceGroups) e.encode()],
  };
}

/// `mode` — derived from the provider schema description.
extension type const OsConfigV2PolicyOrchestratorForFolderMode._(
  TfArg<String> _
) implements TfArg<String> {
  OsConfigV2PolicyOrchestratorForFolderMode.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigV2PolicyOrchestratorForFolderMode.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigV2PolicyOrchestratorForFolderMode.arg(TfArg<String> arg)
    : this._(arg);

  static const validation = OsConfigV2PolicyOrchestratorForFolderMode._(
    TfArgLiteral('VALIDATION'),
  );
  static const enforcement = OsConfigV2PolicyOrchestratorForFolderMode._(
    TfArgLiteral('ENFORCEMENT'),
  );

  static const List<OsConfigV2PolicyOrchestratorForFolderMode> values = [
    validation,
    enforcement,
  ];
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderResourceGroups {
  const OsConfigV2PolicyOrchestratorForFolderResourceGroups({
    this.inventoryFilters,
    required this.resources,
  });

  final List<OsConfigV2PolicyOrchestratorForFolderInventoryFilters>?
  inventoryFilters;

  final List<OsConfigV2PolicyOrchestratorForFolderResources> resources;

  @internal
  Map<String, Object?> encode() => {
    if (inventoryFilters != null)
      'inventory_filters': [for (final e in inventoryFilters!) e.encode()],
    'resources': [for (final e in resources) e.encode()],
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.inventory_filters` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderInventoryFilters {
  const OsConfigV2PolicyOrchestratorForFolderInventoryFilters({
    required this.osShortName,
    this.osVersion,
  });

  final TfArg<String> osShortName;

  final TfArg<String>? osVersion;

  @internal
  Map<String, Object?> encode() => {
    'os_short_name': osShortName.toTfJson(),
    'os_version': ?osVersion?.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderResources {
  const OsConfigV2PolicyOrchestratorForFolderResources({
    required this.id,
    this.exec,
    this.file,
    this.pkg,
    this.repository,
  });

  final TfArg<String> id;

  final OsConfigV2PolicyOrchestratorForFolderExec? exec;

  final OsConfigV2PolicyOrchestratorForFolderFile? file;

  final OsConfigV2PolicyOrchestratorForFolderPkg? pkg;

  final OsConfigV2PolicyOrchestratorForFolderRepository? repository;

  @internal
  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'exec': ?exec?.encode(),
    'file': ?file?.encode(),
    'pkg': ?pkg?.encode(),
    'repository': ?repository?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderExec {
  const OsConfigV2PolicyOrchestratorForFolderExec({
    this.enforce,
    required this.validate,
  });

  final OsConfigV2PolicyOrchestratorForFolderEnforce? enforce;

  final OsConfigV2PolicyOrchestratorForFolderValidate validate;

  @internal
  Map<String, Object?> encode() => {
    'enforce': ?enforce?.encode(),
    'validate': validate.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.enforce` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderEnforce {
  const OsConfigV2PolicyOrchestratorForFolderEnforce({
    this.args,
    required this.interpreter,
    this.outputFilePath,
    this.script,
    this.file,
  });

  final TfArg<List<String>>? args;

  final OsConfigV2PolicyOrchestratorForFolderInterpreter interpreter;

  final TfArg<String>? outputFilePath;

  final TfArg<String>? script;

  final OsConfigV2PolicyOrchestratorForFolderFileFile? file;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'interpreter': interpreter.toTfJson(),
    'output_file_path': ?outputFilePath?.toTfJson(),
    'script': ?script?.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// `interpreter` — derived from the provider schema description.
extension type const OsConfigV2PolicyOrchestratorForFolderInterpreter._(
  TfArg<String> _
) implements TfArg<String> {
  OsConfigV2PolicyOrchestratorForFolderInterpreter.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigV2PolicyOrchestratorForFolderInterpreter.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigV2PolicyOrchestratorForFolderInterpreter.arg(TfArg<String> arg)
    : this._(arg);

  static const none = OsConfigV2PolicyOrchestratorForFolderInterpreter._(
    TfArgLiteral('NONE'),
  );
  static const shell = OsConfigV2PolicyOrchestratorForFolderInterpreter._(
    TfArgLiteral('SHELL'),
  );
  static const powershell = OsConfigV2PolicyOrchestratorForFolderInterpreter._(
    TfArgLiteral('POWERSHELL'),
  );

  static const List<OsConfigV2PolicyOrchestratorForFolderInterpreter> values = [
    none,
    shell,
    powershell,
  ];
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file.file` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigV2PolicyOrchestratorForFolderFileFile {
  const OsConfigV2PolicyOrchestratorForFolderFileFile({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorForFolderGcs? gcs;

  final OsConfigV2PolicyOrchestratorForFolderRemote? remote;

  @internal
  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file.file.gcs` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigV2PolicyOrchestratorForFolderGcs {
  const OsConfigV2PolicyOrchestratorForFolderGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? generation;

  final TfArg<String> object;

  @internal
  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file.file.remote` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigV2PolicyOrchestratorForFolderRemote {
  const OsConfigV2PolicyOrchestratorForFolderRemote({
    this.sha256Checksum,
    required this.uri,
  });

  final TfArg<String>? sha256Checksum;

  final TfArg<String> uri;

  @internal
  Map<String, Object?> encode() => {
    'sha256_checksum': ?sha256Checksum?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.exec.validate` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderValidate {
  const OsConfigV2PolicyOrchestratorForFolderValidate({
    this.args,
    required this.interpreter,
    this.outputFilePath,
    this.script,
    this.file,
  });

  final TfArg<List<String>>? args;

  final OsConfigV2PolicyOrchestratorForFolderInterpreter interpreter;

  final TfArg<String>? outputFilePath;

  final TfArg<String>? script;

  final OsConfigV2PolicyOrchestratorForFolderFileFile? file;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'interpreter': interpreter.toTfJson(),
    'output_file_path': ?outputFilePath?.toTfJson(),
    'script': ?script?.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.file` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderFile {
  const OsConfigV2PolicyOrchestratorForFolderFile({
    this.content,
    required this.path,
    this.permissions,
    required this.state,
    this.file,
  });

  final TfArg<String>? content;

  final TfArg<String> path;

  final TfArg<String>? permissions;

  final OsConfigV2PolicyOrchestratorForFolderFileState state;

  final OsConfigV2PolicyOrchestratorForFolderFileFile? file;

  @internal
  Map<String, Object?> encode() => {
    'content': ?content?.toTfJson(),
    'path': path.toTfJson(),
    'permissions': ?permissions?.toTfJson(),
    'state': state.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// `state` — derived from the provider schema description.
extension type const OsConfigV2PolicyOrchestratorForFolderFileState._(
  TfArg<String> _
) implements TfArg<String> {
  OsConfigV2PolicyOrchestratorForFolderFileState.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigV2PolicyOrchestratorForFolderFileState.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigV2PolicyOrchestratorForFolderFileState.arg(TfArg<String> arg)
    : this._(arg);

  static const present = OsConfigV2PolicyOrchestratorForFolderFileState._(
    TfArgLiteral('PRESENT'),
  );
  static const absent = OsConfigV2PolicyOrchestratorForFolderFileState._(
    TfArgLiteral('ABSENT'),
  );
  static const contentsMatch = OsConfigV2PolicyOrchestratorForFolderFileState._(
    TfArgLiteral('CONTENTS_MATCH'),
  );

  static const List<OsConfigV2PolicyOrchestratorForFolderFileState> values = [
    present,
    absent,
    contentsMatch,
  ];
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderPkg {
  const OsConfigV2PolicyOrchestratorForFolderPkg({
    required this.desiredState,
    this.apt,
    this.deb,
    this.googet,
    this.msi,
    this.rpm,
    this.yum,
    this.zypper,
  });

  final OsConfigV2PolicyOrchestratorForFolderDesiredState desiredState;

  final OsConfigV2PolicyOrchestratorForFolderPkgApt? apt;

  final OsConfigV2PolicyOrchestratorForFolderDeb? deb;

  final OsConfigV2PolicyOrchestratorForFolderGooget? googet;

  final OsConfigV2PolicyOrchestratorForFolderMsi? msi;

  final OsConfigV2PolicyOrchestratorForFolderRpm? rpm;

  final OsConfigV2PolicyOrchestratorForFolderPkgYum? yum;

  final OsConfigV2PolicyOrchestratorForFolderPkgZypper? zypper;

  @internal
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
extension type const OsConfigV2PolicyOrchestratorForFolderDesiredState._(
  TfArg<String> _
) implements TfArg<String> {
  OsConfigV2PolicyOrchestratorForFolderDesiredState.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigV2PolicyOrchestratorForFolderDesiredState.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigV2PolicyOrchestratorForFolderDesiredState.arg(TfArg<String> arg)
    : this._(arg);

  static const installed = OsConfigV2PolicyOrchestratorForFolderDesiredState._(
    TfArgLiteral('INSTALLED'),
  );
  static const removed = OsConfigV2PolicyOrchestratorForFolderDesiredState._(
    TfArgLiteral('REMOVED'),
  );

  static const List<OsConfigV2PolicyOrchestratorForFolderDesiredState> values =
      [installed, removed];
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.apt` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderPkgApt {
  const OsConfigV2PolicyOrchestratorForFolderPkgApt({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.deb` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderDeb {
  const OsConfigV2PolicyOrchestratorForFolderDeb({
    this.pullDeps,
    required this.source,
  });

  final TfArg<bool>? pullDeps;

  final OsConfigV2PolicyOrchestratorForFolderSource source;

  @internal
  Map<String, Object?> encode() => {
    'pull_deps': ?pullDeps?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.deb.source` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigV2PolicyOrchestratorForFolderSource {
  const OsConfigV2PolicyOrchestratorForFolderSource({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigV2PolicyOrchestratorForFolderGcs? gcs;

  final OsConfigV2PolicyOrchestratorForFolderRemote? remote;

  @internal
  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.googet` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderGooget {
  const OsConfigV2PolicyOrchestratorForFolderGooget({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.msi` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderMsi {
  const OsConfigV2PolicyOrchestratorForFolderMsi({
    this.properties,
    required this.source,
  });

  final TfArg<List<String>>? properties;

  final OsConfigV2PolicyOrchestratorForFolderSource source;

  @internal
  Map<String, Object?> encode() => {
    'properties': ?properties?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.rpm` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderRpm {
  const OsConfigV2PolicyOrchestratorForFolderRpm({
    this.pullDeps,
    required this.source,
  });

  final TfArg<bool>? pullDeps;

  final OsConfigV2PolicyOrchestratorForFolderSource source;

  @internal
  Map<String, Object?> encode() => {
    'pull_deps': ?pullDeps?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.yum` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderPkgYum {
  const OsConfigV2PolicyOrchestratorForFolderPkgYum({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.pkg.zypper` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderPkgZypper {
  const OsConfigV2PolicyOrchestratorForFolderPkgZypper({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderRepository {
  const OsConfigV2PolicyOrchestratorForFolderRepository({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  final OsConfigV2PolicyOrchestratorForFolderRepositoryApt? apt;

  final OsConfigV2PolicyOrchestratorForFolderGoo? goo;

  final OsConfigV2PolicyOrchestratorForFolderRepositoryYum? yum;

  final OsConfigV2PolicyOrchestratorForFolderRepositoryZypper? zypper;

  @internal
  Map<String, Object?> encode() => {
    'apt': ?apt?.encode(),
    'goo': ?goo?.encode(),
    'yum': ?yum?.encode(),
    'zypper': ?zypper?.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository.apt` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderRepositoryApt {
  const OsConfigV2PolicyOrchestratorForFolderRepositoryApt({
    required this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  final OsConfigV2PolicyOrchestratorForFolderArchiveType archiveType;

  final TfArg<List<String>> components;

  final TfArg<String> distribution;

  final TfArg<String>? gpgKey;

  final TfArg<String> uri;

  @internal
  Map<String, Object?> encode() => {
    'archive_type': archiveType.toTfJson(),
    'components': components.toTfJson(),
    'distribution': distribution.toTfJson(),
    'gpg_key': ?gpgKey?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// `archive_type` — derived from the provider schema description.
extension type const OsConfigV2PolicyOrchestratorForFolderArchiveType._(
  TfArg<String> _
) implements TfArg<String> {
  OsConfigV2PolicyOrchestratorForFolderArchiveType.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigV2PolicyOrchestratorForFolderArchiveType.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigV2PolicyOrchestratorForFolderArchiveType.arg(TfArg<String> arg)
    : this._(arg);

  static const deb = OsConfigV2PolicyOrchestratorForFolderArchiveType._(
    TfArgLiteral('DEB'),
  );
  static const debSrc = OsConfigV2PolicyOrchestratorForFolderArchiveType._(
    TfArgLiteral('DEB_SRC'),
  );

  static const List<OsConfigV2PolicyOrchestratorForFolderArchiveType> values = [
    deb,
    debSrc,
  ];
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository.goo` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderGoo {
  const OsConfigV2PolicyOrchestratorForFolderGoo({
    required this.name,
    required this.url,
  });

  final TfArg<String> name;

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository.yum` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderRepositoryYum {
  const OsConfigV2PolicyOrchestratorForFolderRepositoryYum({
    required this.baseUrl,
    this.displayName,
    this.gpgKeys,
    required this.id,
  });

  final TfArg<String> baseUrl;

  final TfArg<String>? displayName;

  final TfArg<List<String>>? gpgKeys;

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {
    'base_url': baseUrl.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'gpg_keys': ?gpgKeys?.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.resources.repository.zypper` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderRepositoryZypper {
  const OsConfigV2PolicyOrchestratorForFolderRepositoryZypper({
    required this.baseUrl,
    this.displayName,
    this.gpgKeys,
    required this.id,
  });

  final TfArg<String> baseUrl;

  final TfArg<String>? displayName;

  final TfArg<List<String>>? gpgKeys;

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {
    'base_url': baseUrl.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'gpg_keys': ?gpgKeys?.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.rollout` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderRollout {
  const OsConfigV2PolicyOrchestratorForFolderRollout({
    required this.minWaitDuration,
    required this.disruptionBudget,
  });

  final TfArg<String> minWaitDuration;

  final OsConfigV2PolicyOrchestratorForFolderDisruptionBudget disruptionBudget;

  @internal
  Map<String, Object?> encode() => {
    'min_wait_duration': minWaitDuration.toTfJson(),
    'disruption_budget': disruptionBudget.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.rollout.disruption_budget` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderDisruptionBudget {
  const OsConfigV2PolicyOrchestratorForFolderDisruptionBudget({
    this.fixed,
    this.percent,
  });

  final TfArg<num>? fixed;

  final TfArg<num>? percent;

  @internal
  Map<String, Object?> encode() => {
    'fixed': ?fixed?.toTfJson(),
    'percent': ?percent?.toTfJson(),
  };
}

/// Typed helper for the `orchestration_scope` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderOrchestrationScope {
  const OsConfigV2PolicyOrchestratorForFolderOrchestrationScope({
    this.selectors,
  });

  final List<OsConfigV2PolicyOrchestratorForFolderSelectors>? selectors;

  @internal
  Map<String, Object?> encode() => {
    if (selectors != null)
      'selectors': [for (final e in selectors!) e.encode()],
  };
}

/// Typed helper for the `orchestration_scope.selectors` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderSelectors {
  const OsConfigV2PolicyOrchestratorForFolderSelectors({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  final OsConfigV2PolicyOrchestratorForFolderLocationSelector? locationSelector;

  final OsConfigV2PolicyOrchestratorForFolderResourceHierarchySelector?
  resourceHierarchySelector;

  @internal
  Map<String, Object?> encode() => {
    'location_selector': ?locationSelector?.encode(),
    'resource_hierarchy_selector': ?resourceHierarchySelector?.encode(),
  };
}

/// Typed helper for the `orchestration_scope.selectors.location_selector` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderLocationSelector {
  const OsConfigV2PolicyOrchestratorForFolderLocationSelector({
    this.includedLocations,
  });

  final TfArg<List<String>>? includedLocations;

  @internal
  Map<String, Object?> encode() => {
    'included_locations': ?includedLocations?.toTfJson(),
  };
}

/// Typed helper for the `orchestration_scope.selectors.resource_hierarchy_selector` block of
/// `google_os_config_v2_policy_orchestrator_for_folder` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorForFolderResourceHierarchySelector {
  const OsConfigV2PolicyOrchestratorForFolderResourceHierarchySelector({
    this.includedFolders,
    this.includedProjects,
  });

  final TfArg<List<String>>? includedFolders;

  final TfArg<List<String>>? includedProjects;

  @internal
  Map<String, Object?> encode() => {
    'included_folders': ?includedFolders?.toTfJson(),
    'included_projects': ?includedProjects?.toTfJson(),
  };
}

/// Factory wrapper for `google_os_config_v2_policy_orchestrator_for_folder`.
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
final class GoogleOsConfigV2PolicyOrchestratorForFolder extends Resource {
  static const String tfType =
      'google_os_config_v2_policy_orchestrator_for_folder';

  GoogleOsConfigV2PolicyOrchestratorForFolder(
    super.localName, {
    required TfArg<String> action,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> folderId,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> policyOrchestratorId,
    TfArg<String>? state,
    required OsConfigV2PolicyOrchestratorForFolderOrchestratedResource
    orchestratedResource,
    OsConfigV2PolicyOrchestratorForFolderOrchestrationScope? orchestrationScope,
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
           'folder_id': folderId,
           'labels': ?labels,
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
      _googleOsConfigV2PolicyOrchestratorForFolderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOsConfigV2PolicyOrchestratorForFolder>`.
  RefTo<GoogleOsConfigV2PolicyOrchestratorForFolder> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `folder_id` attribute.
  TfRef<String> get folderId => TfRef.attribute<String>(this, 'folder_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `policy_orchestrator_id` attribute.
  TfRef<String> get policyOrchestratorId =>
      TfRef.attribute<String>(this, 'policy_orchestrator_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
