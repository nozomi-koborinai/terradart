// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_app`.
const Set<String> _azurermContainerAppSensitive = <String>{
  'custom_domain_verification_id',
  'secret.value',
};

/// Container App Revision enum for `revision_mode`.
extension type const ContainerAppRevisionMode._(TfArg<String> _)
    implements TfArg<String> {
  ContainerAppRevisionMode.variable(String name) : this._(TfArg.variable(name));
  ContainerAppRevisionMode.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAppRevisionMode.arg(TfArg<String> arg) : this._(arg);

  static const multiple = ContainerAppRevisionMode._(TfArgLiteral('Multiple'));
  static const single = ContainerAppRevisionMode._(TfArgLiteral('Single'));

  static const List<ContainerAppRevisionMode> values = [multiple, single];
}

/// Typed helper for the `dapr` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppDapr {
  const ContainerAppDapr({required this.appId, this.appPort, this.appProtocol});

  final TfArg<String> appId;

  final TfArg<num>? appPort;

  final ContainerAppProtocol? appProtocol;

  @internal
  Map<String, Object?> encode() => {
    'app_id': appId.toTfJson(),
    'app_port': ?appPort?.toTfJson(),
    'app_protocol': ?appProtocol?.toTfJson(),
  };
}

/// `app_protocol` — derived from the provider schema description.
extension type const ContainerAppProtocol._(TfArg<String> _)
    implements TfArg<String> {
  ContainerAppProtocol.variable(String name) : this._(TfArg.variable(name));
  ContainerAppProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAppProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = ContainerAppProtocol._(TfArgLiteral('http'));
  static const grpc = ContainerAppProtocol._(TfArgLiteral('grpc'));

  static const List<ContainerAppProtocol> values = [http, grpc];
}

/// Typed helper for the `identity` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppIdentity {
  const ContainerAppIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `ingress` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppIngress {
  const ContainerAppIngress({
    this.allowInsecureConnections,
    this.clientCertificateMode,
    this.exposedPort,
    this.externalEnabled,
    required this.targetPort,
    this.transport,
    this.cors,
    this.ipSecurityRestriction,
    required this.trafficWeight,
  });

  final TfArg<bool>? allowInsecureConnections;

  final TfArg<String>? clientCertificateMode;

  final TfArg<num>? exposedPort;

  final TfArg<bool>? externalEnabled;

  final TfArg<num> targetPort;

  final ContainerAppTransport? transport;

  final ContainerAppCors? cors;

  final List<ContainerAppIpSecurityRestriction>? ipSecurityRestriction;

  final List<ContainerAppTrafficWeight> trafficWeight;

  @internal
  Map<String, Object?> encode() => {
    'allow_insecure_connections': ?allowInsecureConnections?.toTfJson(),
    'client_certificate_mode': ?clientCertificateMode?.toTfJson(),
    'exposed_port': ?exposedPort?.toTfJson(),
    'external_enabled': ?externalEnabled?.toTfJson(),
    'target_port': targetPort.toTfJson(),
    'transport': ?transport?.toTfJson(),
    'cors': ?cors?.encode(),
    if (ipSecurityRestriction != null)
      'ip_security_restriction': [
        for (final e in ipSecurityRestriction!) e.encode(),
      ],
    'traffic_weight': [for (final e in trafficWeight) e.encode()],
  };
}

/// `transport` — derived from the provider schema description.
extension type const ContainerAppTransport._(TfArg<String> _)
    implements TfArg<String> {
  ContainerAppTransport.variable(String name) : this._(TfArg.variable(name));
  ContainerAppTransport.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAppTransport.arg(TfArg<String> arg) : this._(arg);

  static const auto = ContainerAppTransport._(TfArgLiteral('auto'));
  static const http = ContainerAppTransport._(TfArgLiteral('http'));
  static const http2 = ContainerAppTransport._(TfArgLiteral('http2'));
  static const tcp = ContainerAppTransport._(TfArgLiteral('tcp'));

  static const List<ContainerAppTransport> values = [auto, http, http2, tcp];
}

