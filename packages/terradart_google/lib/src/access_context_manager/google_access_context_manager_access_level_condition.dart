// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_access_level_condition`.
const Set<String> _googleAccessContextManagerAccessLevelConditionSensitive =
    <String>{};

/// Typed helper for the `device_policy` block of
/// `google_access_context_manager_access_level_condition` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelConditionDevicePolicy {
  const AccessContextManagerAccessLevelConditionDevicePolicy({
    this.allowedDeviceManagementLevels,
    this.allowedEncryptionStatuses,
    this.requireAdminApproval,
    this.requireCorpOwned,
    this.requireScreenLock,
    this.osConstraints,
  });

  final List<
    TfArg<AccessContextManagerAccessLevelConditionAllowedDeviceManagementLevels>
  >?
  allowedDeviceManagementLevels;

  final List<
    TfArg<AccessContextManagerAccessLevelConditionAllowedEncryptionStatuses>
  >?
  allowedEncryptionStatuses;

  final TfArg<bool>? requireAdminApproval;

  final TfArg<bool>? requireCorpOwned;

  final TfArg<bool>? requireScreenLock;

  final List<AccessContextManagerAccessLevelConditionOsConstraints>?
  osConstraints;

  Map<String, Object?> encode() => {
    if (allowedDeviceManagementLevels != null)
      'allowed_device_management_levels': [
        for (final e in allowedDeviceManagementLevels!) e.toTfJson(),
      ],
    if (allowedEncryptionStatuses != null)
      'allowed_encryption_statuses': [
        for (final e in allowedEncryptionStatuses!) e.toTfJson(),
      ],
    'require_admin_approval': ?requireAdminApproval?.toTfJson(),
    'require_corp_owned': ?requireCorpOwned?.toTfJson(),
    'require_screen_lock': ?requireScreenLock?.toTfJson(),
    if (osConstraints != null)
      'os_constraints': [for (final e in osConstraints!) e.encode()],
  };
}

