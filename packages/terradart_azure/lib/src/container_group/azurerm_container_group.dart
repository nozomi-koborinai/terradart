// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_group`.
const Set<String> _azurermContainerGroupSensitive = <String>{
  'container.secure_environment_variables',
  'container.volume.secret',
  'container.volume.storage_account_key',
  'diagnostics.log_analytics.workspace_key',
  'image_registry_credential.password',
  'init_container.secure_environment_variables',
  'init_container.volume.secret',
  'init_container.volume.storage_account_key',
};

/// Typed helper for the `container` block of
/// `azurerm_container_group` (derived from provider schema).
@immutable
final class ContainerGroupContainer {
  const ContainerGroupContainer({
    this.commands,
    required this.cpu,
    this.cpuLimit,
    this.environmentVariables,
    required this.image,
    required this.memory,
    this.memoryLimit,
    required this.name,
    this.secureEnvironmentVariables,
    this.livenessProbe,
    this.ports,
    this.readinessProbe,
    this.security,
    this.volume,
  });

  final TfArg<List<String>>? commands;

  final TfArg<num> cpu;

  final TfArg<num>? cpuLimit;

  final TfArg<Map<String, String>>? environmentVariables;

  final TfArg<String> image;

  final TfArg<num> memory;

  final TfArg<num>? memoryLimit;

  final TfArg<String> name;

  final Sensitive<Map<String, String>>? secureEnvironmentVariables;

  final ContainerGroupLivenessProbe? livenessProbe;

  final List<ContainerGroupPorts>? ports;

  final ContainerGroupReadinessProbe? readinessProbe;

  final List<ContainerGroupSecurity>? security;

  final List<ContainerGroupVolume>? volume;

  @internal
  Map<String, Object?> encode() => {
    'commands': ?commands?.toTfJson(),
    'cpu': cpu.toTfJson(),
    'cpu_limit': ?cpuLimit?.toTfJson(),
    'environment_variables': ?environmentVariables?.toTfJson(),
    'image': image.toTfJson(),
    'memory': memory.toTfJson(),
    'memory_limit': ?memoryLimit?.toTfJson(),
    'name': name.toTfJson(),
    'secure_environment_variables': ?secureEnvironmentVariables?.toTfJson(),
    'liveness_probe': ?livenessProbe?.encode(),
    if (ports != null) 'ports': [for (final e in ports!) e.encode()],
    'readiness_probe': ?readinessProbe?.encode(),
    if (security != null) 'security': [for (final e in security!) e.encode()],
    if (volume != null) 'volume': [for (final e in volume!) e.encode()],
  };
}

/// Typed helper for the `container.liveness_probe` block of
/// `azurerm_container_group` (derived from provider schema).
@immutable
final class ContainerGroupLivenessProbe {
  const ContainerGroupLivenessProbe({
    this.exec,
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
    this.httpGet,
  });

  final TfArg<List<String>>? exec;

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? successThreshold;

  final TfArg<num>? timeoutSeconds;

  final List<ContainerGroupHttpGet>? httpGet;

  @internal
  Map<String, Object?> encode() => {
    'exec': ?exec?.toTfJson(),
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'initial_delay_seconds': ?initialDelaySeconds?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'success_threshold': ?successThreshold?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    if (httpGet != null) 'http_get': [for (final e in httpGet!) e.encode()],
  };
}

/// Typed helper for the `container.liveness_probe.http_get` block of
/// `azurerm_container_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerGroupHttpGet {
  const ContainerGroupHttpGet({
    this.httpHeaders,
    this.path,
    this.port,
    this.scheme,
  });

  final TfArg<Map<String, String>>? httpHeaders;

  final TfArg<String>? path;

  final TfArg<num>? port;

  final TfArg<String>? scheme;

  @internal
  Map<String, Object?> encode() => {
    'http_headers': ?httpHeaders?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'scheme': ?scheme?.toTfJson(),
  };
}

/// Typed helper for the `container.ports` block of
/// `azurerm_container_group` (derived from provider schema).
@immutable
final class ContainerGroupPorts {
  const ContainerGroupPorts({this.port, this.protocol});

  final TfArg<num>? port;

  final TfArg<String>? protocol;

  @internal
  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
  };
}

/// Typed helper for the `container.readiness_probe` block of
/// `azurerm_container_group` (derived from provider schema).
@immutable
final class ContainerGroupReadinessProbe {
  const ContainerGroupReadinessProbe({
    this.exec,
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
    this.httpGet,
  });

  final TfArg<List<String>>? exec;

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? successThreshold;

  final TfArg<num>? timeoutSeconds;

  final List<ContainerGroupHttpGet>? httpGet;

