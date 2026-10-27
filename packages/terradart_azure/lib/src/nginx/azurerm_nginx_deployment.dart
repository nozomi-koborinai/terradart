// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_nginx_deployment`.
const Set<String> _azurermNginxDeploymentSensitive = <String>{};

/// Nginx Deployment Automatic Upgrade enum for `automatic_upgrade_channel`.
extension type const NginxDeploymentAutomaticUpgradeChannel._(TfArg<String> _)
    implements TfArg<String> {
  NginxDeploymentAutomaticUpgradeChannel.variable(String name)
    : this._(TfArg.variable(name));
  NginxDeploymentAutomaticUpgradeChannel.expression(String template)
    : this._(TfArg.expression(template));
  const NginxDeploymentAutomaticUpgradeChannel.arg(TfArg<String> arg)
    : this._(arg);

  static const stable = NginxDeploymentAutomaticUpgradeChannel._(
    TfArgLiteral('stable'),
  );
  static const preview = NginxDeploymentAutomaticUpgradeChannel._(
    TfArgLiteral('preview'),
  );

  static const List<NginxDeploymentAutomaticUpgradeChannel> values = [
    stable,
    preview,
  ];
}

/// At most one of `auto_scale_profile`, `capacity` on `azurerm_nginx_deployment`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.autoScaleProfile(...)`.
sealed class NginxDeploymentScale {
  const NginxDeploymentScale();

  /// Sets `auto_scale_profile`.
  const factory NginxDeploymentScale.autoScaleProfile(
    List<NginxDeploymentAutoScaleProfile> autoScaleProfile,
  ) = NginxDeploymentScaleAutoScaleProfile;

  /// Sets `capacity`.
  const factory NginxDeploymentScale.capacity(TfArg<num> capacity) =
      NginxDeploymentScaleCapacity;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NginxDeploymentScale.autoScaleProfile] choice: sets `auto_scale_profile`.
final class NginxDeploymentScaleAutoScaleProfile extends NginxDeploymentScale {
  const NginxDeploymentScaleAutoScaleProfile(this.autoScaleProfile);

  final List<NginxDeploymentAutoScaleProfile> autoScaleProfile;

  @internal
  @override
  String get blockKey => 'auto_scale_profile';

  @internal
  @override
  Map<String, Object?> encode() => {
    'auto_scale_profile': [for (final e in autoScaleProfile) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'auto_scale_profile': TfArg.literal([
      for (final e in autoScaleProfile) e.encode(),
    ]),
  };
}

/// The [NginxDeploymentScale.capacity] choice: sets `capacity`.
final class NginxDeploymentScaleCapacity extends NginxDeploymentScale {
  const NginxDeploymentScaleCapacity(this.capacity);

  final TfArg<num> capacity;

  @internal
  @override
  String get blockKey => 'capacity';

  @internal
  @override
  Map<String, Object?> encode() => {'capacity': capacity.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'capacity': capacity};
}

/// At most one of `frontend_private`, `frontend_public` on `azurerm_nginx_deployment`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.frontendPrivate(...)`.
sealed class NginxDeploymentFrontend {
  const NginxDeploymentFrontend();

  /// Sets `frontend_private`.
  const factory NginxDeploymentFrontend.frontendPrivate(
    List<NginxDeploymentFrontendPrivate> frontendPrivate,
  ) = NginxDeploymentFrontendPrivateChoice;

