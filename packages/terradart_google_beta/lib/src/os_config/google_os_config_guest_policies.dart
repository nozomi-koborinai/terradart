// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleStorageBucket;

/// Sensitive field paths for `google_os_config_guest_policies`.
const Set<String> _googleOsConfigGuestPoliciesSensitive = <String>{};

/// Typed helper for the `assignment` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesAssignment {
  const OsConfigGuestPoliciesAssignment({
    this.instanceNamePrefixes,
    this.instances,
    this.zones,
    this.groupLabels,
    this.osTypes,
  });

  final TfArg<List<Object?>>? instanceNamePrefixes;

  final TfArg<List<Object?>>? instances;

  final TfArg<List<Object?>>? zones;

  final List<OsConfigGuestPoliciesAssignmentGroupLabels>? groupLabels;

  final List<OsConfigGuestPoliciesAssignmentOsTypes>? osTypes;

  Map<String, Object?> encode() => {
    'instance_name_prefixes': ?instanceNamePrefixes?.toTfJson(),
    'instances': ?instances?.toTfJson(),
    'zones': ?zones?.toTfJson(),
    if (groupLabels != null)
      'group_labels': [for (final e in groupLabels!) e.encode()],
    if (osTypes != null) 'os_types': [for (final e in osTypes!) e.encode()],
  };
}

/// Typed helper for the `assignment.group_labels` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesAssignmentGroupLabels {
  const OsConfigGuestPoliciesAssignmentGroupLabels({required this.labels});

  final TfArg<Map<String, String>> labels;

  Map<String, Object?> encode() => {'labels': labels.toTfJson()};
}

/// Typed helper for the `assignment.os_types` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesAssignmentOsTypes {
  const OsConfigGuestPoliciesAssignmentOsTypes({
    this.osArchitecture,
    this.osShortName,
    this.osVersion,
  });

  final TfArg<String>? osArchitecture;

  final TfArg<String>? osShortName;

  final TfArg<String>? osVersion;

  Map<String, Object?> encode() => {
    'os_architecture': ?osArchitecture?.toTfJson(),
    'os_short_name': ?osShortName?.toTfJson(),
    'os_version': ?osVersion?.toTfJson(),
  };
}