  @internal
  Map<String, Object?> encode() => {
    'exec': ?exec?.toTfJson(),
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'initial_delay_seconds': ?initialDelaySeconds?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'success_threshold': ?successThreshold?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    if (httpGet != null) 'http_get': [for (final e in httpGet!) e.encode()],
  };
}

/// Typed helper for the `container.security` block of
/// `azurerm_container_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerGroupSecurity {
  const ContainerGroupSecurity({required this.privilegeEnabled});

  final TfArg<bool> privilegeEnabled;

  @internal
  Map<String, Object?> encode() => {
    'privilege_enabled': privilegeEnabled.toTfJson(),
  };
}

/// Typed helper for the `container.volume` block of
/// `azurerm_container_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerGroupVolume {
  const ContainerGroupVolume({
    this.emptyDir,
    required this.mountPath,
    required this.name,
    this.readOnly,
    this.secret,
    this.shareName,
    this.storageAccountKey,
    this.storageAccountName,
    this.gitRepo,
  });

  final TfArg<bool>? emptyDir;

  final TfArg<String> mountPath;

  final TfArg<String> name;

  final TfArg<bool>? readOnly;

  final Sensitive<Map<String, String>>? secret;

  final TfArg<String>? shareName;

  final Sensitive<String>? storageAccountKey;

  final TfArg<String>? storageAccountName;

  final ContainerGroupGitRepo? gitRepo;

  @internal
  Map<String, Object?> encode() => {
    'empty_dir': ?emptyDir?.toTfJson(),
    'mount_path': mountPath.toTfJson(),
    'name': name.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
    'secret': ?secret?.toTfJson(),
    'share_name': ?shareName?.toTfJson(),
    'storage_account_key': ?storageAccountKey?.toTfJson(),
    'storage_account_name': ?storageAccountName?.toTfJson(),
    'git_repo': ?gitRepo?.encode(),
  };
}

