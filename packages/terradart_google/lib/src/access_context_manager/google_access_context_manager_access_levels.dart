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

  @internal
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

  final AccessContextManagerAccessLevelsCombiningFunction? combiningFunction;

  final List<AccessContextManagerAccessLevelsConditions> conditions;

  @internal
  Map<String, Object?> encode() => {
    'combining_function': ?combiningFunction?.toTfJson(),
    'conditions': [for (final e in conditions) e.encode()],
  };
}

/// `combining_function` — derived from the provider schema description.
extension type const AccessContextManagerAccessLevelsCombiningFunction._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerAccessLevelsCombiningFunction.variable(String name)
    : this._(TfArg.variable(name));
  AccessContextManagerAccessLevelsCombiningFunction.expression(String template)
    : this._(TfArg.expression(template));
  const AccessContextManagerAccessLevelsCombiningFunction.arg(TfArg<String> arg)
    : this._(arg);

  static const and = AccessContextManagerAccessLevelsCombiningFunction._(
    TfArgLiteral('AND'),
  );
  static const or = AccessContextManagerAccessLevelsCombiningFunction._(
    TfArgLiteral('OR'),
  );

  static const List<AccessContextManagerAccessLevelsCombiningFunction> values =
      [and, or];
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

  @internal
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

  final List<AccessContextManagerAccessLevelsAllowedDeviceManagementLevels>?
  allowedDeviceManagementLevels;

  final List<AccessContextManagerAccessLevelsAllowedEncryptionStatuses>?
  allowedEncryptionStatuses;

  final TfArg<bool>? requireAdminApproval;

  final TfArg<bool>? requireCorpOwned;

  final TfArg<bool>? requireScreenLock;

  final List<AccessContextManagerAccessLevelsOsConstraints>? osConstraints;

  @internal
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
extension type const AccessContextManagerAccessLevelsAllowedDeviceManagementLevels._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerAccessLevelsAllowedDeviceManagementLevels.variable(
    String name,
  ) : this._(TfArg.variable(name));
  AccessContextManagerAccessLevelsAllowedDeviceManagementLevels.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AccessContextManagerAccessLevelsAllowedDeviceManagementLevels.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const managementUnspecified =
      AccessContextManagerAccessLevelsAllowedDeviceManagementLevels._(
        TfArgLiteral('MANAGEMENT_UNSPECIFIED'),
      );
  static const none =
      AccessContextManagerAccessLevelsAllowedDeviceManagementLevels._(
        TfArgLiteral('NONE'),
      );
  static const basic =
      AccessContextManagerAccessLevelsAllowedDeviceManagementLevels._(
        TfArgLiteral('BASIC'),
      );
  static const complete =
      AccessContextManagerAccessLevelsAllowedDeviceManagementLevels._(
        TfArgLiteral('COMPLETE'),
      );

  static const List<
    AccessContextManagerAccessLevelsAllowedDeviceManagementLevels
  >
  values = [managementUnspecified, none, basic, complete];
}

/// `allowed_encryption_statuses` — derived from the provider schema description.
extension type const AccessContextManagerAccessLevelsAllowedEncryptionStatuses._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerAccessLevelsAllowedEncryptionStatuses.variable(
    String name,
  ) : this._(TfArg.variable(name));
  AccessContextManagerAccessLevelsAllowedEncryptionStatuses.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AccessContextManagerAccessLevelsAllowedEncryptionStatuses.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const encryptionUnspecified =
      AccessContextManagerAccessLevelsAllowedEncryptionStatuses._(
        TfArgLiteral('ENCRYPTION_UNSPECIFIED'),
      );
  static const encryptionUnsupported =
      AccessContextManagerAccessLevelsAllowedEncryptionStatuses._(
        TfArgLiteral('ENCRYPTION_UNSUPPORTED'),
      );
  static const unencrypted =
      AccessContextManagerAccessLevelsAllowedEncryptionStatuses._(
        TfArgLiteral('UNENCRYPTED'),
      );
  static const encrypted =
      AccessContextManagerAccessLevelsAllowedEncryptionStatuses._(
        TfArgLiteral('ENCRYPTED'),
      );

  static const List<AccessContextManagerAccessLevelsAllowedEncryptionStatuses>
  values = [
    encryptionUnspecified,
    encryptionUnsupported,
    unencrypted,
    encrypted,
  ];
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

  final AccessContextManagerAccessLevelsOsType osType;

  @internal
  Map<String, Object?> encode() => {
    'minimum_version': ?minimumVersion?.toTfJson(),
    'os_type': osType.toTfJson(),
  };
}

/// `os_type` — derived from the provider schema description.
extension type const AccessContextManagerAccessLevelsOsType._(TfArg<String> _)
    implements TfArg<String> {
  AccessContextManagerAccessLevelsOsType.variable(String name)
    : this._(TfArg.variable(name));
  AccessContextManagerAccessLevelsOsType.expression(String template)
    : this._(TfArg.expression(template));
  const AccessContextManagerAccessLevelsOsType.arg(TfArg<String> arg)
    : this._(arg);

  static const osUnspecified = AccessContextManagerAccessLevelsOsType._(
    TfArgLiteral('OS_UNSPECIFIED'),
  );
  static const desktopMac = AccessContextManagerAccessLevelsOsType._(
    TfArgLiteral('DESKTOP_MAC'),
  );
  static const desktopWindows = AccessContextManagerAccessLevelsOsType._(
    TfArgLiteral('DESKTOP_WINDOWS'),
  );
  static const desktopLinux = AccessContextManagerAccessLevelsOsType._(
    TfArgLiteral('DESKTOP_LINUX'),
  );
  static const desktopChromeOs = AccessContextManagerAccessLevelsOsType._(
    TfArgLiteral('DESKTOP_CHROME_OS'),
  );
  static const android = AccessContextManagerAccessLevelsOsType._(
    TfArgLiteral('ANDROID'),
  );
  static const ios = AccessContextManagerAccessLevelsOsType._(
    TfArgLiteral('IOS'),
  );

  static const List<AccessContextManagerAccessLevelsOsType> values = [
    osUnspecified,
    desktopMac,
    desktopWindows,
    desktopLinux,
    desktopChromeOs,
    android,
    ios,
  ];
}

/// Typed helper for the `access_levels.basic.conditions.vpc_network_sources` block of
/// `google_access_context_manager_access_levels` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelsVpcNetworkSources {
  const AccessContextManagerAccessLevelsVpcNetworkSources({this.vpcSubnetwork});

  final AccessContextManagerAccessLevelsVpcSubnetwork? vpcSubnetwork;

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  GoogleAccessContextManagerAccessLevels(
    super.localName, {
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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
