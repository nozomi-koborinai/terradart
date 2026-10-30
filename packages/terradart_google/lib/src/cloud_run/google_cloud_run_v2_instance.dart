// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../secret_manager/google_secret_manager_secret.dart'
    show GoogleSecretManagerSecret;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_cloud_run_v2_instance`.
const Set<String> _googleCloudRunV2InstanceSensitive = <String>{};

/// Cloud Run V2 Instance Encryption Key Revocation enum for `encryption_key_revocation_action`.
extension type const CloudRunV2InstanceEncryptionKeyRevocationAction._(
  TfArg<String> _
) implements TfArg<String> {
  CloudRunV2InstanceEncryptionKeyRevocationAction.variable(String name)
    : this._(TfArg.variable(name));
  CloudRunV2InstanceEncryptionKeyRevocationAction.expression(String template)
    : this._(TfArg.expression(template));
  const CloudRunV2InstanceEncryptionKeyRevocationAction.arg(TfArg<String> arg)
    : this._(arg);

  static const preventNew = CloudRunV2InstanceEncryptionKeyRevocationAction._(
    TfArgLiteral('PREVENT_NEW'),
  );
  static const shutdown = CloudRunV2InstanceEncryptionKeyRevocationAction._(
    TfArgLiteral('SHUTDOWN'),
  );

  static const List<CloudRunV2InstanceEncryptionKeyRevocationAction> values = [
    preventNew,
    shutdown,
  ];
}

/// Cloud Run V2 Instance enum for `ingress`.
extension type const CloudRunV2InstanceIngress._(TfArg<String> _)
    implements TfArg<String> {
  CloudRunV2InstanceIngress.variable(String name)
    : this._(TfArg.variable(name));
  CloudRunV2InstanceIngress.expression(String template)
    : this._(TfArg.expression(template));
  const CloudRunV2InstanceIngress.arg(TfArg<String> arg) : this._(arg);

  static const ingressTrafficAll = CloudRunV2InstanceIngress._(
    TfArgLiteral('INGRESS_TRAFFIC_ALL'),
  );
  static const ingressTrafficInternalOnly = CloudRunV2InstanceIngress._(
    TfArgLiteral('INGRESS_TRAFFIC_INTERNAL_ONLY'),
  );
  static const ingressTrafficInternalLoadBalancer = CloudRunV2InstanceIngress._(
    TfArgLiteral('INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER'),
  );

  static const List<CloudRunV2InstanceIngress> values = [
    ingressTrafficAll,
    ingressTrafficInternalOnly,
    ingressTrafficInternalLoadBalancer,
  ];
}

/// Cloud Run V2 Instance Launch enum for `launch_stage`.
extension type const CloudRunV2InstanceLaunchStage._(TfArg<String> _)
    implements TfArg<String> {
  CloudRunV2InstanceLaunchStage.variable(String name)
    : this._(TfArg.variable(name));
  CloudRunV2InstanceLaunchStage.expression(String template)
    : this._(TfArg.expression(template));
  const CloudRunV2InstanceLaunchStage.arg(TfArg<String> arg) : this._(arg);

  static const unimplemented = CloudRunV2InstanceLaunchStage._(
    TfArgLiteral('UNIMPLEMENTED'),
  );
  static const prelaunch = CloudRunV2InstanceLaunchStage._(
    TfArgLiteral('PRELAUNCH'),
  );
  static const earlyAccess = CloudRunV2InstanceLaunchStage._(
    TfArgLiteral('EARLY_ACCESS'),
  );
  static const alpha = CloudRunV2InstanceLaunchStage._(TfArgLiteral('ALPHA'));
  static const beta = CloudRunV2InstanceLaunchStage._(TfArgLiteral('BETA'));
  static const ga = CloudRunV2InstanceLaunchStage._(TfArgLiteral('GA'));
  static const deprecated = CloudRunV2InstanceLaunchStage._(
    TfArgLiteral('DEPRECATED'),
  );

  static const List<CloudRunV2InstanceLaunchStage> values = [
    unimplemented,
    prelaunch,
    earlyAccess,
    alpha,
    beta,
    ga,
    deprecated,
  ];
}

/// Cloud Run V2 Instance Restart enum for `restart_policy`.
extension type const CloudRunV2InstanceRestartPolicy._(TfArg<String> _)
    implements TfArg<String> {
  CloudRunV2InstanceRestartPolicy.variable(String name)
    : this._(TfArg.variable(name));
  CloudRunV2InstanceRestartPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const CloudRunV2InstanceRestartPolicy.arg(TfArg<String> arg) : this._(arg);

  static const always = CloudRunV2InstanceRestartPolicy._(
    TfArgLiteral('ALWAYS'),
  );
  static const onFailure = CloudRunV2InstanceRestartPolicy._(
    TfArgLiteral('ON_FAILURE'),
  );
  static const never = CloudRunV2InstanceRestartPolicy._(TfArgLiteral('NEVER'));

  static const List<CloudRunV2InstanceRestartPolicy> values = [
    always,
    onFailure,
    never,
  ];
}

/// Typed helper for the `containers` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceContainers {
  const CloudRunV2InstanceContainers({
    this.args,
    this.command,
    required this.image,
    this.name,
    this.workingDir,
    this.env,
    this.livenessProbe,
    this.ports,
    this.resources,
    this.startupProbe,
    this.volumeMounts,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<String> image;

  final TfArg<String>? name;

  final TfArg<String>? workingDir;

  final List<CloudRunV2InstanceEnv>? env;

  final CloudRunV2InstanceLivenessProbe? livenessProbe;

  final List<CloudRunV2InstancePorts>? ports;

  final CloudRunV2InstanceResources? resources;

  final CloudRunV2InstanceStartupProbe? startupProbe;

  final List<CloudRunV2InstanceVolumeMounts>? volumeMounts;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'image': image.toTfJson(),
    'name': ?name?.toTfJson(),
    'working_dir': ?workingDir?.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    'liveness_probe': ?livenessProbe?.encode(),
    if (ports != null) 'ports': [for (final e in ports!) e.encode()],
    'resources': ?resources?.encode(),
    'startup_probe': ?startupProbe?.encode(),
    if (volumeMounts != null)
      'volume_mounts': [for (final e in volumeMounts!) e.encode()],
  };
}

/// Typed helper for the `containers.env` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceEnv {
  const CloudRunV2InstanceEnv({
    required this.name,
    this.value,
    this.valueSource,
  });

  final TfArg<String> name;

  final TfArg<String>? value;

  final CloudRunV2InstanceValueSource? valueSource;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': ?value?.toTfJson(),
    'value_source': ?valueSource?.encode(),
  };
}

/// Typed helper for the `containers.env.value_source` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceValueSource {
  const CloudRunV2InstanceValueSource({this.secretKeyRef});

  final CloudRunV2InstanceSecretKeyRef? secretKeyRef;

  @internal
  Map<String, Object?> encode() => {'secret_key_ref': ?secretKeyRef?.encode()};
}

/// Typed helper for the `containers.env.value_source.secret_key_ref` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceSecretKeyRef {
  const CloudRunV2InstanceSecretKeyRef({
    required this.secret,
    required this.version,
  });

  final RefTo<GoogleSecretManagerSecret> secret;

  final TfArg<String> version;

  @internal
  Map<String, Object?> encode() => {
    'secret': secret.encodeAs('id').toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `containers.liveness_probe` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceLivenessProbe {
  const CloudRunV2InstanceLivenessProbe({
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.timeoutSeconds,
    this.grpc,
    this.httpGet,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? timeoutSeconds;

  final CloudRunV2InstanceGrpc? grpc;

  final CloudRunV2InstanceHttpGet? httpGet;

  @internal
  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'initial_delay_seconds': ?initialDelaySeconds?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    'grpc': ?grpc?.encode(),
    'http_get': ?httpGet?.encode(),
  };
}

/// Typed helper for the `containers.liveness_probe.grpc` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunV2InstanceGrpc {
  const CloudRunV2InstanceGrpc({this.port, this.service});

  final TfArg<num>? port;

  final TfArg<String>? service;

  @internal
  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'service': ?service?.toTfJson(),
  };
}

/// Typed helper for the `containers.liveness_probe.http_get` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunV2InstanceHttpGet {
  const CloudRunV2InstanceHttpGet({this.path, this.port, this.httpHeaders});

  final TfArg<String>? path;

  final TfArg<num>? port;

  final List<CloudRunV2InstanceHttpHeaders>? httpHeaders;

  @internal
  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    if (httpHeaders != null)
      'http_headers': [for (final e in httpHeaders!) e.encode()],
  };
}

/// Typed helper for the `containers.liveness_probe.http_get.http_headers` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudRunV2InstanceHttpHeaders {
  const CloudRunV2InstanceHttpHeaders({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `containers.ports` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstancePorts {
  const CloudRunV2InstancePorts({this.containerPort, this.name});

  final TfArg<num>? containerPort;

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {
    'container_port': ?containerPort?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Typed helper for the `containers.resources` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceResources {
  const CloudRunV2InstanceResources({this.limits});

  final TfArg<Map<String, String>>? limits;

  @internal
  Map<String, Object?> encode() => {'limits': ?limits?.toTfJson()};
}

/// Typed helper for the `containers.startup_probe` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceStartupProbe {
  const CloudRunV2InstanceStartupProbe({
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.timeoutSeconds,
    this.grpc,
    this.httpGet,
    this.tcpSocket,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? timeoutSeconds;

  final CloudRunV2InstanceGrpc? grpc;

  final CloudRunV2InstanceHttpGet? httpGet;

  final CloudRunV2InstanceTcpSocket? tcpSocket;

  @internal
  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'initial_delay_seconds': ?initialDelaySeconds?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    'grpc': ?grpc?.encode(),
    'http_get': ?httpGet?.encode(),
    'tcp_socket': ?tcpSocket?.encode(),
  };
}

/// Typed helper for the `containers.startup_probe.tcp_socket` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceTcpSocket {
  const CloudRunV2InstanceTcpSocket({this.port});

  final TfArg<num>? port;

  @internal
  Map<String, Object?> encode() => {'port': ?port?.toTfJson()};
}

/// Typed helper for the `containers.volume_mounts` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceVolumeMounts {
  const CloudRunV2InstanceVolumeMounts({
    required this.mountPath,
    required this.name,
    this.subPath,
  });

  final TfArg<String> mountPath;

  final TfArg<String> name;

  final TfArg<String>? subPath;

  @internal
  Map<String, Object?> encode() => {
    'mount_path': mountPath.toTfJson(),
    'name': name.toTfJson(),
    'sub_path': ?subPath?.toTfJson(),
  };
}

/// Typed helper for the `volumes` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceVolumes {
  const CloudRunV2InstanceVolumes({
    required this.name,
    this.cloudSqlInstance,
    this.emptyDir,
    this.gcs,
    this.nfs,
    this.secret,
  });

  final TfArg<String> name;

  final CloudRunV2InstanceCloudSqlInstance? cloudSqlInstance;

  final CloudRunV2InstanceEmptyDir? emptyDir;

  final CloudRunV2InstanceGcs? gcs;

  final CloudRunV2InstanceNfs? nfs;

  final CloudRunV2InstanceSecret? secret;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'cloud_sql_instance': ?cloudSqlInstance?.encode(),
    'empty_dir': ?emptyDir?.encode(),
    'gcs': ?gcs?.encode(),
    'nfs': ?nfs?.encode(),
    'secret': ?secret?.encode(),
  };
}

/// Typed helper for the `volumes.cloud_sql_instance` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceCloudSqlInstance {
  const CloudRunV2InstanceCloudSqlInstance({this.instances});

  final TfArg<List<String>>? instances;

  @internal
  Map<String, Object?> encode() => {'instances': ?instances?.toTfJson()};
}

/// Typed helper for the `volumes.empty_dir` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceEmptyDir {
  const CloudRunV2InstanceEmptyDir({this.medium, this.sizeLimit});

  final CloudRunV2InstanceMedium? medium;

  final TfArg<String>? sizeLimit;

  @internal
  Map<String, Object?> encode() => {
    'medium': ?medium?.toTfJson(),
    'size_limit': ?sizeLimit?.toTfJson(),
  };
}

/// `medium` — derived from the provider schema description.
extension type const CloudRunV2InstanceMedium._(TfArg<String> _)
    implements TfArg<String> {
  CloudRunV2InstanceMedium.variable(String name) : this._(TfArg.variable(name));
  CloudRunV2InstanceMedium.expression(String template)
    : this._(TfArg.expression(template));
  const CloudRunV2InstanceMedium.arg(TfArg<String> arg) : this._(arg);

  static const memory = CloudRunV2InstanceMedium._(TfArgLiteral('MEMORY'));
  static const disk = CloudRunV2InstanceMedium._(TfArgLiteral('DISK'));

  static const List<CloudRunV2InstanceMedium> values = [memory, disk];
}

/// Typed helper for the `volumes.gcs` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceGcs {
  const CloudRunV2InstanceGcs({
    required this.bucket,
    this.mountOptions,
    this.readOnly,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<List<String>>? mountOptions;

  final TfArg<bool>? readOnly;

  @internal
  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'mount_options': ?mountOptions?.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
  };
}

/// Typed helper for the `volumes.nfs` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceNfs {
  const CloudRunV2InstanceNfs({
    required this.path,
    this.readOnly,
    required this.server,
  });

  final TfArg<String> path;

  final TfArg<bool>? readOnly;

  final TfArg<String> server;

  @internal
  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
    'server': server.toTfJson(),
  };
}

/// Typed helper for the `volumes.secret` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceSecret {
  const CloudRunV2InstanceSecret({
    this.defaultMode,
    required this.secret,
    this.items,
  });

  final TfArg<num>? defaultMode;

  final TfArg<String> secret;

  final List<CloudRunV2InstanceItems>? items;

  @internal
  Map<String, Object?> encode() => {
    'default_mode': ?defaultMode?.toTfJson(),
    'secret': secret.toTfJson(),
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `volumes.secret.items` block of
/// `google_cloud_run_v2_instance` (derived from provider schema).
@immutable
final class CloudRunV2InstanceItems {
  const CloudRunV2InstanceItems({this.mode, required this.path, this.version});

  final TfArg<num>? mode;

  final TfArg<String> path;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'path': path.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Factory wrapper for `google_cloud_run_v2_instance`.
///
/// An Instance represents a single group of containers running in a region.
final class GoogleCloudRunV2Instance extends Resource {
  static const String tfType = 'google_cloud_run_v2_instance';

  GoogleCloudRunV2Instance(
    super.localName, {
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? client,
    TfArg<String>? clientVersion,
    TfArg<bool>? defaultUriDisabled,
    TfArg<String>? deletionPolicy,
    TfArg<String>? encryptionKey,
    CloudRunV2InstanceEncryptionKeyRevocationAction?
    encryptionKeyRevocationAction,
    TfArg<String>? encryptionKeyShutdownDuration,
    CloudRunV2InstanceIngress? ingress,
    TfArg<bool>? invokerIamDisabled,
    TfArg<Map<String, String>>? labels,
    CloudRunV2InstanceLaunchStage? launchStage,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    CloudRunV2InstanceRestartPolicy? restartPolicy,
    RefTo<GoogleServiceAccount>? serviceAccount,
    required List<CloudRunV2InstanceContainers> containers,
    List<CloudRunV2InstanceVolumes>? volumes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           'client': ?client,
           'client_version': ?clientVersion,
           'default_uri_disabled': ?defaultUriDisabled,
           'deletion_policy': ?deletionPolicy,
           'encryption_key': ?encryptionKey,
           'encryption_key_revocation_action': ?encryptionKeyRevocationAction,
           'encryption_key_shutdown_duration': ?encryptionKeyShutdownDuration,
           'ingress': ?ingress,
           'invoker_iam_disabled': ?invokerIamDisabled,
           'labels': ?labels,
           'launch_stage': ?launchStage,
           'location': location,
           'name': name,
           'project': ?project,
           'restart_policy': ?restartPolicy,
           'service_account': ?serviceAccount?.encodeAs('email'),
           'containers': TfArg.literal([
             for (final e in containers) e.encode(),
           ]),
           if (volumes != null)
             'volumes': TfArg.literal([for (final e in volumes) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2InstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2Instance>`.
  RefTo<GoogleCloudRunV2Instance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `conditions` attribute.
  TfRef<List<Map<String, Object?>>> get conditions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'conditions');

  /// Reference to `container_statuses` attribute.
  TfRef<List<Map<String, Object?>>> get containerStatuses =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'container_statuses');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `generation` attribute.
  TfRef<String> get generation => TfRef.attribute<String>(this, 'generation');

  /// Reference to `last_modifier` attribute.
  TfRef<String> get lastModifier =>
      TfRef.attribute<String>(this, 'last_modifier');

  /// Reference to `log_uri` attribute.
  TfRef<String> get logUri => TfRef.attribute<String>(this, 'log_uri');

  /// Reference to `observed_generation` attribute.
  TfRef<String> get observedGeneration =>
      TfRef.attribute<String>(this, 'observed_generation');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `satisfies_pzs` attribute.
  TfRef<bool> get satisfiesPzs => TfRef.attribute<bool>(this, 'satisfies_pzs');

  /// Reference to `terminal_condition` attribute.
  TfRef<List<Map<String, Object?>>> get terminalCondition =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'terminal_condition');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `urls` attribute.
  TfRef<List<String>> get urls => TfRef.attribute<List<String>>(this, 'urls');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `client` attribute.
  TfRef<String> get client => TfRef.attribute<String>(this, 'client');

  /// Reference to `client_version` attribute.
  TfRef<String> get clientVersion =>
      TfRef.attribute<String>(this, 'client_version');

  /// Reference to `default_uri_disabled` attribute.
  TfRef<bool> get defaultUriDisabled =>
      TfRef.attribute<bool>(this, 'default_uri_disabled');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `encryption_key` attribute.
  TfRef<String> get encryptionKey =>
      TfRef.attribute<String>(this, 'encryption_key');

  /// Reference to `encryption_key_revocation_action` attribute.
  TfRef<String> get encryptionKeyRevocationAction =>
      TfRef.attribute<String>(this, 'encryption_key_revocation_action');

  /// Reference to `encryption_key_shutdown_duration` attribute.
  TfRef<String> get encryptionKeyShutdownDuration =>
      TfRef.attribute<String>(this, 'encryption_key_shutdown_duration');

  /// Reference to `ingress` attribute.
  TfRef<String> get ingress => TfRef.attribute<String>(this, 'ingress');

  /// Reference to `invoker_iam_disabled` attribute.
  TfRef<bool> get invokerIamDisabled =>
      TfRef.attribute<bool>(this, 'invoker_iam_disabled');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `launch_stage` attribute.
  TfRef<String> get launchStage =>
      TfRef.attribute<String>(this, 'launch_stage');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `restart_policy` attribute.
  TfRef<String> get restartPolicy =>
      TfRef.attribute<String>(this, 'restart_policy');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');
}
