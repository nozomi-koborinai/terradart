// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_spring_cloud_service`.
const Set<String> _azurermSpringCloudServiceSensitive = <String>{
  'config_server_git_setting.http_basic_auth.password',
  'config_server_git_setting.repository.http_basic_auth.password',
  'config_server_git_setting.repository.ssh_auth.host_key',
  'config_server_git_setting.repository.ssh_auth.private_key',
  'config_server_git_setting.ssh_auth.host_key',
  'config_server_git_setting.ssh_auth.private_key',
  'container_registry.password',
};

/// Spring Cloud Service Build Agent Pool enum for `build_agent_pool_size`.
extension type const SpringCloudServiceBuildAgentPoolSize._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudServiceBuildAgentPoolSize.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudServiceBuildAgentPoolSize.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudServiceBuildAgentPoolSize.arg(TfArg<String> arg)
    : this._(arg);

  static const s1 = SpringCloudServiceBuildAgentPoolSize._(TfArgLiteral('S1'));
  static const s2 = SpringCloudServiceBuildAgentPoolSize._(TfArgLiteral('S2'));
  static const s3 = SpringCloudServiceBuildAgentPoolSize._(TfArgLiteral('S3'));
  static const s4 = SpringCloudServiceBuildAgentPoolSize._(TfArgLiteral('S4'));
  static const s5 = SpringCloudServiceBuildAgentPoolSize._(TfArgLiteral('S5'));

  static const List<SpringCloudServiceBuildAgentPoolSize> values = [
    s1,
    s2,
    s3,
    s4,
    s5,
  ];
}

/// Spring Cloud Service Sku enum for `sku_name`.
extension type const SpringCloudServiceSkuName._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudServiceSkuName.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudServiceSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudServiceSkuName.arg(TfArg<String> arg) : this._(arg);

  static const b0 = SpringCloudServiceSkuName._(TfArgLiteral('B0'));
  static const s0 = SpringCloudServiceSkuName._(TfArgLiteral('S0'));
  static const e0 = SpringCloudServiceSkuName._(TfArgLiteral('E0'));

  static const List<SpringCloudServiceSkuName> values = [b0, s0, e0];
}

/// Spring Cloud Service Sku enum for `sku_tier`.
extension type const SpringCloudServiceSkuTier._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudServiceSkuTier.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudServiceSkuTier.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudServiceSkuTier.arg(TfArg<String> arg) : this._(arg);

  static const basic = SpringCloudServiceSkuTier._(TfArgLiteral('Basic'));
  static const enterprise = SpringCloudServiceSkuTier._(
    TfArgLiteral('Enterprise'),
  );
  static const standard = SpringCloudServiceSkuTier._(TfArgLiteral('Standard'));
  static const standardgen2 = SpringCloudServiceSkuTier._(
    TfArgLiteral('StandardGen2'),
  );

  static const List<SpringCloudServiceSkuTier> values = [
    basic,
    enterprise,
    standard,
    standardgen2,
  ];
}

/// Typed helper for the `config_server_git_setting` block of
/// `azurerm_spring_cloud_service` (derived from provider schema).
@immutable
final class SpringCloudServiceConfigServerGitSetting {
  const SpringCloudServiceConfigServerGitSetting({
    this.label,
    this.searchPaths,
    required this.uri,
    this.httpBasicAuth,
    this.repository,
    this.sshAuth,
  });

  final TfArg<String>? label;

  final TfArg<List<String>>? searchPaths;

  final TfArg<String> uri;

  final SpringCloudServiceHttpBasicAuth? httpBasicAuth;

  final List<SpringCloudServiceRepository>? repository;

  final SpringCloudServiceSshAuth? sshAuth;

