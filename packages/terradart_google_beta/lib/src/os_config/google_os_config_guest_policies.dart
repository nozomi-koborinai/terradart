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

  final TfArg<List<String>>? instanceNamePrefixes;

  final TfArg<List<String>>? instances;

  final TfArg<List<String>>? zones;

  final List<OsConfigGuestPoliciesGroupLabels>? groupLabels;

  final List<OsConfigGuestPoliciesOsTypes>? osTypes;

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
final class OsConfigGuestPoliciesGroupLabels {
  const OsConfigGuestPoliciesGroupLabels({required this.labels});

  final TfArg<Map<String, String>> labels;

  Map<String, Object?> encode() => {'labels': labels.toTfJson()};
}

/// Typed helper for the `assignment.os_types` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesOsTypes {
  const OsConfigGuestPoliciesOsTypes({
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

  final OsConfigGuestPoliciesApt? apt;

  final OsConfigGuestPoliciesGoo? goo;

  final OsConfigGuestPoliciesYum? yum;

  final OsConfigGuestPoliciesZypper? zypper;

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
final class OsConfigGuestPoliciesApt {
  const OsConfigGuestPoliciesApt({
    this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  final OsConfigGuestPoliciesArchiveType? archiveType;

  final TfArg<List<String>> components;

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
extension type const OsConfigGuestPoliciesArchiveType._(TfArg<String> _)
    implements TfArg<String> {
  OsConfigGuestPoliciesArchiveType.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigGuestPoliciesArchiveType.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigGuestPoliciesArchiveType.arg(TfArg<String> arg) : this._(arg);

  static const deb = OsConfigGuestPoliciesArchiveType._(TfArgLiteral('DEB'));
  static const debSrc = OsConfigGuestPoliciesArchiveType._(
    TfArgLiteral('DEB_SRC'),
  );

  static const List<OsConfigGuestPoliciesArchiveType> values = [deb, debSrc];
}

/// Typed helper for the `package_repositories.goo` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesGoo {
  const OsConfigGuestPoliciesGoo({required this.name, required this.url});

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
final class OsConfigGuestPoliciesYum {
  const OsConfigGuestPoliciesYum({
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

/// Typed helper for the `package_repositories.zypper` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesZypper {
  const OsConfigGuestPoliciesZypper({
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

/// Typed helper for the `packages` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesPackages {
  const OsConfigGuestPoliciesPackages({
    this.desiredState,
    this.manager,
    required this.name,
  });

  final OsConfigGuestPoliciesDesiredState? desiredState;

  final OsConfigGuestPoliciesManager? manager;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'desired_state': ?desiredState?.toTfJson(),
    'manager': ?manager?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `desired_state` — derived from the provider schema description.
extension type const OsConfigGuestPoliciesDesiredState._(TfArg<String> _)
    implements TfArg<String> {
  OsConfigGuestPoliciesDesiredState.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigGuestPoliciesDesiredState.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigGuestPoliciesDesiredState.arg(TfArg<String> arg) : this._(arg);

  static const installed = OsConfigGuestPoliciesDesiredState._(
    TfArgLiteral('INSTALLED'),
  );
  static const updated = OsConfigGuestPoliciesDesiredState._(
    TfArgLiteral('UPDATED'),
  );
  static const removed = OsConfigGuestPoliciesDesiredState._(
    TfArgLiteral('REMOVED'),
  );

  static const List<OsConfigGuestPoliciesDesiredState> values = [
    installed,
    updated,
    removed,
  ];
}

/// `manager` — derived from the provider schema description.
extension type const OsConfigGuestPoliciesManager._(TfArg<String> _)
    implements TfArg<String> {
  OsConfigGuestPoliciesManager.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigGuestPoliciesManager.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigGuestPoliciesManager.arg(TfArg<String> arg) : this._(arg);

  static const any = OsConfigGuestPoliciesManager._(TfArgLiteral('ANY'));
  static const apt = OsConfigGuestPoliciesManager._(TfArgLiteral('APT'));
  static const yum = OsConfigGuestPoliciesManager._(TfArgLiteral('YUM'));
  static const zypper = OsConfigGuestPoliciesManager._(TfArgLiteral('ZYPPER'));
  static const goo = OsConfigGuestPoliciesManager._(TfArgLiteral('GOO'));

  static const List<OsConfigGuestPoliciesManager> values = [
    any,
    apt,
    yum,
    zypper,
    goo,
  ];
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

  final OsConfigGuestPoliciesDesiredState? desiredState;

  final TfArg<String> name;

  final TfArg<String>? version;

  final List<OsConfigGuestPoliciesArtifacts>? artifacts;

  final List<OsConfigGuestPoliciesInstallSteps>? installSteps;

  final List<OsConfigGuestPoliciesUpdateSteps>? updateSteps;

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

/// Typed helper for the `recipes.artifacts` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesArtifacts {
  const OsConfigGuestPoliciesArtifacts({
    this.allowInsecure,
    required this.id,
    this.gcs,
    this.remote,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String> id;

  final OsConfigGuestPoliciesGcs? gcs;

  final OsConfigGuestPoliciesRemote? remote;

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
final class OsConfigGuestPoliciesGcs {
  const OsConfigGuestPoliciesGcs({this.bucket, this.generation, this.object});

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
final class OsConfigGuestPoliciesRemote {
  const OsConfigGuestPoliciesRemote({this.checkSum, this.uri});

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
final class OsConfigGuestPoliciesInstallSteps {
  const OsConfigGuestPoliciesInstallSteps({
    this.archiveExtraction,
    this.dpkgInstallation,
    this.fileCopy,
    this.fileExec,
    this.msiInstallation,
    this.rpmInstallation,
    this.scriptRun,
  });

  final OsConfigGuestPoliciesArchiveExtraction? archiveExtraction;

  final OsConfigGuestPoliciesDpkgInstallation? dpkgInstallation;

  final OsConfigGuestPoliciesFileCopy? fileCopy;

  final OsConfigGuestPoliciesInstallStepsFileExec? fileExec;

  final OsConfigGuestPoliciesMsiInstallation? msiInstallation;

  final OsConfigGuestPoliciesRpmInstallation? rpmInstallation;

  final OsConfigGuestPoliciesScriptRun? scriptRun;

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
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigGuestPoliciesArchiveExtraction {
  const OsConfigGuestPoliciesArchiveExtraction({
    required this.artifactId,
    this.destination,
    required this.type,
  });

  final TfArg<String> artifactId;

  final TfArg<String>? destination;

  final OsConfigGuestPoliciesType type;

  Map<String, Object?> encode() => {
    'artifact_id': artifactId.toTfJson(),
    'destination': ?destination?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const OsConfigGuestPoliciesType._(TfArg<String> _)
    implements TfArg<String> {
  OsConfigGuestPoliciesType.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigGuestPoliciesType.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigGuestPoliciesType.arg(TfArg<String> arg) : this._(arg);

  static const tar = OsConfigGuestPoliciesType._(TfArgLiteral('TAR'));
  static const tarGzip = OsConfigGuestPoliciesType._(TfArgLiteral('TAR_GZIP'));
  static const tarBzip = OsConfigGuestPoliciesType._(TfArgLiteral('TAR_BZIP'));
  static const tarLzma = OsConfigGuestPoliciesType._(TfArgLiteral('TAR_LZMA'));
  static const tarXz = OsConfigGuestPoliciesType._(TfArgLiteral('TAR_XZ'));
  static const zip = OsConfigGuestPoliciesType._(TfArgLiteral('ZIP'));

  static const List<OsConfigGuestPoliciesType> values = [
    tar,
    tarGzip,
    tarBzip,
    tarLzma,
    tarXz,
    zip,
  ];
}

/// Typed helper for the `recipes.install_steps.dpkg_installation` block of
/// `google_os_config_guest_policies` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigGuestPoliciesDpkgInstallation {
  const OsConfigGuestPoliciesDpkgInstallation({required this.artifactId});

  final TfArg<String> artifactId;

  Map<String, Object?> encode() => {'artifact_id': artifactId.toTfJson()};
}

/// Typed helper for the `recipes.install_steps.file_copy` block of
/// `google_os_config_guest_policies` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigGuestPoliciesFileCopy {
  const OsConfigGuestPoliciesFileCopy({
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
final class OsConfigGuestPoliciesInstallStepsFileExec {
  const OsConfigGuestPoliciesInstallStepsFileExec({
    this.allowedExitCodes,
    this.args,
    this.artifactId,
    this.localPath,
  });

  final TfArg<String>? allowedExitCodes;

  final TfArg<List<String>>? args;

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
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigGuestPoliciesMsiInstallation {
  const OsConfigGuestPoliciesMsiInstallation({
    this.allowedExitCodes,
    required this.artifactId,
    this.flags,
  });

  final TfArg<List<num>>? allowedExitCodes;

  final TfArg<String> artifactId;

  final TfArg<List<String>>? flags;

  Map<String, Object?> encode() => {
    'allowed_exit_codes': ?allowedExitCodes?.toTfJson(),
    'artifact_id': artifactId.toTfJson(),
    'flags': ?flags?.toTfJson(),
  };
}

/// Typed helper for the `recipes.install_steps.rpm_installation` block of
/// `google_os_config_guest_policies` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigGuestPoliciesRpmInstallation {
  const OsConfigGuestPoliciesRpmInstallation({required this.artifactId});

  final TfArg<String> artifactId;

  Map<String, Object?> encode() => {'artifact_id': artifactId.toTfJson()};
}

/// Typed helper for the `recipes.install_steps.script_run` block of
/// `google_os_config_guest_policies` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigGuestPoliciesScriptRun {
  const OsConfigGuestPoliciesScriptRun({
    this.allowedExitCodes,
    this.interpreter,
    required this.script,
  });

  final TfArg<List<num>>? allowedExitCodes;

  final OsConfigGuestPoliciesInterpreter? interpreter;

  final TfArg<String> script;

  Map<String, Object?> encode() => {
    'allowed_exit_codes': ?allowedExitCodes?.toTfJson(),
    'interpreter': ?interpreter?.toTfJson(),
    'script': script.toTfJson(),
  };
}

/// `interpreter` — derived from the provider schema description.
extension type const OsConfigGuestPoliciesInterpreter._(TfArg<String> _)
    implements TfArg<String> {
  OsConfigGuestPoliciesInterpreter.variable(String name)
    : this._(TfArg.variable(name));
  OsConfigGuestPoliciesInterpreter.expression(String template)
    : this._(TfArg.expression(template));
  const OsConfigGuestPoliciesInterpreter.arg(TfArg<String> arg) : this._(arg);

  static const shell = OsConfigGuestPoliciesInterpreter._(
    TfArgLiteral('SHELL'),
  );
  static const powershell = OsConfigGuestPoliciesInterpreter._(
    TfArgLiteral('POWERSHELL'),
  );

  static const List<OsConfigGuestPoliciesInterpreter> values = [
    shell,
    powershell,
  ];
}

/// Typed helper for the `recipes.update_steps` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesUpdateSteps {
  const OsConfigGuestPoliciesUpdateSteps({
    this.archiveExtraction,
    this.dpkgInstallation,
    this.fileCopy,
    this.fileExec,
    this.msiInstallation,
    this.rpmInstallation,
    this.scriptRun,
  });

  final OsConfigGuestPoliciesArchiveExtraction? archiveExtraction;

  final OsConfigGuestPoliciesDpkgInstallation? dpkgInstallation;

  final OsConfigGuestPoliciesFileCopy? fileCopy;

  final OsConfigGuestPoliciesUpdateStepsFileExec? fileExec;

  final OsConfigGuestPoliciesMsiInstallation? msiInstallation;

  final OsConfigGuestPoliciesRpmInstallation? rpmInstallation;

  final OsConfigGuestPoliciesScriptRun? scriptRun;

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

/// Typed helper for the `recipes.update_steps.file_exec` block of
/// `google_os_config_guest_policies` (derived from provider schema).
@immutable
final class OsConfigGuestPoliciesUpdateStepsFileExec {
  const OsConfigGuestPoliciesUpdateStepsFileExec({
    this.allowedExitCodes,
    this.args,
    this.artifactId,
    this.localPath,
  });

  final TfArg<List<num>>? allowedExitCodes;

  final TfArg<List<String>>? args;

  final TfArg<String>? artifactId;

  final TfArg<String>? localPath;

  Map<String, Object?> encode() => {
    'allowed_exit_codes': ?allowedExitCodes?.toTfJson(),
    'args': ?args?.toTfJson(),
    'artifact_id': ?artifactId?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
  };
}

/// Factory wrapper for `google_os_config_guest_policies`.
///
/// An OS Config resource representing a guest configuration policy. These
/// policies represent the desired state for VM instance guest environments
/// including packages to install or remove, package repository configurations,
/// and software to install.
final class GoogleOsConfigGuestPolicies extends Resource {
  static const String tfType = 'google_os_config_guest_policies';

  GoogleOsConfigGuestPolicies(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `guest_policy_id` attribute.
  TfRef<String> get guestPolicyId =>
      TfRef.attribute<String>(this, 'guest_policy_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
