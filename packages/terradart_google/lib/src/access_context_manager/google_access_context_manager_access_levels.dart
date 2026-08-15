// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_access_levels`.
const Set<String> _googleAccessContextManagerAccessLevelsSensitive = <String>{};

/// Typed helper for the `access_levels` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsAccessLevels {
  const AccessContextManagerAccessLevelsAccessLevels({
    this.description,
    required this.name,
    required this.title,
    this.basic,
    this.custom,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<String> title;

  final AccessContextManagerAccessLevelsAccessLevelsBasic? basic;

  final AccessContextManagerAccessLevelsAccessLevelsCustom? custom;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    'title': title.toTfJson(),
    if (basic != null) 'basic': basic!.encode(),
    if (custom != null) 'custom': custom!.encode(),
  };
}

/// Typed helper for the `access_levels.basic` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsAccessLevelsBasic {
  const AccessContextManagerAccessLevelsAccessLevelsBasic({
    this.combiningFunction,
    required this.conditions,
  });

  final TfArg<
    AccessContextManagerAccessLevelsAccessLevelsBasicCombiningFunction
  >?
  combiningFunction;

  final List<AccessContextManagerAccessLevelsAccessLevelsBasicConditions>
  conditions;

  Map<String, Object?> encode() => {
    if (combiningFunction != null)
      'combining_function': combiningFunction!.toTfJson(),
    'conditions': [for (final e in conditions) e.encode()],
  };
}