  @internal
  Map<String, Object?> encode() => {
    'label': ?label?.toTfJson(),
    'search_paths': ?searchPaths?.toTfJson(),
    'uri': uri.toTfJson(),
    'http_basic_auth': ?httpBasicAuth?.encode(),
    if (repository != null)
      'repository': [for (final e in repository!) e.encode()],
    'ssh_auth': ?sshAuth?.encode(),
  };
}

/// Typed helper for the `config_server_git_setting.http_basic_auth` block of
/// `azurerm_spring_cloud_service` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SpringCloudServiceHttpBasicAuth {
  const SpringCloudServiceHttpBasicAuth({
    required this.password,
    required this.username,
  });

  final Sensitive<String> password;

  final TfArg<String> username;

  @internal
  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `config_server_git_setting.repository` block of
/// `azurerm_spring_cloud_service` (derived from provider schema).
@immutable
final class SpringCloudServiceRepository {
  const SpringCloudServiceRepository({
    this.label,
    required this.name,
    this.pattern,
    this.searchPaths,
    required this.uri,
    this.httpBasicAuth,
    this.sshAuth,
  });

  final TfArg<String>? label;

  final TfArg<String> name;

  final TfArg<List<String>>? pattern;

  final TfArg<List<String>>? searchPaths;

  final TfArg<String> uri;

  final SpringCloudServiceHttpBasicAuth? httpBasicAuth;

  final SpringCloudServiceSshAuth? sshAuth;

  @internal
  Map<String, Object?> encode() => {
    'label': ?label?.toTfJson(),
    'name': name.toTfJson(),
    'pattern': ?pattern?.toTfJson(),
    'search_paths': ?searchPaths?.toTfJson(),
    'uri': uri.toTfJson(),
    'http_basic_auth': ?httpBasicAuth?.encode(),
    'ssh_auth': ?sshAuth?.encode(),
  };
}

/// Typed helper for the `config_server_git_setting.ssh_auth` block of
/// `azurerm_spring_cloud_service` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SpringCloudServiceSshAuth {
  const SpringCloudServiceSshAuth({
    this.hostKey,
    this.hostKeyAlgorithm,
    required this.privateKey,
    this.strictHostKeyCheckingEnabled,
  });

  final Sensitive<String>? hostKey;

  final SpringCloudServiceHostKeyAlgorithm? hostKeyAlgorithm;

  final Sensitive<String> privateKey;

  final TfArg<bool>? strictHostKeyCheckingEnabled;

  @internal
  Map<String, Object?> encode() => {
    'host_key': ?hostKey?.toTfJson(),
    'host_key_algorithm': ?hostKeyAlgorithm?.toTfJson(),
    'private_key': privateKey.toTfJson(),
    'strict_host_key_checking_enabled': ?strictHostKeyCheckingEnabled
        ?.toTfJson(),
  };
}

/// `host_key_algorithm` — derived from the provider schema description.
extension type const SpringCloudServiceHostKeyAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudServiceHostKeyAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudServiceHostKeyAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudServiceHostKeyAlgorithm.arg(TfArg<String> arg) : this._(arg);

  static const sshDss = SpringCloudServiceHostKeyAlgorithm._(
    TfArgLiteral('ssh-dss'),
  );
  static const sshRsa = SpringCloudServiceHostKeyAlgorithm._(
    TfArgLiteral('ssh-rsa'),
  );
  static const ecdsaSha2Nistp256 = SpringCloudServiceHostKeyAlgorithm._(
    TfArgLiteral('ecdsa-sha2-nistp256'),
  );
  static const ecdsaSha2Nistp384 = SpringCloudServiceHostKeyAlgorithm._(
    TfArgLiteral('ecdsa-sha2-nistp384'),
  );
  static const ecdsaSha2Nistp521 = SpringCloudServiceHostKeyAlgorithm._(
    TfArgLiteral('ecdsa-sha2-nistp521'),
  );

  static const List<SpringCloudServiceHostKeyAlgorithm> values = [
    sshDss,
    sshRsa,
    ecdsaSha2Nistp256,
    ecdsaSha2Nistp384,
    ecdsaSha2Nistp521,
  ];
}

