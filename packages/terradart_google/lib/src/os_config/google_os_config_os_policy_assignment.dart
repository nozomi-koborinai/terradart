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

  final List<OsConfigOsPolicyAssignmentExclusionLabels>? exclusionLabels;

  final List<OsConfigOsPolicyAssignmentInclusionLabels>? inclusionLabels;

  final List<OsConfigOsPolicyAssignmentInventories>? inventories;

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

/// Typed helper for the `instance_filter.exclusion_labels` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentExclusionLabels {
  const OsConfigOsPolicyAssignmentExclusionLabels({this.labels});

  final TfArg<Map<String, String>>? labels;

  @internal
  Map<String, Object?> encode() => {'labels': ?labels?.toTfJson()};
}

/// Typed helper for the `instance_filter.inclusion_labels` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentInclusionLabels {
  const OsConfigOsPolicyAssignmentInclusionLabels({this.labels});

  final TfArg<Map<String, String>>? labels;

  @internal
  Map<String, Object?> encode() => {'labels': ?labels?.toTfJson()};
}

/// Typed helper for the `instance_filter.inventories` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentInventories {
  const OsConfigOsPolicyAssignmentInventories({
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

  final OsConfigOsPolicyAssignmentMode mode;

  final List<OsConfigOsPolicyAssignmentResourceGroups> resourceGroups;

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
extension type const OsConfigOsPolicyAssignmentMode._(TfArg<String> _)
    implements TfArg<String> {
  OsConfigOsPolicyAssignmentMode.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigOsPolicyAssignmentMode.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigOsPolicyAssignmentMode.arg(TfArg<String> arg) : this._(arg);

  static const modeUnspecified = OsConfigOsPolicyAssignmentMode._(
    TfArgLiteral('MODE_UNSPECIFIED'),
  );
  static const validation = OsConfigOsPolicyAssignmentMode._(
    TfArgLiteral('VALIDATION'),
  );
  static const enforcement = OsConfigOsPolicyAssignmentMode._(
    TfArgLiteral('ENFORCEMENT'),
  );

  static const List<OsConfigOsPolicyAssignmentMode> values = [
    modeUnspecified,
    validation,
    enforcement,
  ];
}

/// Typed helper for the `os_policies.resource_groups` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentResourceGroups {
  const OsConfigOsPolicyAssignmentResourceGroups({
    this.inventoryFilters,
    required this.resources,
  });

  final List<OsConfigOsPolicyAssignmentInventoryFilters>? inventoryFilters;

  final List<OsConfigOsPolicyAssignmentResources> resources;

  @internal
  Map<String, Object?> encode() => {
    if (inventoryFilters != null)
      'inventory_filters': [for (final e in inventoryFilters!) e.encode()],
    'resources': [for (final e in resources) e.encode()],
  };
}

/// Typed helper for the `os_policies.resource_groups.inventory_filters` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentInventoryFilters {
  const OsConfigOsPolicyAssignmentInventoryFilters({
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

/// Typed helper for the `os_policies.resource_groups.resources` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentResources {
  const OsConfigOsPolicyAssignmentResources({
    required this.id,
    this.exec,
    this.file,
    this.pkg,
    this.repository,
  });

  final TfArg<String> id;

  final OsConfigOsPolicyAssignmentExec? exec;

  final OsConfigOsPolicyAssignmentFile? file;

  final OsConfigOsPolicyAssignmentPkg? pkg;

  final OsConfigOsPolicyAssignmentRepository? repository;

  @internal
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
final class OsConfigOsPolicyAssignmentExec {
  const OsConfigOsPolicyAssignmentExec({this.enforce, required this.validate});

  final OsConfigOsPolicyAssignmentEnforce? enforce;

  final OsConfigOsPolicyAssignmentValidate validate;

  @internal
  Map<String, Object?> encode() => {
    'enforce': ?enforce?.encode(),
    'validate': validate.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.exec.enforce` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentEnforce {
  const OsConfigOsPolicyAssignmentEnforce({
    this.args,
    required this.interpreter,
    this.outputFilePath,
    this.script,
    this.file,
  });

  final TfArg<List<String>>? args;

  final OsConfigOsPolicyAssignmentInterpreter interpreter;

  final TfArg<String>? outputFilePath;

  final TfArg<String>? script;

  final OsConfigOsPolicyAssignmentFileFile? file;

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
extension type const OsConfigOsPolicyAssignmentInterpreter._(TfArg<String> _)
    implements TfArg<String> {
  OsConfigOsPolicyAssignmentInterpreter.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigOsPolicyAssignmentInterpreter.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigOsPolicyAssignmentInterpreter.arg(TfArg<String> arg)
    : this._(arg);

  static const interpreterUnspecified = OsConfigOsPolicyAssignmentInterpreter._(
    TfArgLiteral('INTERPRETER_UNSPECIFIED'),
  );
  static const none = OsConfigOsPolicyAssignmentInterpreter._(
    TfArgLiteral('NONE'),
  );
  static const shell = OsConfigOsPolicyAssignmentInterpreter._(
    TfArgLiteral('SHELL'),
  );
  static const powershell = OsConfigOsPolicyAssignmentInterpreter._(
    TfArgLiteral('POWERSHELL'),
  );

  static const List<OsConfigOsPolicyAssignmentInterpreter> values = [
    interpreterUnspecified,
    none,
    shell,
    powershell,
  ];
}

/// Typed helper for the `os_policies.resource_groups.resources.file.file` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigOsPolicyAssignmentFileFile {
  const OsConfigOsPolicyAssignmentFileFile({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigOsPolicyAssignmentGcs? gcs;

  final OsConfigOsPolicyAssignmentRemote? remote;

  @internal
  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.file.file.gcs` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigOsPolicyAssignmentGcs {
  const OsConfigOsPolicyAssignmentGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<num>? generation;

  final TfArg<String> object;

  @internal
  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.file.file.remote` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigOsPolicyAssignmentRemote {
  const OsConfigOsPolicyAssignmentRemote({
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

/// Typed helper for the `os_policies.resource_groups.resources.exec.validate` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentValidate {
  const OsConfigOsPolicyAssignmentValidate({
    this.args,
    required this.interpreter,
    this.outputFilePath,
    this.script,
    this.file,
  });

  final TfArg<List<String>>? args;

  final OsConfigOsPolicyAssignmentInterpreter interpreter;

  final TfArg<String>? outputFilePath;

  final TfArg<String>? script;

  final OsConfigOsPolicyAssignmentFileFile? file;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'interpreter': interpreter.toTfJson(),
    'output_file_path': ?outputFilePath?.toTfJson(),
    'script': ?script?.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.file` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentFile {
  const OsConfigOsPolicyAssignmentFile({
    this.content,
    required this.path,
    required this.state,
    this.file,
  });

  final TfArg<String>? content;

  final TfArg<String> path;

  final OsConfigOsPolicyAssignmentState state;

  final OsConfigOsPolicyAssignmentFileFile? file;

  @internal
  Map<String, Object?> encode() => {
    'content': ?content?.toTfJson(),
    'path': path.toTfJson(),
    'state': state.toTfJson(),
    'file': ?file?.encode(),
  };
}

/// `state` — derived from the provider schema description.
extension type const OsConfigOsPolicyAssignmentState._(TfArg<String> _)
    implements TfArg<String> {
  OsConfigOsPolicyAssignmentState.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigOsPolicyAssignmentState.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigOsPolicyAssignmentState.arg(TfArg<String> arg) : this._(arg);

  static const desiredStateUnspecified = OsConfigOsPolicyAssignmentState._(
    TfArgLiteral('DESIRED_STATE_UNSPECIFIED'),
  );
  static const present = OsConfigOsPolicyAssignmentState._(
    TfArgLiteral('PRESENT'),
  );
  static const absent = OsConfigOsPolicyAssignmentState._(
    TfArgLiteral('ABSENT'),
  );
  static const contentsMatch = OsConfigOsPolicyAssignmentState._(
    TfArgLiteral('CONTENTS_MATCH'),
  );

  static const List<OsConfigOsPolicyAssignmentState> values = [
    desiredStateUnspecified,
    present,
    absent,
    contentsMatch,
  ];
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentPkg {
  const OsConfigOsPolicyAssignmentPkg({
    required this.desiredState,
    this.apt,
    this.deb,
    this.googet,
    this.msi,
    this.rpm,
    this.yum,
    this.zypper,
  });

  final OsConfigOsPolicyAssignmentDesiredState desiredState;

  final OsConfigOsPolicyAssignmentPkgApt? apt;

  final OsConfigOsPolicyAssignmentDeb? deb;

  final OsConfigOsPolicyAssignmentGooget? googet;

  final OsConfigOsPolicyAssignmentMsi? msi;

  final OsConfigOsPolicyAssignmentRpm? rpm;

  final OsConfigOsPolicyAssignmentPkgYum? yum;

  final OsConfigOsPolicyAssignmentPkgZypper? zypper;

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
extension type const OsConfigOsPolicyAssignmentDesiredState._(TfArg<String> _)
    implements TfArg<String> {
  OsConfigOsPolicyAssignmentDesiredState.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigOsPolicyAssignmentDesiredState.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigOsPolicyAssignmentDesiredState.arg(TfArg<String> arg)
    : this._(arg);

  static const desiredStateUnspecified =
      OsConfigOsPolicyAssignmentDesiredState._(
        TfArgLiteral('DESIRED_STATE_UNSPECIFIED'),
      );
  static const installed = OsConfigOsPolicyAssignmentDesiredState._(
    TfArgLiteral('INSTALLED'),
  );
  static const removed = OsConfigOsPolicyAssignmentDesiredState._(
    TfArgLiteral('REMOVED'),
  );

  static const List<OsConfigOsPolicyAssignmentDesiredState> values = [
    desiredStateUnspecified,
    installed,
    removed,
  ];
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.apt` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentPkgApt {
  const OsConfigOsPolicyAssignmentPkgApt({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.deb` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentDeb {
  const OsConfigOsPolicyAssignmentDeb({this.pullDeps, required this.source});

  final TfArg<bool>? pullDeps;

  final OsConfigOsPolicyAssignmentSource source;

  @internal
  Map<String, Object?> encode() => {
    'pull_deps': ?pullDeps?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.deb.source` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigOsPolicyAssignmentSource {
  const OsConfigOsPolicyAssignmentSource({
    this.allowInsecure,
    this.localPath,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? localPath;

  final OsConfigOsPolicyAssignmentGcs? gcs;

  final OsConfigOsPolicyAssignmentRemote? remote;

  @internal
  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.googet` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentGooget {
  const OsConfigOsPolicyAssignmentGooget({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.msi` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentMsi {
  const OsConfigOsPolicyAssignmentMsi({this.properties, required this.source});

  final TfArg<List<String>>? properties;

  final OsConfigOsPolicyAssignmentSource source;

  @internal
  Map<String, Object?> encode() => {
    'properties': ?properties?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.rpm` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentRpm {
  const OsConfigOsPolicyAssignmentRpm({this.pullDeps, required this.source});

  final TfArg<bool>? pullDeps;

  final OsConfigOsPolicyAssignmentSource source;

  @internal
  Map<String, Object?> encode() => {
    'pull_deps': ?pullDeps?.toTfJson(),
    'source': source.encode(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.yum` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentPkgYum {
  const OsConfigOsPolicyAssignmentPkgYum({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `os_policies.resource_groups.resources.pkg.zypper` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentPkgZypper {
  const OsConfigOsPolicyAssignmentPkgZypper({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `os_policies.resource_groups.resources.repository` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentRepository {
  const OsConfigOsPolicyAssignmentRepository({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  final OsConfigOsPolicyAssignmentRepositoryApt? apt;

  final OsConfigOsPolicyAssignmentGoo? goo;

  final OsConfigOsPolicyAssignmentRepositoryYum? yum;

  final OsConfigOsPolicyAssignmentRepositoryZypper? zypper;

  @internal
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
final class OsConfigOsPolicyAssignmentRepositoryApt {
  const OsConfigOsPolicyAssignmentRepositoryApt({
    required this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  final OsConfigOsPolicyAssignmentArchiveType archiveType;

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
extension type const OsConfigOsPolicyAssignmentArchiveType._(TfArg<String> _)
    implements TfArg<String> {
  OsConfigOsPolicyAssignmentArchiveType.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigOsPolicyAssignmentArchiveType.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigOsPolicyAssignmentArchiveType.arg(TfArg<String> arg)
    : this._(arg);

  static const archiveTypeUnspecified = OsConfigOsPolicyAssignmentArchiveType._(
    TfArgLiteral('ARCHIVE_TYPE_UNSPECIFIED'),
  );
  static const deb = OsConfigOsPolicyAssignmentArchiveType._(
    TfArgLiteral('DEB'),
  );
  static const debSrc = OsConfigOsPolicyAssignmentArchiveType._(
    TfArgLiteral('DEB_SRC'),
  );

  static const List<OsConfigOsPolicyAssignmentArchiveType> values = [
    archiveTypeUnspecified,
    deb,
    debSrc,
  ];
}

/// Typed helper for the `os_policies.resource_groups.resources.repository.goo` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentGoo {
  const OsConfigOsPolicyAssignmentGoo({required this.name, required this.url});

  final TfArg<String> name;

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Typed helper for the `os_policies.resource_groups.resources.repository.yum` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentRepositoryYum {
  const OsConfigOsPolicyAssignmentRepositoryYum({
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

/// Typed helper for the `os_policies.resource_groups.resources.repository.zypper` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentRepositoryZypper {
  const OsConfigOsPolicyAssignmentRepositoryZypper({
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

/// Typed helper for the `rollout` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentRollout {
  const OsConfigOsPolicyAssignmentRollout({
    required this.minWaitDuration,
    required this.disruptionBudget,
  });

  final TfArg<String> minWaitDuration;

  final OsConfigOsPolicyAssignmentDisruptionBudget disruptionBudget;

  @internal
  Map<String, Object?> encode() => {
    'min_wait_duration': minWaitDuration.toTfJson(),
    'disruption_budget': disruptionBudget.encode(),
  };
}

/// Typed helper for the `rollout.disruption_budget` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentDisruptionBudget {
  const OsConfigOsPolicyAssignmentDisruptionBudget({this.fixed, this.percent});

  final TfArg<num>? fixed;

  final TfArg<num>? percent;

  @internal
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
///   'baseline',
///   name: TfArg.literal('baseline-policies'),
///   location: TfArg.literal('us-central1-a'),
///   osPolicies: [/* OsConfigOsPolicyAssignmentOsPolicies helpers */],
///   instanceFilter: OsConfigOsPolicyAssignmentInstanceFilter(
///     all: TfArg.literal(true),
///   ),
///   rollout: OsConfigOsPolicyAssignmentRollout(
///     disruptionBudget: .new(
///       percent: TfArg.literal(100),
///     ),
///     minWaitDuration: TfArg.literal('0s'),
///   ),
/// );
/// ```
final class GoogleOsConfigOsPolicyAssignment extends Resource {
  static const String tfType = 'google_os_config_os_policy_assignment';

  GoogleOsConfigOsPolicyAssignment(
    super.localName, {
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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `skip_await_rollout` attribute.
  TfRef<bool> get skipAwaitRollout =>
      TfRef.attribute<bool>(this, 'skip_await_rollout');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