/// Typed helper for the `package_repositories` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesPackageRepositories {
  const OsConfigGuestPoliciesPackageRepositories({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  final OsConfigGuestPoliciesPackageRepositoriesApt? apt;

  final OsConfigGuestPoliciesPackageRepositoriesGoo? goo;

  final OsConfigGuestPoliciesPackageRepositoriesYum? yum;

  final OsConfigGuestPoliciesPackageRepositoriesZypper? zypper;

  Map<String, Object?> encode() => {
    'apt': ?apt?.encode(),
    'goo': ?goo?.encode(),
    'yum': ?yum?.encode(),
    'zypper': ?zypper?.encode(),
  };
}

/// Typed helper for the `package_repositories.apt` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesPackageRepositoriesApt {
  const OsConfigGuestPoliciesPackageRepositoriesApt({
    this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  final TfArg<OsConfigGuestPoliciesPackageRepositoriesAptArchiveType>?
  archiveType;

  final TfArg<List<Object?>> components;

  final TfArg<String> distribution;

  final TfArg<String>? gpgKey;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'archive_type': ?archiveType?.toTfJson(),
    'components': components.toTfJson(),
    'distribution': distribution.toTfJson(),
    'gpg_key': ?gpgKey?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// `archive_type` — derived from the provider schema description.
enum OsConfigGuestPoliciesPackageRepositoriesAptArchiveType
    implements TerraformEnum {
  deb('DEB'),
  debSrc('DEB_SRC');

  const OsConfigGuestPoliciesPackageRepositoriesAptArchiveType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `package_repositories.goo` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesPackageRepositoriesGoo {
  const OsConfigGuestPoliciesPackageRepositoriesGoo({
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

/// Typed helper for the `package_repositories.yum` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesPackageRepositoriesYum {
  const OsConfigGuestPoliciesPackageRepositoriesYum({
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
    'display_name': ?displayName?.toTfJson(),
    'gpg_keys': ?gpgKeys?.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `package_repositories.zypper` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesPackageRepositoriesZypper {
  const OsConfigGuestPoliciesPackageRepositoriesZypper({
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
    'display_name': ?displayName?.toTfJson(),
    'gpg_keys': ?gpgKeys?.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `packages` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesPackages {
  const OsConfigGuestPoliciesPackages({
    this.desiredState,
    this.manager,
    required this.name,
  });

  final TfArg<OsConfigGuestPoliciesPackagesDesiredState>? desiredState;

  final TfArg<OsConfigGuestPoliciesPackagesManager>? manager;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'desired_state': ?desiredState?.toTfJson(),
    'manager': ?manager?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `desired_state` — derived from the provider schema description.
enum OsConfigGuestPoliciesPackagesDesiredState implements TerraformEnum {
  installed('INSTALLED'),
  updated('UPDATED'),
  removed('REMOVED');

  const OsConfigGuestPoliciesPackagesDesiredState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `manager` — derived from the provider schema description.
enum OsConfigGuestPoliciesPackagesManager implements TerraformEnum {
  any('ANY'),
  apt('APT'),
  yum('YUM'),
  zypper('ZYPPER'),
  goo('GOO');

  const OsConfigGuestPoliciesPackagesManager(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `recipes` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipes {
  const OsConfigGuestPoliciesRecipes({
    this.desiredState,
    required this.name,
    this.version,
    this.artifacts,
    this.installSteps,
    this.updateSteps,
  });

  final TfArg<OsConfigGuestPoliciesRecipesDesiredState>? desiredState;

  final TfArg<String> name;

  final TfArg<String>? version;

  final List<OsConfigGuestPoliciesRecipesArtifacts>? artifacts;

  final List<OsConfigGuestPoliciesRecipesInstallSteps>? installSteps;

  final List<OsConfigGuestPoliciesRecipesUpdateSteps>? updateSteps;

  Map<String, Object?> encode() => {
    'desired_state': ?desiredState?.toTfJson(),
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
    if (artifacts != null)
      'artifacts': [for (final e in artifacts!) e.encode()],
    if (installSteps != null)
      'install_steps': [for (final e in installSteps!) e.encode()],
    if (updateSteps != null)
      'update_steps': [for (final e in updateSteps!) e.encode()],
  };
}

/// `desired_state` — derived from the provider schema description.
enum OsConfigGuestPoliciesRecipesDesiredState implements TerraformEnum {
  installed('INSTALLED'),
  updated('UPDATED'),
  removed('REMOVED');

  const OsConfigGuestPoliciesRecipesDesiredState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `recipes.artifacts` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesArtifacts {
  const OsConfigGuestPoliciesRecipesArtifacts({
    this.allowInsecure,
    required this.id,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String> id;

  final OsConfigGuestPoliciesRecipesArtifactsGcs? gcs;

  final OsConfigGuestPoliciesRecipesArtifactsRemote? remote;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'id': id.toTfJson(),
    'gcs': ?gcs?.encode(),
    'remote': ?remote?.encode(),
  };
}

/// Typed helper for the `recipes.artifacts.gcs` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesArtifactsGcs {
  const OsConfigGuestPoliciesRecipesArtifactsGcs({
    this.bucket,
    this.generation,
    this.object,
  });

  final RefTo<GoogleStorageBucket>? bucket;

  final TfArg<num>? generation;

  final TfArg<String>? object;

  Map<String, Object?> encode() => {
    'bucket': ?bucket?.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': ?object?.toTfJson(),
  };
}

/// Typed helper for the `recipes.artifacts.remote` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesArtifactsRemote {
  const OsConfigGuestPoliciesRecipesArtifactsRemote({this.checkSum, this.uri});

  final TfArg<String>? checkSum;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'check_sum': ?checkSum?.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// Typed helper for the `recipes.install_steps` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesInstallSteps {
  const OsConfigGuestPoliciesRecipesInstallSteps({
    this.archiveExtraction,
    this.dpkgInstallation,
    this.fileCopy,
    this.fileExec,
    this.msiInstallation,
    this.rpmInstallation,
    this.scriptRun,
  });

  final OsConfigGuestPoliciesRecipesInstallStepsArchiveExtraction?
  archiveExtraction;

  final OsConfigGuestPoliciesRecipesInstallStepsDpkgInstallation?
  dpkgInstallation;

  final OsConfigGuestPoliciesRecipesInstallStepsFileCopy? fileCopy;

  final OsConfigGuestPoliciesRecipesInstallStepsFileExec? fileExec;

  final OsConfigGuestPoliciesRecipesInstallStepsMsiInstallation?
  msiInstallation;

  final OsConfigGuestPoliciesRecipesInstallStepsRpmInstallation?
  rpmInstallation;

  final OsConfigGuestPoliciesRecipesInstallStepsScriptRun? scriptRun;

  Map<String, Object?> encode() => {
    'archive_extraction': ?archiveExtraction?.encode(),
    'dpkg_installation': ?dpkgInstallation?.encode(),
    'file_copy': ?fileCopy?.encode(),
    'file_exec': ?fileExec?.encode(),
    'msi_installation': ?msiInstallation?.encode(),
    'rpm_installation': ?rpmInstallation?.encode(),
    'script_run': ?scriptRun?.encode(),
  };
}

/// Typed helper for the `recipes.install_steps.archive_extraction` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesInstallStepsArchiveExtraction {
  const OsConfigGuestPoliciesRecipesInstallStepsArchiveExtraction({
    required this.artifactId,
    this.destination,
    required this.type,
  });

  final TfArg<String> artifactId;

  final TfArg<String>? destination;

  final TfArg<OsConfigGuestPoliciesRecipesInstallStepsArchiveExtractionType>
  type;

  Map<String, Object?> encode() => {
    'artifact_id': artifactId.toTfJson(),
    'destination': ?destination?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum OsConfigGuestPoliciesRecipesInstallStepsArchiveExtractionType
    implements TerraformEnum {
  tar('TAR'),
  tarGzip('TAR_GZIP'),
  tarBzip('TAR_BZIP'),
  tarLzma('TAR_LZMA'),
  tarXz('TAR_XZ'),
  zip('ZIP');

  const OsConfigGuestPoliciesRecipesInstallStepsArchiveExtractionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `recipes.install_steps.dpkg_installation` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesInstallStepsDpkgInstallation {
  const OsConfigGuestPoliciesRecipesInstallStepsDpkgInstallation({
    required this.artifactId,
  });

  final TfArg<String> artifactId;

  Map<String, Object?> encode() => {'artifact_id': artifactId.toTfJson()};
}

/// Typed helper for the `recipes.install_steps.file_copy` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesInstallStepsFileCopy {
  const OsConfigGuestPoliciesRecipesInstallStepsFileCopy({
    required this.artifactId,
    required this.destination,
    this.overwrite,
    this.permissions,
  });

  final TfArg<String> artifactId;

  final TfArg<String> destination;

  final TfArg<bool>? overwrite;

  final TfArg<String>? permissions;

  Map<String, Object?> encode() => {
    'artifact_id': artifactId.toTfJson(),
    'destination': destination.toTfJson(),
    'overwrite': ?overwrite?.toTfJson(),
    'permissions': ?permissions?.toTfJson(),
  };
}

/// Typed helper for the `recipes.install_steps.file_exec` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesInstallStepsFileExec {
  const OsConfigGuestPoliciesRecipesInstallStepsFileExec({
    this.allowedExitCodes,
    this.args,
    this.artifactId,
    this.localPath,
  });

  final TfArg<String>? allowedExitCodes;

  final TfArg<List<Object?>>? args;

  final TfArg<String>? artifactId;

  final TfArg<String>? localPath;

  Map<String, Object?> encode() => {
    'allowed_exit_codes': ?allowedExitCodes?.toTfJson(),
    'args': ?args?.toTfJson(),
    'artifact_id': ?artifactId?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
  };
}

/// Typed helper for the `recipes.install_steps.msi_installation` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesInstallStepsMsiInstallation {
  const OsConfigGuestPoliciesRecipesInstallStepsMsiInstallation({
    this.allowedExitCodes,
    required this.artifactId,
    this.flags,
  });

  final TfArg<List<Object?>>? allowedExitCodes;

  final TfArg<String> artifactId;

  final TfArg<List<Object?>>? flags;

  Map<String, Object?> encode() => {
    'allowed_exit_codes': ?allowedExitCodes?.toTfJson(),
    'artifact_id': artifactId.toTfJson(),
    'flags': ?flags?.toTfJson(),
  };
}

/// Typed helper for the `recipes.install_steps.rpm_installation` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesInstallStepsRpmInstallation {
  const OsConfigGuestPoliciesRecipesInstallStepsRpmInstallation({
    required this.artifactId,
  });

  final TfArg<String> artifactId;

  Map<String, Object?> encode() => {'artifact_id': artifactId.toTfJson()};
}

/// Typed helper for the `recipes.install_steps.script_run` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesInstallStepsScriptRun {
  const OsConfigGuestPoliciesRecipesInstallStepsScriptRun({
    this.allowedExitCodes,
    this.interpreter,
    required this.script,
  });

  final TfArg<List<Object?>>? allowedExitCodes;

  final TfArg<OsConfigGuestPoliciesRecipesInstallStepsScriptRunInterpreter>?
  interpreter;

  final TfArg<String> script;

  Map<String, Object?> encode() => {
    'allowed_exit_codes': ?allowedExitCodes?.toTfJson(),
    'interpreter': ?interpreter?.toTfJson(),
    'script': script.toTfJson(),
  };
}

/// `interpreter` — derived from the provider schema description.
enum OsConfigGuestPoliciesRecipesInstallStepsScriptRunInterpreter
    implements TerraformEnum {
  shell('SHELL'),
  powershell('POWERSHELL');

  const OsConfigGuestPoliciesRecipesInstallStepsScriptRunInterpreter(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `recipes.update_steps` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesUpdateSteps {
  const OsConfigGuestPoliciesRecipesUpdateSteps({
    this.archiveExtraction,
    this.dpkgInstallation,
    this.fileCopy,
    this.fileExec,
    this.msiInstallation,
    this.rpmInstallation,
    this.scriptRun,
  });

  final OsConfigGuestPoliciesRecipesUpdateStepsArchiveExtraction?
  archiveExtraction;

  final OsConfigGuestPoliciesRecipesUpdateStepsDpkgInstallation?
  dpkgInstallation;

  final OsConfigGuestPoliciesRecipesUpdateStepsFileCopy? fileCopy;

  final OsConfigGuestPoliciesRecipesUpdateStepsFileExec? fileExec;

  final OsConfigGuestPoliciesRecipesUpdateStepsMsiInstallation? msiInstallation;

  final OsConfigGuestPoliciesRecipesUpdateStepsRpmInstallation? rpmInstallation;

  final OsConfigGuestPoliciesRecipesUpdateStepsScriptRun? scriptRun;

  Map<String, Object?> encode() => {
    'archive_extraction': ?archiveExtraction?.encode(),
    'dpkg_installation': ?dpkgInstallation?.encode(),
    'file_copy': ?fileCopy?.encode(),
    'file_exec': ?fileExec?.encode(),
    'msi_installation': ?msiInstallation?.encode(),
    'rpm_installation': ?rpmInstallation?.encode(),
    'script_run': ?scriptRun?.encode(),
  };
}

/// Typed helper for the `recipes.update_steps.archive_extraction` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesUpdateStepsArchiveExtraction {
  const OsConfigGuestPoliciesRecipesUpdateStepsArchiveExtraction({
    required this.artifactId,
    this.destination,
    required this.type,
  });

  final TfArg<String> artifactId;

  final TfArg<String>? destination;

  final TfArg<OsConfigGuestPoliciesRecipesUpdateStepsArchiveExtractionType>
  type;

  Map<String, Object?> encode() => {
    'artifact_id': artifactId.toTfJson(),
    'destination': ?destination?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum OsConfigGuestPoliciesRecipesUpdateStepsArchiveExtractionType
    implements TerraformEnum {
  tar('TAR'),
  tarGzip('TAR_GZIP'),
  tarBzip('TAR_BZIP'),
  tarLzma('TAR_LZMA'),
  tarXz('TAR_XZ'),
  zip('ZIP');

  const OsConfigGuestPoliciesRecipesUpdateStepsArchiveExtractionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `recipes.update_steps.dpkg_installation` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesUpdateStepsDpkgInstallation {
  const OsConfigGuestPoliciesRecipesUpdateStepsDpkgInstallation({
    required this.artifactId,
  });

  final TfArg<String> artifactId;

  Map<String, Object?> encode() => {'artifact_id': artifactId.toTfJson()};
}

/// Typed helper for the `recipes.update_steps.file_copy` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesUpdateStepsFileCopy {
  const OsConfigGuestPoliciesRecipesUpdateStepsFileCopy({
    required this.artifactId,
    required this.destination,
    this.overwrite,
    this.permissions,
  });

  final TfArg<String> artifactId;

  final TfArg<String> destination;

  final TfArg<bool>? overwrite;

  final TfArg<String>? permissions;

  Map<String, Object?> encode() => {
    'artifact_id': artifactId.toTfJson(),
    'destination': destination.toTfJson(),
    'overwrite': ?overwrite?.toTfJson(),
    'permissions': ?permissions?.toTfJson(),
  };
}

/// Typed helper for the `recipes.update_steps.file_exec` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesUpdateStepsFileExec {
  const OsConfigGuestPoliciesRecipesUpdateStepsFileExec({
    this.allowedExitCodes,
    this.args,
    this.artifactId,
    this.localPath,
  });

  final TfArg<List<Object?>>? allowedExitCodes;

  final TfArg<List<Object?>>? args;

  final TfArg<String>? artifactId;

  final TfArg<String>? localPath;

  Map<String, Object?> encode() => {
    'allowed_exit_codes': ?allowedExitCodes?.toTfJson(),
    'args': ?args?.toTfJson(),
    'artifact_id': ?artifactId?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
  };
}

/// Typed helper for the `recipes.update_steps.msi_installation` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesUpdateStepsMsiInstallation {
  const OsConfigGuestPoliciesRecipesUpdateStepsMsiInstallation({
    this.allowedExitCodes,
    required this.artifactId,
    this.flags,
  });

  final TfArg<List<Object?>>? allowedExitCodes;

  final TfArg<String> artifactId;

  final TfArg<List<Object?>>? flags;

  Map<String, Object?> encode() => {
    'allowed_exit_codes': ?allowedExitCodes?.toTfJson(),
    'artifact_id': artifactId.toTfJson(),
    'flags': ?flags?.toTfJson(),
  };
}

/// Typed helper for the `recipes.update_steps.rpm_installation` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesUpdateStepsRpmInstallation {
  const OsConfigGuestPoliciesRecipesUpdateStepsRpmInstallation({
    required this.artifactId,
  });

  final TfArg<String> artifactId;

  Map<String, Object?> encode() => {'artifact_id': artifactId.toTfJson()};
}

/// Typed helper for the `recipes.update_steps.script_run` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesRecipesUpdateStepsScriptRun {
  const OsConfigGuestPoliciesRecipesUpdateStepsScriptRun({
    this.allowedExitCodes,
    this.interpreter,
    required this.script,
  });

  final TfArg<List<Object?>>? allowedExitCodes;

  final TfArg<OsConfigGuestPoliciesRecipesUpdateStepsScriptRunInterpreter>?
  interpreter;

  final TfArg<String> script;

  Map<String, Object?> encode() => {
    'allowed_exit_codes': ?allowedExitCodes?.toTfJson(),
    'interpreter': ?interpreter?.toTfJson(),
    'script': script.toTfJson(),
  };
}

/// `interpreter` — derived from the provider schema description.
enum OsConfigGuestPoliciesRecipesUpdateStepsScriptRunInterpreter
    implements TerraformEnum {
  shell('SHELL'),
  powershell('POWERSHELL');

  const OsConfigGuestPoliciesRecipesUpdateStepsScriptRunInterpreter(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_os_config_guest_policies`.
///
/// An OS Config resource representing a guest configuration policy. These
/// policies represent the desired state for VM instance guest environments
/// including packages to install or remove, package repository configurations,
/// and software to install.
final class GoogleOsConfigGuestPolicies extends Resource {
  static const String tfType = 'google_os_config_guest_policies';

  GoogleOsConfigGuestPolicies({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? etag,
    required TfArg<String> guestPolicyId,
    TfArg<String>? project,
    required OsConfigGuestPoliciesAssignment assignment,
    List<OsConfigGuestPoliciesPackageRepositories>? packageRepositories,
    List<OsConfigGuestPoliciesPackages>? packages,
    List<OsConfigGuestPoliciesRecipes>? recipes,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'etag': ?etag,
           'guest_policy_id': guestPolicyId,
           'project': ?project,
           'assignment': TfArg.literal(assignment.encode()),
           if (packageRepositories != null)
             'package_repositories': TfArg.literal([
               for (final e in packageRepositories) e.encode(),
             ]),
           if (packages != null)
             'packages': TfArg.literal([for (final e in packages) e.encode()]),
           if (recipes != null)
             'recipes': TfArg.literal([for (final e in recipes) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOsConfigGuestPoliciesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOsConfigGuestPolicies>`.
  RefTo<GoogleOsConfigGuestPolicies> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