/// Typed helper for the `container_registry` block of
/// `azurerm_spring_cloud_service` (derived from provider schema).
@immutable
final class SpringCloudServiceContainerRegistry {
  const SpringCloudServiceContainerRegistry({
    required this.name,
    required this.password,
    required this.server,
    required this.username,
  });

  final TfArg<String> name;

  final Sensitive<String> password;

  final TfArg<String> server;

  final TfArg<String> username;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'password': password.toTfJson(),
    'server': server.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `default_build_service` block of
/// `azurerm_spring_cloud_service` (derived from provider schema).
@immutable
final class SpringCloudServiceDefaultBuildService {
  const SpringCloudServiceDefaultBuildService({this.containerRegistryName});

  final TfArg<String>? containerRegistryName;

  @internal
  Map<String, Object?> encode() => {
    'container_registry_name': ?containerRegistryName?.toTfJson(),
  };
}

/// Typed helper for the `marketplace` block of
/// `azurerm_spring_cloud_service` (derived from provider schema).
@immutable
final class SpringCloudServiceMarketplace {
  const SpringCloudServiceMarketplace({
    required this.plan,
    required this.product,
    required this.publisher,
  });

  final TfArg<String> plan;

  final TfArg<String> product;

  final TfArg<String> publisher;

  @internal
  Map<String, Object?> encode() => {
    'plan': plan.toTfJson(),
    'product': product.toTfJson(),
    'publisher': publisher.toTfJson(),
  };
}

/// Typed helper for the `network` block of
/// `azurerm_spring_cloud_service` (derived from provider schema).
@immutable
final class SpringCloudServiceNetwork {
  const SpringCloudServiceNetwork({
    this.appNetworkResourceGroup,
    required this.appSubnetId,
    required this.cidrRanges,
    this.outboundType,
    this.readTimeoutSeconds,
    this.serviceRuntimeNetworkResourceGroup,
    required this.serviceRuntimeSubnetId,
  });

  final TfArg<String>? appNetworkResourceGroup;

  final TfArg<String> appSubnetId;

  final TfArg<List<String>> cidrRanges;

  final SpringCloudServiceOutboundType? outboundType;

  final TfArg<num>? readTimeoutSeconds;

  final TfArg<String>? serviceRuntimeNetworkResourceGroup;

  final TfArg<String> serviceRuntimeSubnetId;

  @internal
  Map<String, Object?> encode() => {
    'app_network_resource_group': ?appNetworkResourceGroup?.toTfJson(),
    'app_subnet_id': appSubnetId.toTfJson(),
    'cidr_ranges': cidrRanges.toTfJson(),
    'outbound_type': ?outboundType?.toTfJson(),
    'read_timeout_seconds': ?readTimeoutSeconds?.toTfJson(),
    'service_runtime_network_resource_group':
        ?serviceRuntimeNetworkResourceGroup?.toTfJson(),
    'service_runtime_subnet_id': serviceRuntimeSubnetId.toTfJson(),
  };
}

/// `outbound_type` — derived from the provider schema description.
extension type const SpringCloudServiceOutboundType._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudServiceOutboundType.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudServiceOutboundType.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudServiceOutboundType.arg(TfArg<String> arg) : this._(arg);

  static const loadbalancer = SpringCloudServiceOutboundType._(
    TfArgLiteral('loadBalancer'),
  );
  static const userdefinedrouting = SpringCloudServiceOutboundType._(
    TfArgLiteral('userDefinedRouting'),
  );

  static const List<SpringCloudServiceOutboundType> values = [
    loadbalancer,
    userdefinedrouting,
  ];
}

/// Typed helper for the `trace` block of
/// `azurerm_spring_cloud_service` (derived from provider schema).
@immutable
final class SpringCloudServiceTrace {
  const SpringCloudServiceTrace({this.connectionString, this.sampleRate});

