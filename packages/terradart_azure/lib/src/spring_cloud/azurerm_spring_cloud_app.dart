// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_spring_cloud_app`.
const Set<String> _azurermSpringCloudAppSensitive = <String>{};

/// Typed helper for the `custom_persistent_disk` block of
/// `azurerm_spring_cloud_app` (derived from provider schema).
@immutable
final class SpringCloudAppCustomPersistentDisk {
  const SpringCloudAppCustomPersistentDisk({
    this.mountOptions,
    required this.mountPath,
    this.readOnlyEnabled,
    required this.shareName,
    required this.storageName,
  });

  final TfArg<List<String>>? mountOptions;

  final TfArg<String> mountPath;

  final TfArg<bool>? readOnlyEnabled;

  final TfArg<String> shareName;

  final TfArg<String> storageName;

  @internal
  Map<String, Object?> encode() => {
    'mount_options': ?mountOptions?.toTfJson(),
    'mount_path': mountPath.toTfJson(),
    'read_only_enabled': ?readOnlyEnabled?.toTfJson(),
    'share_name': shareName.toTfJson(),
    'storage_name': storageName.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_spring_cloud_app` (derived from provider schema).
@immutable
final class SpringCloudAppIdentity {
  const SpringCloudAppIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `ingress_settings` block of
/// `azurerm_spring_cloud_app` (derived from provider schema).
@immutable
final class SpringCloudAppIngressSettings {
  const SpringCloudAppIngressSettings({
    this.backendProtocol,
    this.readTimeoutInSeconds,
    this.sendTimeoutInSeconds,
    this.sessionAffinity,
    this.sessionCookieMaxAge,
  });

  final TfArg<String>? backendProtocol;

  final TfArg<num>? readTimeoutInSeconds;

  final TfArg<num>? sendTimeoutInSeconds;

  final TfArg<String>? sessionAffinity;

  final TfArg<num>? sessionCookieMaxAge;

  @internal
  Map<String, Object?> encode() => {
    'backend_protocol': ?backendProtocol?.toTfJson(),
    'read_timeout_in_seconds': ?readTimeoutInSeconds?.toTfJson(),
    'send_timeout_in_seconds': ?sendTimeoutInSeconds?.toTfJson(),
    'session_affinity': ?sessionAffinity?.toTfJson(),
    'session_cookie_max_age': ?sessionCookieMaxAge?.toTfJson(),
  };
}

/// Typed helper for the `persistent_disk` block of
/// `azurerm_spring_cloud_app` (derived from provider schema).
@immutable
final class SpringCloudAppPersistentDisk {
  const SpringCloudAppPersistentDisk({this.mountPath, required this.sizeInGb});

  final TfArg<String>? mountPath;

  final TfArg<num> sizeInGb;

  @internal
  Map<String, Object?> encode() => {
    'mount_path': ?mountPath?.toTfJson(),
    'size_in_gb': sizeInGb.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_app`.
final class AzurermSpringCloudApp extends Resource {
  static const String tfType = 'azurerm_spring_cloud_app';

  AzurermSpringCloudApp(
    super.localName, {
    TfArg<String>? addonJson,
    TfArg<bool>? httpsOnly,
    TfArg<bool>? isPublic,
    required TfArg<String> name,
    TfArg<bool>? publicEndpointEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> serviceName,
    TfArg<bool>? tlsEnabled,
    List<SpringCloudAppCustomPersistentDisk>? customPersistentDisk,
    SpringCloudAppIdentity? identity,
    SpringCloudAppIngressSettings? ingressSettings,
    SpringCloudAppPersistentDisk? persistentDisk,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'addon_json': ?addonJson,
           'https_only': ?httpsOnly,
           'is_public': ?isPublic,
           'name': name,
           'public_endpoint_enabled': ?publicEndpointEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_name': serviceName,
           'tls_enabled': ?tlsEnabled,
           if (customPersistentDisk != null)
             'custom_persistent_disk': TfArg.literal([
               for (final e in customPersistentDisk) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (ingressSettings != null)
             'ingress_settings': TfArg.literal(ingressSettings.encode()),
           if (persistentDisk != null)
             'persistent_disk': TfArg.literal(persistentDisk.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudApp>`.
  RefTo<AzurermSpringCloudApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `addon_json` attribute.
  TfRef<String> get addonJson => TfRef.attribute<String>(this, 'addon_json');

  /// Reference to `https_only` attribute.
  TfRef<bool> get httpsOnly => TfRef.attribute<bool>(this, 'https_only');

  /// Reference to `is_public` attribute.
  TfRef<bool> get isPublic => TfRef.attribute<bool>(this, 'is_public');

  /// Reference to `public_endpoint_enabled` attribute.
  TfRef<bool> get publicEndpointEnabled =>
      TfRef.attribute<bool>(this, 'public_endpoint_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `tls_enabled` attribute.
  TfRef<bool> get tlsEnabled => TfRef.attribute<bool>(this, 'tls_enabled');
}