/// Typed helper for the `container.volume.git_repo` block of
/// `azurerm_container_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerGroupGitRepo {
  const ContainerGroupGitRepo({
    this.directory,
    this.revision,
    required this.url,
  });

  final TfArg<String>? directory;

  final TfArg<String>? revision;

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {
    'directory': ?directory?.toTfJson(),
    'revision': ?revision?.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Typed helper for the `diagnostics` block of
/// `azurerm_container_group` (derived from provider schema).
@immutable
final class ContainerGroupDiagnostics {
  const ContainerGroupDiagnostics({required this.logAnalytics});

  final ContainerGroupLogAnalytics logAnalytics;

  @internal
  Map<String, Object?> encode() => {'log_analytics': logAnalytics.encode()};
}

/// Typed helper for the `diagnostics.log_analytics` block of
/// `azurerm_container_group` (derived from provider schema).
@immutable
final class ContainerGroupLogAnalytics {
  const ContainerGroupLogAnalytics({
    this.logType,
    this.metadata,
    required this.workspaceId,
    required this.workspaceKey,
  });

  final TfArg<String>? logType;

  final TfArg<Map<String, String>>? metadata;

  final TfArg<String> workspaceId;

  final Sensitive<String> workspaceKey;

  @internal
  Map<String, Object?> encode() => {
    'log_type': ?logType?.toTfJson(),
    'metadata': ?metadata?.toTfJson(),
    'workspace_id': workspaceId.toTfJson(),
    'workspace_key': workspaceKey.toTfJson(),
  };
}

/// Typed helper for the `dns_config` block of
/// `azurerm_container_group` (derived from provider schema).
@immutable
final class ContainerGroupDnsConfig {
  const ContainerGroupDnsConfig({
    required this.nameservers,
    this.options,
    this.searchDomains,
  });

  final TfArg<List<String>> nameservers;

  final TfArg<List<String>>? options;

  final TfArg<List<String>>? searchDomains;

  @internal
  Map<String, Object?> encode() => {
    'nameservers': nameservers.toTfJson(),
    'options': ?options?.toTfJson(),
    'search_domains': ?searchDomains?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_container_group` (derived from provider schema).
@immutable
final class ContainerGroupIdentity {
  const ContainerGroupIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `image_registry_credential` block of
/// `azurerm_container_group` (derived from provider schema).
@immutable
final class ContainerGroupImageRegistryCredential {
  const ContainerGroupImageRegistryCredential({
    this.password,
    required this.server,
    this.userAssignedIdentityId,
    this.username,
  });

  final Sensitive<String>? password;

  final TfArg<String> server;

  final TfArg<String>? userAssignedIdentityId;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'password': ?password?.toTfJson(),
    'server': server.toTfJson(),
    'user_assigned_identity_id': ?userAssignedIdentityId?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `init_container` block of
/// `azurerm_container_group` (derived from provider schema).
@immutable
final class ContainerGroupInitContainer {
  const ContainerGroupInitContainer({
    this.commands,
    this.environmentVariables,
    required this.image,
    required this.name,
    this.secureEnvironmentVariables,
    this.security,
    this.volume,
  });

  final TfArg<List<String>>? commands;

  final TfArg<Map<String, String>>? environmentVariables;

  final TfArg<String> image;

  final TfArg<String> name;

  final Sensitive<Map<String, String>>? secureEnvironmentVariables;

  final List<ContainerGroupSecurity>? security;

  final List<ContainerGroupVolume>? volume;

  @internal
  Map<String, Object?> encode() => {
    'commands': ?commands?.toTfJson(),
    'environment_variables': ?environmentVariables?.toTfJson(),
    'image': image.toTfJson(),
    'name': name.toTfJson(),
    'secure_environment_variables': ?secureEnvironmentVariables?.toTfJson(),
    if (security != null) 'security': [for (final e in security!) e.encode()],
    if (volume != null) 'volume': [for (final e in volume!) e.encode()],
  };
}

/// Factory wrapper for `azurerm_container_group`.
final class AzurermContainerGroup extends Resource {
  static const String tfType = 'azurerm_container_group';

  AzurermContainerGroup(
    super.localName, {
    TfArg<String>? dnsNameLabel,
    TfArg<String>? dnsNameLabelReusePolicy,
    TfArg<List<Map<String, Object?>>>? exposedPort,
    TfArg<String>? ipAddressType,
    TfArg<String>? keyVaultKeyId,
    TfArg<String>? keyVaultUserAssignedIdentityId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? networkProfileId,
    required TfArg<String> osType,
    TfArg<String>? priority,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? restartPolicy,
    TfArg<String>? sku,
    TfArg<List<String>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? zones,
    required List<ContainerGroupContainer> container,
    ContainerGroupDiagnostics? diagnostics,
    ContainerGroupDnsConfig? dnsConfig,
    ContainerGroupIdentity? identity,
    List<ContainerGroupImageRegistryCredential>? imageRegistryCredential,
    List<ContainerGroupInitContainer>? initContainer,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dns_name_label': ?dnsNameLabel,
           'dns_name_label_reuse_policy': ?dnsNameLabelReusePolicy,
           'exposed_port': ?exposedPort,
           'ip_address_type': ?ipAddressType,
           'key_vault_key_id': ?keyVaultKeyId,
           'key_vault_user_assigned_identity_id':
               ?keyVaultUserAssignedIdentityId,
           'location': location,
           'name': name,
           'network_profile_id': ?networkProfileId,
           'os_type': osType,
           'priority': ?priority,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'restart_policy': ?restartPolicy,
           'sku': ?sku,
           'subnet_ids': ?subnetIds,
           'tags': ?tags,
           'zones': ?zones,
           'container': TfArg.literal([for (final e in container) e.encode()]),
           if (diagnostics != null)
             'diagnostics': TfArg.literal(diagnostics.encode()),
           if (dnsConfig != null)
             'dns_config': TfArg.literal(dnsConfig.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (imageRegistryCredential != null)
             'image_registry_credential': TfArg.literal([
               for (final e in imageRegistryCredential) e.encode(),
             ]),
           if (initContainer != null)
             'init_container': TfArg.literal([
               for (final e in initContainer) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerGroup>`.
  RefTo<AzurermContainerGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `dns_name_label` attribute.
  TfRef<String> get dnsNameLabel =>
      TfRef.attribute<String>(this, 'dns_name_label');

  /// Reference to `dns_name_label_reuse_policy` attribute.
  TfRef<String> get dnsNameLabelReusePolicy =>
      TfRef.attribute<String>(this, 'dns_name_label_reuse_policy');

  /// Reference to `exposed_port` attribute.
  TfRef<List<Map<String, Object?>>> get exposedPort =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'exposed_port');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');

  /// Reference to `key_vault_user_assigned_identity_id` attribute.
  TfRef<String> get keyVaultUserAssignedIdentityId =>
      TfRef.attribute<String>(this, 'key_vault_user_assigned_identity_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_profile_id` attribute.
  TfRef<String> get networkProfileId =>
      TfRef.attribute<String>(this, 'network_profile_id');

  /// Reference to `os_type` attribute.
  TfRef<String> get osType => TfRef.attribute<String>(this, 'os_type');

  /// Reference to `priority` attribute.
  TfRef<String> get priority => TfRef.attribute<String>(this, 'priority');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `restart_policy` attribute.
  TfRef<String> get restartPolicy =>
      TfRef.attribute<String>(this, 'restart_policy');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