/// `allowed_device_management_levels` — derived from the provider schema description.
enum AccessContextManagerAccessLevelConditionAllowedDeviceManagementLevels
    implements TerraformEnum {
  managementUnspecified('MANAGEMENT_UNSPECIFIED'),
  none('NONE'),
  basic('BASIC'),
  complete('COMPLETE');

  const AccessContextManagerAccessLevelConditionAllowedDeviceManagementLevels(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `allowed_encryption_statuses` — derived from the provider schema description.
enum AccessContextManagerAccessLevelConditionAllowedEncryptionStatuses
    implements TerraformEnum {
  encryptionUnspecified('ENCRYPTION_UNSPECIFIED'),
  encryptionUnsupported('ENCRYPTION_UNSUPPORTED'),
  unencrypted('UNENCRYPTED'),
  encrypted('ENCRYPTED');

  const AccessContextManagerAccessLevelConditionAllowedEncryptionStatuses(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `device_policy.os_constraints` block of
/// `google_access_context_manager_access_level_condition` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelConditionOsConstraints {
  const AccessContextManagerAccessLevelConditionOsConstraints({
    this.minimumVersion,
    required this.osType,
  });

  final TfArg<String>? minimumVersion;

  final TfArg<AccessContextManagerAccessLevelConditionOsType> osType;

  Map<String, Object?> encode() => {
    'minimum_version': ?minimumVersion?.toTfJson(),
    'os_type': osType.toTfJson(),
  };
}

/// `os_type` — derived from the provider schema description.
enum AccessContextManagerAccessLevelConditionOsType implements TerraformEnum {
  osUnspecified('OS_UNSPECIFIED'),
  desktopMac('DESKTOP_MAC'),
  desktopWindows('DESKTOP_WINDOWS'),
  desktopLinux('DESKTOP_LINUX'),
  desktopChromeOs('DESKTOP_CHROME_OS'),
  android('ANDROID'),
  ios('IOS');

  const AccessContextManagerAccessLevelConditionOsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `vpc_network_sources` block of
/// `google_access_context_manager_access_level_condition` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelConditionVpcNetworkSources {
  const AccessContextManagerAccessLevelConditionVpcNetworkSources({
    this.vpcSubnetwork,
  });

  final AccessContextManagerAccessLevelConditionVpcSubnetwork? vpcSubnetwork;

  Map<String, Object?> encode() => {'vpc_subnetwork': ?vpcSubnetwork?.encode()};
}

/// Typed helper for the `vpc_network_sources.vpc_subnetwork` block of
/// `google_access_context_manager_access_level_condition` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelConditionVpcSubnetwork {
  const AccessContextManagerAccessLevelConditionVpcSubnetwork({
    required this.network,
    this.vpcIpSubnetworks,
  });

  final TfArg<String> network;

  final TfArg<List<String>>? vpcIpSubnetworks;

  Map<String, Object?> encode() => {
    'network': network.toTfJson(),
    'vpc_ip_subnetworks': ?vpcIpSubnetworks?.toTfJson(),
  };
}

/// Factory wrapper for `google_access_context_manager_access_level_condition`.
///
/// Allows configuring a single access level condition to be appended to an
/// access level's conditions. This resource is intended to be used in cases
/// where it is not possible to compile a full list of conditions to include in
/// a `google_access_context_manager_access_level` resource, to enable them to
/// be added separately.
///
/// ~> **Note:** If this resource is used alongside a
/// `google_access_context_manager_access_level` resource, the access level
/// resource must have a `lifecycle` block with `ignore_changes =
/// [basic[0].conditions]` so they don't fight over which service accounts
/// should be included.
///
/// Access Context Manager **access-level condition** — an additive
/// VPC-SC condition appended to an existing access level. Prefer a
/// dedicated level that is **not** attached to a service perimeter
/// so the condition does not change live perimeter evaluation.
///
/// Prefer a thin smoke stack: [accessLevel] from the sibling level,
/// Hashicorp basic [ipSubnetworks] / [members] / [devicePolicy] /
/// [regions], and [deletionPolicy] `DELETE`. Do not set
/// [vpcNetworkSources] together with [ipSubnetworks].
///
/// `access_context_quickstart` is apply-smoke skipped (needs a real
/// organization id), so this factory is synth + `terraform validate`
/// only.
///
/// Example:
/// ```dart
/// GoogleAccessContextManagerAccessLevelCondition(
///   localName: 'chromeos_condition',
///   accessLevel: TfArg.ref(chromeos.nameRef),
///   ipSubnetworks: TfArg.literal(['192.0.4.0/24']),
///   members: TfArg.literal([
///     'user:test@google.com',
///     'user:test2@google.com',
///   ]),
///   negate: TfArg.literal(false),
///   devicePolicy: AccessContextManagerAccessLevelConditionDevicePolicy(
///     requireScreenLock: TfArg.literal(false),
///     requireAdminApproval: TfArg.literal(false),
///     requireCorpOwned: TfArg.literal(true),
///     osConstraints: [
///       .new(
///         osType: TfArg.literal(
///           AccessContextManagerAccessLevelConditionOsType
///               .desktopChromeOs,
///         ),
///       ),
///     ],
///   ),
///   regions: TfArg.literal(['IT', 'US']),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleAccessContextManagerAccessLevelCondition extends Resource {
  static const String tfType =
      'google_access_context_manager_access_level_condition';

  GoogleAccessContextManagerAccessLevelCondition({
    required super.localName,
    required TfArg<String> accessLevel,
    TfArg<List<String>>? ipSubnetworks,
    TfArg<List<String>>? members,
    TfArg<bool>? negate,
    AccessContextManagerAccessLevelConditionDevicePolicy? devicePolicy,
    TfArg<List<String>>? regions,
    TfArg<List<String>>? requiredAccessLevels,
    List<AccessContextManagerAccessLevelConditionVpcNetworkSources>?
    vpcNetworkSources,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_level': accessLevel,
           'ip_subnetworks': ?ipSubnetworks,
           'members': ?members,
           'negate': ?negate,
           if (devicePolicy != null)
             'device_policy': TfArg.literal(devicePolicy.encode()),
           'regions': ?regions,
           'required_access_levels': ?requiredAccessLevels,
           if (vpcNetworkSources != null)
             'vpc_network_sources': TfArg.literal([
               for (final e in vpcNetworkSources) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessLevelConditionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerAccessLevelCondition>`.
  RefTo<GoogleAccessContextManagerAccessLevelCondition> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_id` attribute.
  TfRef<String> get accessPolicyId =>
      TfRef.attribute<String>(this, 'access_policy_id');

  /// Reference to `access_level` attribute.
  TfRef<String> get accessLevelRef =>
      TfRef.attribute<String>(this, 'access_level');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `ip_subnetworks` attribute.
  TfRef<List<String>> get ipSubnetworksRef =>
      TfRef.attribute<List<String>>(this, 'ip_subnetworks');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `negate` attribute.
  TfRef<bool> get negateRef => TfRef.attribute<bool>(this, 'negate');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regionsRef =>
      TfRef.attribute<List<String>>(this, 'regions');

  /// Reference to `required_access_levels` attribute.
  TfRef<List<String>> get requiredAccessLevelsRef =>
      TfRef.attribute<List<String>>(this, 'required_access_levels');
}
