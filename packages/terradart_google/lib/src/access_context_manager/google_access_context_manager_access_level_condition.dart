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
    TfArg<
      AccessContextManagerAccessLevelConditionDevicePolicyAllowedDeviceManagementLevels
    >
  >?
  allowedDeviceManagementLevels;

  final List<
    TfArg<
      AccessContextManagerAccessLevelConditionDevicePolicyAllowedEncryptionStatuses
    >
  >?
  allowedEncryptionStatuses;

  final TfArg<bool>? requireAdminApproval;

  final TfArg<bool>? requireCorpOwned;

  final TfArg<bool>? requireScreenLock;

  final List<AccessContextManagerAccessLevelConditionDevicePolicyOsConstraints>?
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
    if (requireAdminApproval != null)
      'require_admin_approval': requireAdminApproval!.toTfJson(),
    if (requireCorpOwned != null)
      'require_corp_owned': requireCorpOwned!.toTfJson(),
    if (requireScreenLock != null)
      'require_screen_lock': requireScreenLock!.toTfJson(),
    if (osConstraints != null)
      'os_constraints': [for (final e in osConstraints!) e.encode()],
  };
}

/// `allowed_device_management_levels` — derived from the provider schema description.
enum AccessContextManagerAccessLevelConditionDevicePolicyAllowedDeviceManagementLevels
    implements TerraformEnum {
  managementUnspecified('MANAGEMENT_UNSPECIFIED'),
  none('NONE'),
  basic('BASIC'),
  complete('COMPLETE');

  const AccessContextManagerAccessLevelConditionDevicePolicyAllowedDeviceManagementLevels(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `allowed_encryption_statuses` — derived from the provider schema description.
enum AccessContextManagerAccessLevelConditionDevicePolicyAllowedEncryptionStatuses
    implements TerraformEnum {
  encryptionUnspecified('ENCRYPTION_UNSPECIFIED'),
  encryptionUnsupported('ENCRYPTION_UNSUPPORTED'),
  unencrypted('UNENCRYPTED'),
  encrypted('ENCRYPTED');

  const AccessContextManagerAccessLevelConditionDevicePolicyAllowedEncryptionStatuses(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `device_policy.os_constraints` block of
/// `google_access_context_manager_access_level_condition` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelConditionDevicePolicyOsConstraints {
  const AccessContextManagerAccessLevelConditionDevicePolicyOsConstraints({
    this.minimumVersion,
    required this.osType,
  });

  final TfArg<String>? minimumVersion;

  final TfArg<
    AccessContextManagerAccessLevelConditionDevicePolicyOsConstraintsOsType
  >
  osType;

  Map<String, Object?> encode() => {
    if (minimumVersion != null) 'minimum_version': minimumVersion!.toTfJson(),
    'os_type': osType.toTfJson(),
  };
}

/// `os_type` — derived from the provider schema description.
enum AccessContextManagerAccessLevelConditionDevicePolicyOsConstraintsOsType
    implements TerraformEnum {
  osUnspecified('OS_UNSPECIFIED'),
  desktopMac('DESKTOP_MAC'),
  desktopWindows('DESKTOP_WINDOWS'),
  desktopLinux('DESKTOP_LINUX'),
  desktopChromeOs('DESKTOP_CHROME_OS'),
  android('ANDROID'),
  ios('IOS');

  const AccessContextManagerAccessLevelConditionDevicePolicyOsConstraintsOsType(
    this.terraformValue,
  );
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

  final AccessContextManagerAccessLevelConditionVpcNetworkSourcesVpcSubnetwork?
  vpcSubnetwork;

  Map<String, Object?> encode() => {
    if (vpcSubnetwork != null) 'vpc_subnetwork': vpcSubnetwork!.encode(),
  };
}

/// Typed helper for the `vpc_network_sources.vpc_subnetwork` block of
/// `google_access_context_manager_access_level_condition` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelConditionVpcNetworkSourcesVpcSubnetwork {
  const AccessContextManagerAccessLevelConditionVpcNetworkSourcesVpcSubnetwork({
    required this.network,
    this.vpcIpSubnetworks,
  });

  final TfArg<String> network;

  final TfArg<List<Object?>>? vpcIpSubnetworks;

  Map<String, Object?> encode() => {
    'network': network.toTfJson(),
    if (vpcIpSubnetworks != null)
      'vpc_ip_subnetworks': vpcIpSubnetworks!.toTfJson(),
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
///       AccessContextManagerAccessLevelConditionDevicePolicyOsConstraints(
///         osType: TfArg.literal(
///           AccessContextManagerAccessLevelConditionDevicePolicyOsConstraintsOsType
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_level': accessLevel,
           if (ipSubnetworks != null) 'ip_subnetworks': ipSubnetworks,
           if (members != null) 'members': members,
           if (negate != null) 'negate': negate,
           if (devicePolicy != null)
             'device_policy': TfArg.literal(devicePolicy.encode()),
           if (regions != null) 'regions': regions,
           if (requiredAccessLevels != null)
             'required_access_levels': requiredAccessLevels,
           if (vpcNetworkSources != null)
             'vpc_network_sources': TfArg.literal([
               for (final e in vpcNetworkSources) e.encode(),
             ]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessLevelConditionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_id` attribute.
  TfRef<String> get accessPolicyId =>
      TfRef.attribute<String>(this, 'access_policy_id');
}
