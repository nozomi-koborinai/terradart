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
final class AccessContextManagerAccessLevels {
  const AccessContextManagerAccessLevels({
    this.description,
    required this.name,
    required this.title,
    this.basic,
    this.custom,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<String> title;

  final AccessContextManagerAccessLevelsBasic? basic;

  final AccessContextManagerAccessLevelsCustom? custom;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'title': title.toTfJson(),
    'basic': ?basic?.encode(),
    'custom': ?custom?.encode(),
  };
}

/// Typed helper for the `access_levels.basic` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsBasic {
  const AccessContextManagerAccessLevelsBasic({
    this.combiningFunction,
    required this.conditions,
  });

  final TfArg<AccessContextManagerAccessLevelsCombiningFunction>?
  combiningFunction;

  final List<AccessContextManagerAccessLevelsConditions> conditions;

  Map<String, Object?> encode() => {
    'combining_function': ?combiningFunction?.toTfJson(),
    'conditions': [for (final e in conditions) e.encode()],
  };
}

/// `combining_function` — derived from the provider schema description.
enum AccessContextManagerAccessLevelsCombiningFunction
    implements TerraformEnum {
  and('AND'),
  or('OR');

  const AccessContextManagerAccessLevelsCombiningFunction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `access_levels.basic.conditions` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsConditions {
  const AccessContextManagerAccessLevelsConditions({
    this.ipSubnetworks,
    this.members,
    this.negate,
    this.regions,
    this.requiredAccessLevels,
    this.devicePolicy,
    this.vpcNetworkSources,
  });

  final TfArg<List<String>>? ipSubnetworks;

  final TfArg<List<String>>? members;

  final TfArg<bool>? negate;

  final TfArg<List<String>>? regions;

  final TfArg<List<String>>? requiredAccessLevels;

  final AccessContextManagerAccessLevelsDevicePolicy? devicePolicy;

  final List<AccessContextManagerAccessLevelsVpcNetworkSources>?
  vpcNetworkSources;

  Map<String, Object?> encode() => {
    'ip_subnetworks': ?ipSubnetworks?.toTfJson(),
    'members': ?members?.toTfJson(),
    'negate': ?negate?.toTfJson(),
    'regions': ?regions?.toTfJson(),
    'required_access_levels': ?requiredAccessLevels?.toTfJson(),
    'device_policy': ?devicePolicy?.encode(),
    if (vpcNetworkSources != null)
      'vpc_network_sources': [for (final e in vpcNetworkSources!) e.encode()],
  };
}

/// Typed helper for the `access_levels.basic.conditions.device_policy` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsDevicePolicy {
  const AccessContextManagerAccessLevelsDevicePolicy({
    this.allowedDeviceManagementLevels,
    this.allowedEncryptionStatuses,
    this.requireAdminApproval,
    this.requireCorpOwned,
    this.requireScreenLock,
    this.osConstraints,
  });

  final List<
    TfArg<AccessContextManagerAccessLevelsAllowedDeviceManagementLevels>
  >?
  allowedDeviceManagementLevels;

  final List<TfArg<AccessContextManagerAccessLevelsAllowedEncryptionStatuses>>?
  allowedEncryptionStatuses;

  final TfArg<bool>? requireAdminApproval;

  final TfArg<bool>? requireCorpOwned;

  final TfArg<bool>? requireScreenLock;

  final List<AccessContextManagerAccessLevelsOsConstraints>? osConstraints;

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
enum AccessContextManagerAccessLevelsAllowedDeviceManagementLevels
    implements TerraformEnum {
  managementUnspecified('MANAGEMENT_UNSPECIFIED'),
  none('NONE'),
  basic('BASIC'),
  complete('COMPLETE');

  const AccessContextManagerAccessLevelsAllowedDeviceManagementLevels(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `allowed_encryption_statuses` — derived from the provider schema description.
enum AccessContextManagerAccessLevelsAllowedEncryptionStatuses
    implements TerraformEnum {
  encryptionUnspecified('ENCRYPTION_UNSPECIFIED'),
  encryptionUnsupported('ENCRYPTION_UNSUPPORTED'),
  unencrypted('UNENCRYPTED'),
  encrypted('ENCRYPTED');

  const AccessContextManagerAccessLevelsAllowedEncryptionStatuses(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `access_levels.basic.conditions.device_policy.os_constraints` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsOsConstraints {
  const AccessContextManagerAccessLevelsOsConstraints({
    this.minimumVersion,
    required this.osType,
  });

  final TfArg<String>? minimumVersion;

  final TfArg<AccessContextManagerAccessLevelsOsType> osType;

  Map<String, Object?> encode() => {
    'minimum_version': ?minimumVersion?.toTfJson(),
    'os_type': osType.toTfJson(),
  };
}

/// `os_type` — derived from the provider schema description.
enum AccessContextManagerAccessLevelsOsType implements TerraformEnum {
  osUnspecified('OS_UNSPECIFIED'),
  desktopMac('DESKTOP_MAC'),
  desktopWindows('DESKTOP_WINDOWS'),
  desktopLinux('DESKTOP_LINUX'),
  desktopChromeOs('DESKTOP_CHROME_OS'),
  android('ANDROID'),
  ios('IOS');

  const AccessContextManagerAccessLevelsOsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `access_levels.basic.conditions.vpc_network_sources` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsVpcNetworkSources {
  const AccessContextManagerAccessLevelsVpcNetworkSources({this.vpcSubnetwork});

  final AccessContextManagerAccessLevelsVpcSubnetwork? vpcSubnetwork;

  Map<String, Object?> encode() => {'vpc_subnetwork': ?vpcSubnetwork?.encode()};
}

/// Typed helper for the `access_levels.basic.conditions.vpc_network_sources.vpc_subnetwork` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsVpcSubnetwork {
  const AccessContextManagerAccessLevelsVpcSubnetwork({
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

/// Typed helper for the `access_levels.custom` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsCustom {
  const AccessContextManagerAccessLevelsCustom({required this.expr});

  final AccessContextManagerAccessLevelsExpr expr;

  Map<String, Object?> encode() => {'expr': expr.encode()};
}

/// Typed helper for the `access_levels.custom.expr` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsExpr {
  const AccessContextManagerAccessLevelsExpr({
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
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
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
    List<AccessContextManagerAccessLevels>? accessLevels,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerAccessLevels>`.
  RefTo<GoogleAccessContextManagerAccessLevels> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');
}