/// `combining_function` — derived from the provider schema description.
enum AccessContextManagerAccessLevelsAccessLevelsBasicCombiningFunction
    implements TerraformEnum {
  and('AND'),
  or('OR');

  const AccessContextManagerAccessLevelsAccessLevelsBasicCombiningFunction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `access_levels.basic.conditions` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsAccessLevelsBasicConditions {
  const AccessContextManagerAccessLevelsAccessLevelsBasicConditions({
    this.ipSubnetworks,
    this.members,
    this.negate,
    this.regions,
    this.requiredAccessLevels,
    this.devicePolicy,
    this.vpcNetworkSources,
  });

  final TfArg<List<Object?>>? ipSubnetworks;

  final TfArg<List<Object?>>? members;

  final TfArg<bool>? negate;

  final TfArg<List<Object?>>? regions;

  final TfArg<List<Object?>>? requiredAccessLevels;

  final AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicy?
  devicePolicy;

  final List<
    AccessContextManagerAccessLevelsAccessLevelsBasicConditionsVpcNetworkSources
  >?
  vpcNetworkSources;

  Map<String, Object?> encode() => {
    if (ipSubnetworks != null) 'ip_subnetworks': ipSubnetworks!.toTfJson(),
    if (members != null) 'members': members!.toTfJson(),
    if (negate != null) 'negate': negate!.toTfJson(),
    if (regions != null) 'regions': regions!.toTfJson(),
    if (requiredAccessLevels != null)
      'required_access_levels': requiredAccessLevels!.toTfJson(),
    if (devicePolicy != null) 'device_policy': devicePolicy!.encode(),
    if (vpcNetworkSources != null)
      'vpc_network_sources': [for (final e in vpcNetworkSources!) e.encode()],
  };
}

/// Typed helper for the `access_levels.basic.conditions.device_policy` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicy {
  const AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicy({
    this.allowedDeviceManagementLevels,
    this.allowedEncryptionStatuses,
    this.requireAdminApproval,
    this.requireCorpOwned,
    this.requireScreenLock,
    this.osConstraints,
  });

  final List<
    TfArg<
      AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicyAllowedDeviceManagementLevels
    >
  >?
  allowedDeviceManagementLevels;

  final List<
    TfArg<
      AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicyAllowedEncryptionStatuses
    >
  >?
  allowedEncryptionStatuses;

  final TfArg<bool>? requireAdminApproval;

  final TfArg<bool>? requireCorpOwned;

  final TfArg<bool>? requireScreenLock;

  final List<
    AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicyOsConstraints
  >?
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
enum AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicyAllowedDeviceManagementLevels
    implements TerraformEnum {
  managementUnspecified('MANAGEMENT_UNSPECIFIED'),
  none('NONE'),
  basic('BASIC'),
  complete('COMPLETE');

  const AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicyAllowedDeviceManagementLevels(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `allowed_encryption_statuses` — derived from the provider schema description.
enum AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicyAllowedEncryptionStatuses
    implements TerraformEnum {
  encryptionUnspecified('ENCRYPTION_UNSPECIFIED'),
  encryptionUnsupported('ENCRYPTION_UNSUPPORTED'),
  unencrypted('UNENCRYPTED'),
  encrypted('ENCRYPTED');

  const AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicyAllowedEncryptionStatuses(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `access_levels.basic.conditions.device_policy.os_constraints` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicyOsConstraints {
  const AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicyOsConstraints({
    this.minimumVersion,
    required this.osType,
  });

  final TfArg<String>? minimumVersion;

  final TfArg<
    AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicyOsConstraintsOsType
  >
  osType;

  Map<String, Object?> encode() => {
    if (minimumVersion != null) 'minimum_version': minimumVersion!.toTfJson(),
    'os_type': osType.toTfJson(),
  };
}

/// `os_type` — derived from the provider schema description.
enum AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicyOsConstraintsOsType
    implements TerraformEnum {
  osUnspecified('OS_UNSPECIFIED'),
  desktopMac('DESKTOP_MAC'),
  desktopWindows('DESKTOP_WINDOWS'),
  desktopLinux('DESKTOP_LINUX'),
  desktopChromeOs('DESKTOP_CHROME_OS'),
  android('ANDROID'),
  ios('IOS');

  const AccessContextManagerAccessLevelsAccessLevelsBasicConditionsDevicePolicyOsConstraintsOsType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `access_levels.basic.conditions.vpc_network_sources` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsAccessLevelsBasicConditionsVpcNetworkSources {
  const AccessContextManagerAccessLevelsAccessLevelsBasicConditionsVpcNetworkSources({
    this.vpcSubnetwork,
  });

  final AccessContextManagerAccessLevelsAccessLevelsBasicConditionsVpcNetworkSourcesVpcSubnetwork?
  vpcSubnetwork;

  Map<String, Object?> encode() => {
    if (vpcSubnetwork != null) 'vpc_subnetwork': vpcSubnetwork!.encode(),
  };
}

/// Typed helper for the `access_levels.basic.conditions.vpc_network_sources.vpc_subnetwork` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsAccessLevelsBasicConditionsVpcNetworkSourcesVpcSubnetwork {
  const AccessContextManagerAccessLevelsAccessLevelsBasicConditionsVpcNetworkSourcesVpcSubnetwork({
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

/// Typed helper for the `access_levels.custom` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsAccessLevelsCustom {
  const AccessContextManagerAccessLevelsAccessLevelsCustom({
    required this.expr,
  });

  final AccessContextManagerAccessLevelsAccessLevelsCustomExpr expr;

  Map<String, Object?> encode() => {'expr': expr.encode()};
}

/// Typed helper for the `access_levels.custom.expr` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsAccessLevelsCustomExpr {
  const AccessContextManagerAccessLevelsAccessLevelsCustomExpr({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Factory wrapper for `google_access_context_manager_access_levels`.
///
/// Replace all existing Access Levels in an Access Policy with the Access
/// Levels provided. This is done atomically. This is a bulk edit of all Access
/// Levels and may override existing Access Levels created by
/// `google_access_context_manager_access_level`, thus causing a permadiff if
/// used alongside `google_access_context_manager_access_level` on the same
/// parent.
///
/// ACM access levels (bulk replace) — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleAccessContextManagerAccessLevels extends Resource {
  static const String tfType = 'google_access_context_manager_access_levels';

  GoogleAccessContextManagerAccessLevels({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> parent,
    List<AccessContextManagerAccessLevelsAccessLevels>? accessLevels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'parent': parent,
           if (accessLevels != null)
             'access_levels': TfArg.literal([
               for (final e in accessLevels) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessLevelsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