  /// Sets `frontend_public`.
  const factory NginxDeploymentFrontend.frontendPublic(
    NginxDeploymentFrontendPublic frontendPublic,
  ) = NginxDeploymentFrontendPublicChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NginxDeploymentFrontend.frontendPrivate] choice: sets `frontend_private`.
final class NginxDeploymentFrontendPrivateChoice
    extends NginxDeploymentFrontend {
  const NginxDeploymentFrontendPrivateChoice(this.frontendPrivate);

  final List<NginxDeploymentFrontendPrivate> frontendPrivate;

  @internal
  @override
  String get blockKey => 'frontend_private';

  @internal
  @override
  Map<String, Object?> encode() => {
    'frontend_private': [for (final e in frontendPrivate) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'frontend_private': TfArg.literal([
      for (final e in frontendPrivate) e.encode(),
    ]),
  };
}

/// The [NginxDeploymentFrontend.frontendPublic] choice: sets `frontend_public`.
final class NginxDeploymentFrontendPublicChoice
    extends NginxDeploymentFrontend {
  const NginxDeploymentFrontendPublicChoice(this.frontendPublic);

  final NginxDeploymentFrontendPublic frontendPublic;

  @internal
  @override
  String get blockKey => 'frontend_public';

  @internal
  @override
  Map<String, Object?> encode() => {'frontend_public': frontendPublic.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'frontend_public': TfArg.literal(frontendPublic.encode()),
  };
}

/// Typed helper for the `auto_scale_profile` block of
/// `azurerm_nginx_deployment` (derived from provider schema).
@immutable
final class NginxDeploymentAutoScaleProfile {
  const NginxDeploymentAutoScaleProfile({
    required this.maxCapacity,
    required this.minCapacity,
    required this.name,
  });

  final TfArg<num> maxCapacity;

  final TfArg<num> minCapacity;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'max_capacity': maxCapacity.toTfJson(),
    'min_capacity': minCapacity.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `frontend_private` block of
/// `azurerm_nginx_deployment` (derived from provider schema).
@immutable
final class NginxDeploymentFrontendPrivate {
  const NginxDeploymentFrontendPrivate({
    required this.allocationMethod,
    required this.ipAddress,
    required this.subnetId,
  });

  final NginxDeploymentAllocationMethod allocationMethod;

  final TfArg<String> ipAddress;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'allocation_method': allocationMethod.toTfJson(),
    'ip_address': ipAddress.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// `allocation_method` — derived from the provider schema description.
extension type const NginxDeploymentAllocationMethod._(TfArg<String> _)
    implements TfArg<String> {
  NginxDeploymentAllocationMethod.variable(String name)
    : this._(TfArg.variable(name));
  NginxDeploymentAllocationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const NginxDeploymentAllocationMethod.arg(TfArg<String> arg) : this._(arg);

  static const dynamic = NginxDeploymentAllocationMethod._(
    TfArgLiteral('Dynamic'),
  );
  static const static = NginxDeploymentAllocationMethod._(
    TfArgLiteral('Static'),
  );

  static const List<NginxDeploymentAllocationMethod> values = [dynamic, static];
}

/// Typed helper for the `frontend_public` block of
/// `azurerm_nginx_deployment` (derived from provider schema).
@immutable
final class NginxDeploymentFrontendPublic {
  const NginxDeploymentFrontendPublic({this.ipAddress});

  final TfArg<List<String>>? ipAddress;

  @internal
  Map<String, Object?> encode() => {'ip_address': ?ipAddress?.toTfJson()};
}

/// Typed helper for the `identity` block of
/// `azurerm_nginx_deployment` (derived from provider schema).
@immutable
final class NginxDeploymentIdentity {
  const NginxDeploymentIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `network_interface` block of
/// `azurerm_nginx_deployment` (derived from provider schema).
@immutable
final class NginxDeploymentNetworkInterface {
  const NginxDeploymentNetworkInterface({required this.subnetId});

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {'subnet_id': subnetId.toTfJson()};
}

/// Typed helper for the `web_application_firewall` block of
/// `azurerm_nginx_deployment` (derived from provider schema).
@immutable
final class NginxDeploymentWebApplicationFirewall {
  const NginxDeploymentWebApplicationFirewall({
    required this.activationStateEnabled,
  });

  final TfArg<bool> activationStateEnabled;

  @internal
  Map<String, Object?> encode() => {
    'activation_state_enabled': activationStateEnabled.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_nginx_deployment`.
final class AzurermNginxDeployment extends Resource {
  static const String tfType = 'azurerm_nginx_deployment';

  AzurermNginxDeployment(
    super.localName, {
    NginxDeploymentAutomaticUpgradeChannel? automaticUpgradeChannel,
    NginxDeploymentScale? scale,
    TfArg<String>? email,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sku,
    TfArg<Map<String, String>>? tags,
    NginxDeploymentFrontend? frontend,
    NginxDeploymentIdentity? identity,
    List<NginxDeploymentNetworkInterface>? networkInterface,
    NginxDeploymentWebApplicationFirewall? webApplicationFirewall,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automatic_upgrade_channel': ?automaticUpgradeChannel,
           ...?scale?.argMap,
           'email': ?email,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'tags': ?tags,
           ...?frontend?.argMap,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (networkInterface != null)
             'network_interface': TfArg.literal([
               for (final e in networkInterface) e.encode(),
             ]),
           if (webApplicationFirewall != null)
             'web_application_firewall': TfArg.literal(
               webApplicationFirewall.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNginxDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNginxDeployment>`.
  RefTo<AzurermNginxDeployment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dataplane_api_endpoint` attribute.
  TfRef<String> get dataplaneApiEndpoint =>
      TfRef.attribute<String>(this, 'dataplane_api_endpoint');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `nginx_version` attribute.
  TfRef<String> get nginxVersion =>
      TfRef.attribute<String>(this, 'nginx_version');

  /// Reference to `automatic_upgrade_channel` attribute.
  TfRef<String> get automaticUpgradeChannel =>
      TfRef.attribute<String>(this, 'automatic_upgrade_channel');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
