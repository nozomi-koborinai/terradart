// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_access_level`.
const Set<String> _googleAccessContextManagerAccessLevelSensitive = <String>{};

/// At most one of `basic`, `custom` on `google_access_context_manager_access_level`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.basic(...)`.
sealed class AccessContextManagerAccessLevelDefinition {
  const AccessContextManagerAccessLevelDefinition();

  /// Sets `basic`.
  const factory AccessContextManagerAccessLevelDefinition.basic(
    AccessContextManagerAccessLevelBasic basic,
  ) = AccessContextManagerAccessLevelDefinitionBasic;

  /// Sets `custom`.
  const factory AccessContextManagerAccessLevelDefinition.custom(
    AccessContextManagerAccessLevelCustom custom,
  ) = AccessContextManagerAccessLevelDefinitionCustom;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AccessContextManagerAccessLevelDefinition.basic] choice: sets `basic`.
final class AccessContextManagerAccessLevelDefinitionBasic
    extends AccessContextManagerAccessLevelDefinition {
  const AccessContextManagerAccessLevelDefinitionBasic(this.basic);

  final AccessContextManagerAccessLevelBasic basic;

  @override
  String get blockKey => 'basic';

  @override
  Map<String, Object?> encode() => {'basic': basic.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'basic': TfArg.literal(basic.encode()),
  };
}

/// The [AccessContextManagerAccessLevelDefinition.custom] choice: sets `custom`.
final class AccessContextManagerAccessLevelDefinitionCustom
    extends AccessContextManagerAccessLevelDefinition {
  const AccessContextManagerAccessLevelDefinitionCustom(this.custom);

  final AccessContextManagerAccessLevelCustom custom;

  @override
  String get blockKey => 'custom';

  @override
  Map<String, Object?> encode() => {'custom': custom.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'custom': TfArg.literal(custom.encode()),
  };
}

/// Typed helper for the `basic` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelBasic {
  const AccessContextManagerAccessLevelBasic({
    this.combiningFunction,
    required this.conditions,
  });

  final AccessContextManagerAccessLevelCombiningFunction? combiningFunction;

  final List<AccessContextManagerAccessLevelConditions> conditions;

  Map<String, Object?> encode() => {
    'combining_function': ?combiningFunction?.toTfJson(),
    'conditions': [for (final e in conditions) e.encode()],
  };
}

/// `combining_function` — derived from the provider schema description.
extension type const AccessContextManagerAccessLevelCombiningFunction._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerAccessLevelCombiningFunction.variable(String name)
    : this._(TfArg.variable(name));
  AccessContextManagerAccessLevelCombiningFunction.expression(String template)
    : this._(TfArg.expression(template));
  const AccessContextManagerAccessLevelCombiningFunction.arg(TfArg<String> arg)
    : this._(arg);

  static const and = AccessContextManagerAccessLevelCombiningFunction._(
    TfArgLiteral('AND'),
  );
  static const or = AccessContextManagerAccessLevelCombiningFunction._(
    TfArgLiteral('OR'),
  );

  static const List<AccessContextManagerAccessLevelCombiningFunction> values = [
    and,
    or,
  ];
}

/// Typed helper for the `basic.conditions` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelConditions {
  const AccessContextManagerAccessLevelConditions({
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

  final AccessContextManagerAccessLevelDevicePolicy? devicePolicy;

  final List<AccessContextManagerAccessLevelVpcNetworkSources>?
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

/// Typed helper for the `basic.conditions.device_policy` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelDevicePolicy {
  const AccessContextManagerAccessLevelDevicePolicy({
    this.allowedDeviceManagementLevels,
    this.allowedEncryptionStatuses,
    this.requireAdminApproval,
    this.requireCorpOwned,
    this.requireScreenLock,
    this.osConstraints,
  });

  final List<AccessContextManagerAccessLevelAllowedDeviceManagementLevels>?
  allowedDeviceManagementLevels;

  final List<AccessContextManagerAccessLevelAllowedEncryptionStatuses>?
  allowedEncryptionStatuses;

  final TfArg<bool>? requireAdminApproval;

  final TfArg<bool>? requireCorpOwned;

  final TfArg<bool>? requireScreenLock;

  final List<AccessContextManagerAccessLevelOsConstraints>? osConstraints;

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
extension type const AccessContextManagerAccessLevelAllowedDeviceManagementLevels._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerAccessLevelAllowedDeviceManagementLevels.variable(
    String name,
  ) : this._(TfArg.variable(name));
  AccessContextManagerAccessLevelAllowedDeviceManagementLevels.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AccessContextManagerAccessLevelAllowedDeviceManagementLevels.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const managementUnspecified =
      AccessContextManagerAccessLevelAllowedDeviceManagementLevels._(
        TfArgLiteral('MANAGEMENT_UNSPECIFIED'),
      );
  static const none =
      AccessContextManagerAccessLevelAllowedDeviceManagementLevels._(
        TfArgLiteral('NONE'),
      );
  static const basic =
      AccessContextManagerAccessLevelAllowedDeviceManagementLevels._(
        TfArgLiteral('BASIC'),
      );
  static const complete =
      AccessContextManagerAccessLevelAllowedDeviceManagementLevels._(
        TfArgLiteral('COMPLETE'),
      );

  static const List<
    AccessContextManagerAccessLevelAllowedDeviceManagementLevels
  >
  values = [managementUnspecified, none, basic, complete];
}

/// `allowed_encryption_statuses` — derived from the provider schema description.
extension type const AccessContextManagerAccessLevelAllowedEncryptionStatuses._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerAccessLevelAllowedEncryptionStatuses.variable(String name)
    : this._(TfArg.variable(name));
  AccessContextManagerAccessLevelAllowedEncryptionStatuses.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AccessContextManagerAccessLevelAllowedEncryptionStatuses.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const encryptionUnspecified =
      AccessContextManagerAccessLevelAllowedEncryptionStatuses._(
        TfArgLiteral('ENCRYPTION_UNSPECIFIED'),
      );
  static const encryptionUnsupported =
      AccessContextManagerAccessLevelAllowedEncryptionStatuses._(
        TfArgLiteral('ENCRYPTION_UNSUPPORTED'),
      );
  static const unencrypted =
      AccessContextManagerAccessLevelAllowedEncryptionStatuses._(
        TfArgLiteral('UNENCRYPTED'),
      );
  static const encrypted =
      AccessContextManagerAccessLevelAllowedEncryptionStatuses._(
        TfArgLiteral('ENCRYPTED'),
      );

  static const List<AccessContextManagerAccessLevelAllowedEncryptionStatuses>
  values = [
    encryptionUnspecified,
    encryptionUnsupported,
    unencrypted,
    encrypted,
  ];
}