/// Typed helper for the `ingress.cors` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppCors {
  const ContainerAppCors({
    this.allowCredentialsEnabled,
    this.allowedHeaders,
    this.allowedMethods,
    required this.allowedOrigins,
    this.exposedHeaders,
    this.maxAgeInSeconds,
  });

  final TfArg<bool>? allowCredentialsEnabled;

  final TfArg<List<String>>? allowedHeaders;

  final TfArg<List<String>>? allowedMethods;

  final TfArg<List<String>> allowedOrigins;

  final TfArg<List<String>>? exposedHeaders;

  final TfArg<num>? maxAgeInSeconds;

  @internal
  Map<String, Object?> encode() => {
    'allow_credentials_enabled': ?allowCredentialsEnabled?.toTfJson(),
    'allowed_headers': ?allowedHeaders?.toTfJson(),
    'allowed_methods': ?allowedMethods?.toTfJson(),
    'allowed_origins': allowedOrigins.toTfJson(),
    'exposed_headers': ?exposedHeaders?.toTfJson(),
    'max_age_in_seconds': ?maxAgeInSeconds?.toTfJson(),
  };
}

/// Typed helper for the `ingress.ip_security_restriction` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppIpSecurityRestriction {
  const ContainerAppIpSecurityRestriction({
    required this.action,
    this.description,
    required this.ipAddressRange,
    required this.name,
  });

  final TfArg<String> action;

  final TfArg<String>? description;

  final TfArg<String> ipAddressRange;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'description': ?description?.toTfJson(),
    'ip_address_range': ipAddressRange.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `ingress.traffic_weight` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppTrafficWeight {
  const ContainerAppTrafficWeight({
    this.label,
    this.latestRevision,
    required this.percentage,
    this.revisionSuffix,
  });

  final TfArg<String>? label;

  final TfArg<bool>? latestRevision;

  final TfArg<num> percentage;

  final TfArg<String>? revisionSuffix;

  @internal
  Map<String, Object?> encode() => {
    'label': ?label?.toTfJson(),
    'latest_revision': ?latestRevision?.toTfJson(),
    'percentage': percentage.toTfJson(),
    'revision_suffix': ?revisionSuffix?.toTfJson(),
  };
}

