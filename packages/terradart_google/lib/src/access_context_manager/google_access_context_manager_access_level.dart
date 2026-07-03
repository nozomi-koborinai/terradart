// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_access_level`.
const Set<String> _googleAccessContextManagerAccessLevelSensitive = <String>{};

/// Typed helper for the `basic` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelBasic {
  const AccessContextManagerAccessLevelBasic({
    this.combiningFunction,
    required this.conditions,
  });

  final TfArg<AccessContextManagerAccessLevelBasicCombiningFunction>?
  combiningFunction;

  final List<AccessContextManagerAccessLevelBasicConditions> conditions;

  Map<String, Object?> encode() => {
    if (combiningFunction != null)
      'combining_function': combiningFunction!.toTfJson(),
    'conditions': [for (final e in conditions) e.encode()],
  };
}

/// `combining_function` — derived from the provider schema description.
enum AccessContextManagerAccessLevelBasicCombiningFunction
    implements TerraformEnum {
  and('AND'),
  or('OR');

  const AccessContextManagerAccessLevelBasicCombiningFunction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `basic.conditions` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelBasicConditions {
  const AccessContextManagerAccessLevelBasicConditions({
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

  final AccessContextManagerAccessLevelBasicConditionsDevicePolicy?
  devicePolicy;

  final List<AccessContextManagerAccessLevelBasicConditionsVpcNetworkSources>?
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

/// Typed helper for the `basic.conditions.device_policy` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelBasicConditionsDevicePolicy {
  const AccessContextManagerAccessLevelBasicConditionsDevicePolicy({
    this.allowedDeviceManagementLevels,
    this.allowedEncryptionStatuses,
    this.requireAdminApproval,
    this.requireCorpOwned,
    this.requireScreenLock,
    this.osConstraints,
  });

  final List<
    TfArg<
      AccessContextManagerAccessLevelBasicConditionsDevicePolicyAllowedDeviceManagementLevels
    >
  >?
  allowedDeviceManagementLevels;

  final List<
    TfArg<
      AccessContextManagerAccessLevelBasicConditionsDevicePolicyAllowedEncryptionStatuses
    >
  >?
  allowedEncryptionStatuses;

  final TfArg<bool>? requireAdminApproval;

  final TfArg<bool>? requireCorpOwned;

  final TfArg<bool>? requireScreenLock;

  final List<
    AccessContextManagerAccessLevelBasicConditionsDevicePolicyOsConstraints
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
enum AccessContextManagerAccessLevelBasicConditionsDevicePolicyAllowedDeviceManagementLevels
    implements TerraformEnum {
  managementUnspecified('MANAGEMENT_UNSPECIFIED'),
  none('NONE'),
  basic('BASIC'),
  complete('COMPLETE');

  const AccessContextManagerAccessLevelBasicConditionsDevicePolicyAllowedDeviceManagementLevels(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `allowed_encryption_statuses` — derived from the provider schema description.
enum AccessContextManagerAccessLevelBasicConditionsDevicePolicyAllowedEncryptionStatuses
    implements TerraformEnum {
  encryptionUnspecified('ENCRYPTION_UNSPECIFIED'),
  encryptionUnsupported('ENCRYPTION_UNSUPPORTED'),
  unencrypted('UNENCRYPTED'),
  encrypted('ENCRYPTED');

  const AccessContextManagerAccessLevelBasicConditionsDevicePolicyAllowedEncryptionStatuses(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `basic.conditions.device_policy.os_constraints` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelBasicConditionsDevicePolicyOsConstraints {
  const AccessContextManagerAccessLevelBasicConditionsDevicePolicyOsConstraints({
    this.minimumVersion,
    required this.osType,
    this.requireVerifiedChromeOs,
  });

  final TfArg<String>? minimumVersion;

  final TfArg<
    AccessContextManagerAccessLevelBasicConditionsDevicePolicyOsConstraintsOsType
  >
  osType;

  final TfArg<bool>? requireVerifiedChromeOs;

  Map<String, Object?> encode() => {
    if (minimumVersion != null) 'minimum_version': minimumVersion!.toTfJson(),
    'os_type': osType.toTfJson(),
    if (requireVerifiedChromeOs != null)
      'require_verified_chrome_os': requireVerifiedChromeOs!.toTfJson(),
  };
}

/// `os_type` — derived from the provider schema description.
enum AccessContextManagerAccessLevelBasicConditionsDevicePolicyOsConstraintsOsType
    implements TerraformEnum {
  osUnspecified('OS_UNSPECIFIED'),
  desktopMac('DESKTOP_MAC'),
  desktopWindows('DESKTOP_WINDOWS'),
  desktopLinux('DESKTOP_LINUX'),
  desktopChromeOs('DESKTOP_CHROME_OS'),
  android('ANDROID'),
  ios('IOS');

  const AccessContextManagerAccessLevelBasicConditionsDevicePolicyOsConstraintsOsType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `basic.conditions.vpc_network_sources` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelBasicConditionsVpcNetworkSources {
  const AccessContextManagerAccessLevelBasicConditionsVpcNetworkSources({
    this.vpcSubnetwork,
  });

  final AccessContextManagerAccessLevelBasicConditionsVpcNetworkSourcesVpcSubnetwork?
  vpcSubnetwork;

  Map<String, Object?> encode() => {
    if (vpcSubnetwork != null) 'vpc_subnetwork': vpcSubnetwork!.encode(),
  };
}

/// Typed helper for the `basic.conditions.vpc_network_sources.vpc_subnetwork` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelBasicConditionsVpcNetworkSourcesVpcSubnetwork {
  const AccessContextManagerAccessLevelBasicConditionsVpcNetworkSourcesVpcSubnetwork({
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

/// Typed helper for the `custom` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelCustom {
  const AccessContextManagerAccessLevelCustom({required this.expr});

  final AccessContextManagerAccessLevelCustomExpr expr;

  Map<String, Object?> encode() => {'expr': expr.encode()};
}

/// Typed helper for the `custom.expr` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelCustomExpr {
  const AccessContextManagerAccessLevelCustomExpr({
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

/// Factory wrapper for `google_access_context_manager_access_level`.
///
/// An AccessLevel is a label that can be applied to requests to GCP services,
/// along with a list of requirements necessary for the label to be applied.
final class GoogleAccessContextManagerAccessLevel extends Resource {
  static const String tfType = 'google_access_context_manager_access_level';

  GoogleAccessContextManagerAccessLevel({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<String> title,
    TfArg<String>? description,
    AccessContextManagerAccessLevelBasic? basic,
    AccessContextManagerAccessLevelCustom? custom,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent': parent,
           'title': title,
           if (description != null) 'description': description,
           if (basic != null) 'basic': TfArg.literal(basic.encode()),
           if (custom != null) 'custom': TfArg.literal(custom.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessLevelSensitive;

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