/// Typed helper for the `basic.conditions.device_policy.os_constraints` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelOsConstraints {
  const AccessContextManagerAccessLevelOsConstraints({
    this.minimumVersion,
    required this.osType,
    this.requireVerifiedChromeOs,
  });

  final TfArg<String>? minimumVersion;

  final AccessContextManagerAccessLevelOsType osType;

  final TfArg<bool>? requireVerifiedChromeOs;

  Map<String, Object?> encode() => {
    'minimum_version': ?minimumVersion?.toTfJson(),
    'os_type': osType.toTfJson(),
    'require_verified_chrome_os': ?requireVerifiedChromeOs?.toTfJson(),
  };
}

/// `os_type` — derived from the provider schema description.
extension type const AccessContextManagerAccessLevelOsType._(TfArg<String> _)
    implements TfArg<String> {
  AccessContextManagerAccessLevelOsType.variable(String name)
    : this._(TfArg.variable(name));
  AccessContextManagerAccessLevelOsType.expression(String template)
    : this._(TfArg.expression(template));
  const AccessContextManagerAccessLevelOsType.arg(TfArg<String> arg)
    : this._(arg);

  static const osUnspecified = AccessContextManagerAccessLevelOsType._(
    TfArgLiteral('OS_UNSPECIFIED'),
  );
  static const desktopMac = AccessContextManagerAccessLevelOsType._(
    TfArgLiteral('DESKTOP_MAC'),
  );
  static const desktopWindows = AccessContextManagerAccessLevelOsType._(
    TfArgLiteral('DESKTOP_WINDOWS'),
  );
  static const desktopLinux = AccessContextManagerAccessLevelOsType._(
    TfArgLiteral('DESKTOP_LINUX'),
  );
  static const desktopChromeOs = AccessContextManagerAccessLevelOsType._(
    TfArgLiteral('DESKTOP_CHROME_OS'),
  );
  static const android = AccessContextManagerAccessLevelOsType._(
    TfArgLiteral('ANDROID'),
  );
  static const ios = AccessContextManagerAccessLevelOsType._(
    TfArgLiteral('IOS'),
  );

  static const List<AccessContextManagerAccessLevelOsType> values = [
    osUnspecified,
    desktopMac,
    desktopWindows,
    desktopLinux,
    desktopChromeOs,
    android,
    ios,
  ];
}

/// Typed helper for the `basic.conditions.vpc_network_sources` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelVpcNetworkSources {
  const AccessContextManagerAccessLevelVpcNetworkSources({this.vpcSubnetwork});

  final AccessContextManagerAccessLevelVpcSubnetwork? vpcSubnetwork;

  Map<String, Object?> encode() => {'vpc_subnetwork': ?vpcSubnetwork?.encode()};
}

/// Typed helper for the `basic.conditions.vpc_network_sources.vpc_subnetwork` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelVpcSubnetwork {
  const AccessContextManagerAccessLevelVpcSubnetwork({
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

/// Typed helper for the `custom` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelCustom {
  const AccessContextManagerAccessLevelCustom({required this.expr});

  final AccessContextManagerAccessLevelExpr expr;

  Map<String, Object?> encode() => {'expr': expr.encode()};
}

/// Typed helper for the `custom.expr` block of
/// `google_access_context_manager_access_level` (derived from provider schema).
@immutable
final class AccessContextManagerAccessLevelExpr {
  const AccessContextManagerAccessLevelExpr({
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

/// Factory wrapper for `google_access_context_manager_access_level`.
///
/// An AccessLevel is a label that can be applied to requests to GCP services,
/// along with a list of requirements necessary for the label to be applied.
final class GoogleAccessContextManagerAccessLevel extends Resource {
  static const String tfType = 'google_access_context_manager_access_level';

  GoogleAccessContextManagerAccessLevel(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<String> title,
    TfArg<String>? description,
    AccessContextManagerAccessLevelDefinition? definition,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent': parent,
           'title': title,
           'description': ?description,
           ...?definition?.argMap,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessLevelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerAccessLevel>`.
  RefTo<GoogleAccessContextManagerAccessLevel> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