/// Typed helper for the `registry` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppRegistry {
  const ContainerAppRegistry({
    this.identity,
    this.passwordSecretName,
    required this.server,
    this.username,
  });

  final TfArg<String>? identity;

  final TfArg<String>? passwordSecretName;

  final TfArg<String> server;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'identity': ?identity?.toTfJson(),
    'password_secret_name': ?passwordSecretName?.toTfJson(),
    'server': server.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `secret` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppSecret {
  const ContainerAppSecret({
    this.identity,
    this.keyVaultSecretId,
    required this.name,
    this.value,
  });

  final TfArg<String>? identity;

  final TfArg<String>? keyVaultSecretId;

  final TfArg<String> name;

  final Sensitive<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'identity': ?identity?.toTfJson(),
    'key_vault_secret_id': ?keyVaultSecretId?.toTfJson(),
    'name': name.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `template` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppTemplate {
  const ContainerAppTemplate({
    this.cooldownPeriodInSeconds,
    this.maxReplicas,
    this.minReplicas,
    this.pollingIntervalInSeconds,
    this.revisionSuffix,
    this.terminationGracePeriodSeconds,
    this.azureQueueScaleRule,
    required this.container,
    this.customScaleRule,
    this.httpScaleRule,
    this.initContainer,
    this.tcpScaleRule,
    this.volume,
  });

  final TfArg<num>? cooldownPeriodInSeconds;

  final TfArg<num>? maxReplicas;

  final TfArg<num>? minReplicas;

  final TfArg<num>? pollingIntervalInSeconds;

  final TfArg<String>? revisionSuffix;

  final TfArg<num>? terminationGracePeriodSeconds;

  final List<ContainerAppAzureQueueScaleRule>? azureQueueScaleRule;

  final List<ContainerAppContainer> container;

  final List<ContainerAppCustomScaleRule>? customScaleRule;

  final List<ContainerAppHttpScaleRule>? httpScaleRule;

  final List<ContainerAppInitContainer>? initContainer;

  final List<ContainerAppTcpScaleRule>? tcpScaleRule;

  final List<ContainerAppVolume>? volume;

  @internal
  Map<String, Object?> encode() => {
    'cooldown_period_in_seconds': ?cooldownPeriodInSeconds?.toTfJson(),
    'max_replicas': ?maxReplicas?.toTfJson(),
    'min_replicas': ?minReplicas?.toTfJson(),
    'polling_interval_in_seconds': ?pollingIntervalInSeconds?.toTfJson(),
    'revision_suffix': ?revisionSuffix?.toTfJson(),
    'termination_grace_period_seconds': ?terminationGracePeriodSeconds
        ?.toTfJson(),
    if (azureQueueScaleRule != null)
      'azure_queue_scale_rule': [
        for (final e in azureQueueScaleRule!) e.encode(),
      ],
    'container': [for (final e in container) e.encode()],
    if (customScaleRule != null)
      'custom_scale_rule': [for (final e in customScaleRule!) e.encode()],
    if (httpScaleRule != null)
      'http_scale_rule': [for (final e in httpScaleRule!) e.encode()],
    if (initContainer != null)
      'init_container': [for (final e in initContainer!) e.encode()],
    if (tcpScaleRule != null)
      'tcp_scale_rule': [for (final e in tcpScaleRule!) e.encode()],
    if (volume != null) 'volume': [for (final e in volume!) e.encode()],
  };
}

/// Typed helper for the `template.azure_queue_scale_rule` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppAzureQueueScaleRule {
  const ContainerAppAzureQueueScaleRule({
    required this.name,
    required this.queueLength,
    required this.queueName,
    required this.authentication,
  });

  final TfArg<String> name;

  final TfArg<num> queueLength;

  final TfArg<String> queueName;

  final List<ContainerAppAzureQueueScaleRuleAuthentication> authentication;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'queue_length': queueLength.toTfJson(),
    'queue_name': queueName.toTfJson(),
    'authentication': [for (final e in authentication) e.encode()],
  };
}

/// Typed helper for the `template.azure_queue_scale_rule.authentication` block of
/// `azurerm_container_app` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerAppAzureQueueScaleRuleAuthentication {
  const ContainerAppAzureQueueScaleRuleAuthentication({
    required this.secretName,
    required this.triggerParameter,
  });

  final TfArg<String> secretName;

  final TfArg<String> triggerParameter;

  @internal
  Map<String, Object?> encode() => {
    'secret_name': secretName.toTfJson(),
    'trigger_parameter': triggerParameter.toTfJson(),
  };
}