  final TfArg<String>? connectionString;

  final TfArg<num>? sampleRate;

  @internal
  Map<String, Object?> encode() => {
    'connection_string': ?connectionString?.toTfJson(),
    'sample_rate': ?sampleRate?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_service`.
final class AzurermSpringCloudService extends Resource {
  static const String tfType = 'azurerm_spring_cloud_service';

  AzurermSpringCloudService(
    super.localName, {
    SpringCloudServiceBuildAgentPoolSize? buildAgentPoolSize,
    required TfArg<String> location,
    TfArg<bool>? logStreamPublicEndpointEnabled,
    TfArg<String>? managedEnvironmentId,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? serviceRegistryEnabled,
    SpringCloudServiceSkuName? skuName,
    SpringCloudServiceSkuTier? skuTier,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? zoneRedundant,
    SpringCloudServiceConfigServerGitSetting? configServerGitSetting,
    List<SpringCloudServiceContainerRegistry>? containerRegistry,
    SpringCloudServiceDefaultBuildService? defaultBuildService,
    SpringCloudServiceMarketplace? marketplace,
    SpringCloudServiceNetwork? network,
    SpringCloudServiceTrace? trace,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'build_agent_pool_size': ?buildAgentPoolSize,
           'location': location,
           'log_stream_public_endpoint_enabled':
               ?logStreamPublicEndpointEnabled,
           'managed_environment_id': ?managedEnvironmentId,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_registry_enabled': ?serviceRegistryEnabled,
           'sku_name': ?skuName,
           'sku_tier': ?skuTier,
           'tags': ?tags,
           'zone_redundant': ?zoneRedundant,
           if (configServerGitSetting != null)
             'config_server_git_setting': TfArg.literal(
               configServerGitSetting.encode(),
             ),
           if (containerRegistry != null)
             'container_registry': TfArg.literal([
               for (final e in containerRegistry) e.encode(),
             ]),
           if (defaultBuildService != null)
             'default_build_service': TfArg.literal(
               defaultBuildService.encode(),
             ),
           if (marketplace != null)
             'marketplace': TfArg.literal(marketplace.encode()),
           if (network != null) 'network': TfArg.literal(network.encode()),
           if (trace != null) 'trace': TfArg.literal(trace.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudService>`.
  RefTo<AzurermSpringCloudService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `outbound_public_ip_addresses` attribute.
  TfRef<List<String>> get outboundPublicIpAddresses =>
      TfRef.attribute<List<String>>(this, 'outbound_public_ip_addresses');

  /// Reference to `required_network_traffic_rules` attribute.
  TfRef<List<Map<String, Object?>>> get requiredNetworkTrafficRules =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'required_network_traffic_rules',
      );

  /// Reference to `service_registry_id` attribute.
  TfRef<String> get serviceRegistryId =>
      TfRef.attribute<String>(this, 'service_registry_id');

  /// Reference to `build_agent_pool_size` attribute.
  TfRef<String> get buildAgentPoolSize =>
      TfRef.attribute<String>(this, 'build_agent_pool_size');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_stream_public_endpoint_enabled` attribute.
  TfRef<bool> get logStreamPublicEndpointEnabled =>
      TfRef.attribute<bool>(this, 'log_stream_public_endpoint_enabled');

  /// Reference to `managed_environment_id` attribute.
  TfRef<String> get managedEnvironmentId =>
      TfRef.attribute<String>(this, 'managed_environment_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_registry_enabled` attribute.
  TfRef<bool> get serviceRegistryEnabled =>
      TfRef.attribute<bool>(this, 'service_registry_enabled');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `sku_tier` attribute.
  TfRef<String> get skuTier => TfRef.attribute<String>(this, 'sku_tier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone_redundant` attribute.
  TfRef<bool> get zoneRedundant =>
      TfRef.attribute<bool>(this, 'zone_redundant');
}