/// Typed helper for the `template.container` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppContainer {
  const ContainerAppContainer({
    this.args,
    this.command,
    required this.cpu,
    required this.image,
    required this.memory,
    required this.name,
    this.env,
    this.livenessProbe,
    this.readinessProbe,
    this.startupProbe,
    this.volumeMounts,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<num> cpu;

  final TfArg<String> image;

  final TfArg<String> memory;

  final TfArg<String> name;

  final List<ContainerAppEnv>? env;

  final List<ContainerAppLivenessProbe>? livenessProbe;

  final List<ContainerAppReadinessProbe>? readinessProbe;

  final List<ContainerAppStartupProbe>? startupProbe;

  final List<ContainerAppVolumeMounts>? volumeMounts;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'cpu': cpu.toTfJson(),
    'image': image.toTfJson(),
    'memory': memory.toTfJson(),
    'name': name.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (livenessProbe != null)
      'liveness_probe': [for (final e in livenessProbe!) e.encode()],
    if (readinessProbe != null)
      'readiness_probe': [for (final e in readinessProbe!) e.encode()],
    if (startupProbe != null)
      'startup_probe': [for (final e in startupProbe!) e.encode()],
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `template.container.env` block of
/// `azurerm_container_app` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerAppEnv {
  const ContainerAppEnv({required this.name, this.secretName, this.value});

  final TfArg<String> name;

  final TfArg<String>? secretName;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'secret_name': ?secretName?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `template.container.liveness_probe` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppLivenessProbe {
  const ContainerAppLivenessProbe({
    this.failureCountThreshold,
    this.host,
    this.initialDelay,
    this.intervalSeconds,
    this.path,
    required this.port,
    this.timeout,
    required this.transport,
    this.header,
  });

  final TfArg<num>? failureCountThreshold;

  final TfArg<String>? host;

  final TfArg<num>? initialDelay;

  final TfArg<num>? intervalSeconds;

  final TfArg<String>? path;

  final TfArg<num> port;

  final TfArg<num>? timeout;

  final ContainerAppLivenessProbeTransport transport;

  final List<ContainerAppHeader>? header;

  @internal
  Map<String, Object?> encode() => {
    'failure_count_threshold': ?failureCountThreshold?.toTfJson(),
    'host': ?host?.toTfJson(),
    'initial_delay': ?initialDelay?.toTfJson(),
    'interval_seconds': ?intervalSeconds?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': port.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'transport': transport.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
  };
}

/// `transport` — derived from the provider schema description.
extension type const ContainerAppLivenessProbeTransport._(TfArg<String> _)
    implements TfArg<String> {
  ContainerAppLivenessProbeTransport.variable(String name)
    : this._(TfArg.variable(name));
  ContainerAppLivenessProbeTransport.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAppLivenessProbeTransport.arg(TfArg<String> arg) : this._(arg);

  static const tcp = ContainerAppLivenessProbeTransport._(TfArgLiteral('TCP'));
  static const http = ContainerAppLivenessProbeTransport._(
    TfArgLiteral('HTTP'),
  );
  static const https = ContainerAppLivenessProbeTransport._(
    TfArgLiteral('HTTPS'),
  );

  static const List<ContainerAppLivenessProbeTransport> values = [
    tcp,
    http,
    https,
  ];
}

/// Typed helper for the `template.container.liveness_probe.header` block of
/// `azurerm_container_app` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerAppHeader {
  const ContainerAppHeader({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `template.container.readiness_probe` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppReadinessProbe {
  const ContainerAppReadinessProbe({
    this.failureCountThreshold,
    this.host,
    this.initialDelay,
    this.intervalSeconds,
    this.path,
    required this.port,
    this.successCountThreshold,
    this.timeout,
    required this.transport,
    this.header,
  });

  final TfArg<num>? failureCountThreshold;

  final TfArg<String>? host;

  final TfArg<num>? initialDelay;

  final TfArg<num>? intervalSeconds;

  final TfArg<String>? path;

  final TfArg<num> port;

  final TfArg<num>? successCountThreshold;

  final TfArg<num>? timeout;

  final ContainerAppLivenessProbeTransport transport;

  final List<ContainerAppHeader>? header;

  @internal
  Map<String, Object?> encode() => {
    'failure_count_threshold': ?failureCountThreshold?.toTfJson(),
    'host': ?host?.toTfJson(),
    'initial_delay': ?initialDelay?.toTfJson(),
    'interval_seconds': ?intervalSeconds?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': port.toTfJson(),
    'success_count_threshold': ?successCountThreshold?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'transport': transport.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
  };
}

/// Typed helper for the `template.container.startup_probe` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppStartupProbe {
  const ContainerAppStartupProbe({
    this.failureCountThreshold,
    this.host,
    this.initialDelay,
    this.intervalSeconds,
    this.path,
    required this.port,
    this.timeout,
    required this.transport,
    this.header,
  });

  final TfArg<num>? failureCountThreshold;

  final TfArg<String>? host;

  final TfArg<num>? initialDelay;

  final TfArg<num>? intervalSeconds;

  final TfArg<String>? path;

  final TfArg<num> port;

  final TfArg<num>? timeout;

  final ContainerAppLivenessProbeTransport transport;

  final List<ContainerAppHeader>? header;

  @internal
  Map<String, Object?> encode() => {
    'failure_count_threshold': ?failureCountThreshold?.toTfJson(),
    'host': ?host?.toTfJson(),
    'initial_delay': ?initialDelay?.toTfJson(),
    'interval_seconds': ?intervalSeconds?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': port.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'transport': transport.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
  };
}

/// Typed helper for the `template.container.volume_mounts` block of
/// `azurerm_container_app` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerAppVolumeMounts {
  const ContainerAppVolumeMounts({
    required this.name,
    required this.path,
    this.subPath,
  });

  final TfArg<String> name;

  final TfArg<String> path;

  final TfArg<String>? subPath;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'path': path.toTfJson(),
    'sub_path': ?subPath?.toTfJson(),
  };
}

/// Typed helper for the `template.custom_scale_rule` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppCustomScaleRule {
  const ContainerAppCustomScaleRule({
    required this.customRuleType,
    this.identityId,
    required this.metadata,
    required this.name,
    this.authentication,
  });

  final TfArg<String> customRuleType;

  final TfArg<String>? identityId;

  final TfArg<Map<String, String>> metadata;

  final TfArg<String> name;

  final List<ContainerAppAzureQueueScaleRuleAuthentication>? authentication;

  @internal
  Map<String, Object?> encode() => {
    'custom_rule_type': customRuleType.toTfJson(),
    'identity_id': ?identityId?.toTfJson(),
    'metadata': metadata.toTfJson(),
    'name': name.toTfJson(),
    if (authentication != null)
      'authentication': [for (final e in authentication!) e.encode()],
  };
}

/// Typed helper for the `template.http_scale_rule` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppHttpScaleRule {
  const ContainerAppHttpScaleRule({
    required this.concurrentRequests,
    required this.name,
    this.authentication,
  });

  final TfArg<String> concurrentRequests;

  final TfArg<String> name;

  final List<ContainerAppHttpScaleRuleAuthentication>? authentication;

  @internal
  Map<String, Object?> encode() => {
    'concurrent_requests': concurrentRequests.toTfJson(),
    'name': name.toTfJson(),
    if (authentication != null)
      'authentication': [for (final e in authentication!) e.encode()],
  };
}

/// Typed helper for the `template.http_scale_rule.authentication` block of
/// `azurerm_container_app` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ContainerAppHttpScaleRuleAuthentication {
  const ContainerAppHttpScaleRuleAuthentication({
    required this.secretName,
    this.triggerParameter,
  });

  final TfArg<String> secretName;

  final TfArg<String>? triggerParameter;

  @internal
  Map<String, Object?> encode() => {
    'secret_name': secretName.toTfJson(),
    'trigger_parameter': ?triggerParameter?.toTfJson(),
  };
}

/// Typed helper for the `template.init_container` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppInitContainer {
  const ContainerAppInitContainer({
    this.args,
    this.command,
    this.cpu,
    required this.image,
    this.memory,
    required this.name,
    this.env,
    this.volumeMounts,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<num>? cpu;

  final TfArg<String> image;

  final TfArg<String>? memory;

  final TfArg<String> name;

  final List<ContainerAppEnv>? env;

  final List<ContainerAppVolumeMounts>? volumeMounts;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'cpu': ?cpu?.toTfJson(),
    'image': image.toTfJson(),
    'memory': ?memory?.toTfJson(),
    'name': name.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `template.tcp_scale_rule` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppTcpScaleRule {
  const ContainerAppTcpScaleRule({
    required this.concurrentRequests,
    required this.name,
    this.authentication,
  });

  final TfArg<String> concurrentRequests;

  final TfArg<String> name;

  final List<ContainerAppHttpScaleRuleAuthentication>? authentication;

  @internal
  Map<String, Object?> encode() => {
    'concurrent_requests': concurrentRequests.toTfJson(),
    'name': name.toTfJson(),
    if (authentication != null)
      'authentication': [for (final e in authentication!) e.encode()],
  };
}

/// Typed helper for the `template.volume` block of
/// `azurerm_container_app` (derived from provider schema).
@immutable
final class ContainerAppVolume {
  const ContainerAppVolume({
    this.mountOptions,
    required this.name,
    this.storageName,
    this.storageType,
  });

  final TfArg<String>? mountOptions;

  final TfArg<String> name;

  final TfArg<String>? storageName;

  final ContainerAppStorageType? storageType;

  @internal
  Map<String, Object?> encode() => {
    'mount_options': ?mountOptions?.toTfJson(),
    'name': name.toTfJson(),
    'storage_name': ?storageName?.toTfJson(),
    'storage_type': ?storageType?.toTfJson(),
  };
}

/// `storage_type` — derived from the provider schema description.
extension type const ContainerAppStorageType._(TfArg<String> _)
    implements TfArg<String> {
  ContainerAppStorageType.variable(String name) : this._(TfArg.variable(name));
  ContainerAppStorageType.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAppStorageType.arg(TfArg<String> arg) : this._(arg);

  static const azurefile = ContainerAppStorageType._(TfArgLiteral('AzureFile'));
  static const emptydir = ContainerAppStorageType._(TfArgLiteral('EmptyDir'));

  static const List<ContainerAppStorageType> values = [azurefile, emptydir];
}

/// Factory wrapper for `azurerm_container_app`.
final class AzurermContainerApp extends Resource {
  static const String tfType = 'azurerm_container_app';

  AzurermContainerApp(
    super.localName, {
    required TfArg<String> containerAppEnvironmentId,
    TfArg<num>? maxInactiveRevisions,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required ContainerAppRevisionMode revisionMode,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? workloadProfileName,
    ContainerAppDapr? dapr,
    ContainerAppIdentity? identity,
    ContainerAppIngress? ingress,
    List<ContainerAppRegistry>? registry,
    List<ContainerAppSecret>? secret,
    required ContainerAppTemplate template,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_app_environment_id': containerAppEnvironmentId,
           'max_inactive_revisions': ?maxInactiveRevisions,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'revision_mode': revisionMode,
           'tags': ?tags,
           'workload_profile_name': ?workloadProfileName,
           if (dapr != null) 'dapr': TfArg.literal(dapr.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (ingress != null) 'ingress': TfArg.literal(ingress.encode()),
           if (registry != null)
             'registry': TfArg.literal([for (final e in registry) e.encode()]),
           if (secret != null)
             'secret': TfArg.literal([for (final e in secret) e.encode()]),
           'template': TfArg.literal(template.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerApp>`.
  RefTo<AzurermContainerApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_domain_verification_id` attribute.
  TfRef<String> get customDomainVerificationId =>
      TfRef.attribute<String>(this, 'custom_domain_verification_id');

  /// Reference to `latest_revision_fqdn` attribute.
  TfRef<String> get latestRevisionFqdn =>
      TfRef.attribute<String>(this, 'latest_revision_fqdn');

  /// Reference to `latest_revision_name` attribute.
  TfRef<String> get latestRevisionName =>
      TfRef.attribute<String>(this, 'latest_revision_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `outbound_ip_addresses` attribute.
  TfRef<List<String>> get outboundIpAddresses =>
      TfRef.attribute<List<String>>(this, 'outbound_ip_addresses');

  /// Reference to `container_app_environment_id` attribute.
  TfRef<String> get containerAppEnvironmentId =>
      TfRef.attribute<String>(this, 'container_app_environment_id');

  /// Reference to `max_inactive_revisions` attribute.
  TfRef<num> get maxInactiveRevisions =>
      TfRef.attribute<num>(this, 'max_inactive_revisions');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `revision_mode` attribute.
  TfRef<String> get revisionMode =>
      TfRef.attribute<String>(this, 'revision_mode');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workload_profile_name` attribute.
  TfRef<String> get workloadProfileName =>
      TfRef.attribute<String>(this, 'workload_profile_name');
}
