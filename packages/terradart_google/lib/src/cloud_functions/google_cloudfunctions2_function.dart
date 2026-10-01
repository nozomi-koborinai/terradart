// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;
import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;
import '../storage/google_storage_bucket_object.dart'
    show GoogleStorageBucketObject;

/// Sensitive field paths for `google_cloudfunctions2_function`.
const Set<String> _googleCloudfunctions2FunctionSensitive = <String>{};

// ===========================================================================
// Enums (sourced from schema "Possible values" prose)
// ===========================================================================

/// `event_trigger.retry_policy` -- behaviour when the user code raises.
/// `retry` re-delivers per the system retry budget; `doNotRetry` drops on
/// first failure; `unspecified` defers to the server default (currently
/// `doNotRetry`).
extension type const EventTriggerRetryPolicy._(TfArg<String> _)
    implements TfArg<String> {
  EventTriggerRetryPolicy.variable(String name) : this._(TfArg.variable(name));
  EventTriggerRetryPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const EventTriggerRetryPolicy.arg(TfArg<String> arg) : this._(arg);

  static const unspecified = EventTriggerRetryPolicy._(
    TfArgLiteral('RETRY_POLICY_UNSPECIFIED'),
  );
  static const doNotRetry = EventTriggerRetryPolicy._(
    TfArgLiteral('RETRY_POLICY_DO_NOT_RETRY'),
  );
  static const retry = EventTriggerRetryPolicy._(
    TfArgLiteral('RETRY_POLICY_RETRY'),
  );

  static const List<EventTriggerRetryPolicy> values = [
    unspecified,
    doNotRetry,
    retry,
  ];
}

/// `service_config.ingress_settings` -- which traffic sources can invoke
/// the underlying Cloud Run service. Defaults server-side to `allowAll`.
extension type const IngressSettings._(TfArg<String> _)
    implements TfArg<String> {
  IngressSettings.variable(String name) : this._(TfArg.variable(name));
  IngressSettings.expression(String template)
    : this._(TfArg.expression(template));
  const IngressSettings.arg(TfArg<String> arg) : this._(arg);

  static const allowAll = IngressSettings._(TfArgLiteral('ALLOW_ALL'));
  static const allowInternalOnly = IngressSettings._(
    TfArgLiteral('ALLOW_INTERNAL_ONLY'),
  );
  static const allowInternalAndGclb = IngressSettings._(
    TfArgLiteral('ALLOW_INTERNAL_AND_GCLB'),
  );

  static const List<IngressSettings> values = [
    allowAll,
    allowInternalOnly,
    allowInternalAndGclb,
  ];
}

/// `service_config.direct_vpc_egress` -- egress policy for direct VPC
/// network interfaces. Server default is `vpcEgressPrivateRangesOnly`.
extension type const DirectVpcEgress._(TfArg<String> _)
    implements TfArg<String> {
  DirectVpcEgress.variable(String name) : this._(TfArg.variable(name));
  DirectVpcEgress.expression(String template)
    : this._(TfArg.expression(template));
  const DirectVpcEgress.arg(TfArg<String> arg) : this._(arg);

  static const vpcEgressAllTraffic = DirectVpcEgress._(
    TfArgLiteral('VPC_EGRESS_ALL_TRAFFIC'),
  );
  static const vpcEgressPrivateRangesOnly = DirectVpcEgress._(
    TfArgLiteral('VPC_EGRESS_PRIVATE_RANGES_ONLY'),
  );

  static const List<DirectVpcEgress> values = [
    vpcEgressAllTraffic,
    vpcEgressPrivateRangesOnly,
  ];
}

/// `service_config.vpc_connector_egress_settings` -- egress policy when
/// the function attaches via a Serverless VPC Access connector
/// ([Cloudfunctions2FunctionServiceConfig.vpcConnector]). Mutually exclusive in spirit with
/// [DirectVpcEgress] (which applies when using direct VPC egress).
extension type const VpcConnectorEgressSettings._(TfArg<String> _)
    implements TfArg<String> {
  VpcConnectorEgressSettings.variable(String name)
    : this._(TfArg.variable(name));
  VpcConnectorEgressSettings.expression(String template)
    : this._(TfArg.expression(template));
  const VpcConnectorEgressSettings.arg(TfArg<String> arg) : this._(arg);

  static const unspecified = VpcConnectorEgressSettings._(
    TfArgLiteral('VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED'),
  );
  static const privateRangesOnly = VpcConnectorEgressSettings._(
    TfArgLiteral('PRIVATE_RANGES_ONLY'),
  );
  static const allTraffic = VpcConnectorEgressSettings._(
    TfArgLiteral('ALL_TRAFFIC'),
  );

  static const List<VpcConnectorEgressSettings> values = [
    unspecified,
    privateRangesOnly,
    allTraffic,
  ];
}

/// Typed helper for the `build_config` block of
/// `google_cloudfunctions2_function` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionBuildConfig {
  const Cloudfunctions2FunctionBuildConfig({
    this.dockerRepository,
    this.entryPoint,
    this.environmentVariables,
    this.runtime,
    this.serviceAccount,
    this.workerPool,
    required this.updatePolicy,
    this.source,
  });

  final TfArg<String>? dockerRepository;

  final TfArg<String>? entryPoint;

  final TfArg<Map<String, String>>? environmentVariables;

  final TfArg<String>? runtime;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<String>? workerPool;

  final Cloudfunctions2FunctionUpdatePolicy updatePolicy;

  final Cloudfunctions2FunctionSource? source;

  Map<String, Object?> encode() => {
    'docker_repository': ?dockerRepository?.toTfJson(),
    'entry_point': ?entryPoint?.toTfJson(),
    'environment_variables': ?environmentVariables?.toTfJson(),
    'runtime': ?runtime?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('name').toTfJson(),
    'worker_pool': ?workerPool?.toTfJson(),
    ...updatePolicy.encode(),
    'source': ?source?.encode(),
  };
}

/// Exactly one of `automatic_update_policy`, `on_deploy_update_policy` on the `build_config` block of `google_cloudfunctions2_function`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.automaticUpdatePolicy(...)`.
sealed class Cloudfunctions2FunctionUpdatePolicy {
  const Cloudfunctions2FunctionUpdatePolicy();

  /// Sets `automatic_update_policy`.
  const factory Cloudfunctions2FunctionUpdatePolicy.automaticUpdatePolicy(
    Cloudfunctions2FunctionAutomaticUpdatePolicy automaticUpdatePolicy,
  ) = Cloudfunctions2FunctionAutomaticUpdatePolicyChoice;

  /// Sets `on_deploy_update_policy`.
  const factory Cloudfunctions2FunctionUpdatePolicy.onDeployUpdatePolicy(
    Cloudfunctions2FunctionOnDeployUpdatePolicy onDeployUpdatePolicy,
  ) = Cloudfunctions2FunctionOnDeployUpdatePolicyChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Cloudfunctions2FunctionUpdatePolicy.automaticUpdatePolicy] choice: sets `automatic_update_policy`.
final class Cloudfunctions2FunctionAutomaticUpdatePolicyChoice
    extends Cloudfunctions2FunctionUpdatePolicy {
  const Cloudfunctions2FunctionAutomaticUpdatePolicyChoice(
    this.automaticUpdatePolicy,
  );

  final Cloudfunctions2FunctionAutomaticUpdatePolicy automaticUpdatePolicy;

  @override
  String get blockKey => 'automatic_update_policy';

  @override
  Map<String, Object?> encode() => {
    'automatic_update_policy': automaticUpdatePolicy.encode(),
  };
}

/// The [Cloudfunctions2FunctionUpdatePolicy.onDeployUpdatePolicy] choice: sets `on_deploy_update_policy`.
final class Cloudfunctions2FunctionOnDeployUpdatePolicyChoice
    extends Cloudfunctions2FunctionUpdatePolicy {
  const Cloudfunctions2FunctionOnDeployUpdatePolicyChoice(
    this.onDeployUpdatePolicy,
  );

  final Cloudfunctions2FunctionOnDeployUpdatePolicy onDeployUpdatePolicy;

  @override
  String get blockKey => 'on_deploy_update_policy';

  @override
  Map<String, Object?> encode() => {
    'on_deploy_update_policy': onDeployUpdatePolicy.encode(),
  };
}

/// Typed helper for the `build_config.automatic_update_policy` block of
/// `google_cloudfunctions2_function` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionAutomaticUpdatePolicy {
  const Cloudfunctions2FunctionAutomaticUpdatePolicy();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `build_config.on_deploy_update_policy` block of
/// `google_cloudfunctions2_function` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionOnDeployUpdatePolicy {
  const Cloudfunctions2FunctionOnDeployUpdatePolicy();

  Map<String, Object?> encode() => {};
}

/// Exactly one of `storage_source`, `repo_source` on the `build_config.source` block of `google_cloudfunctions2_function`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.storageSource(...)`.
sealed class Cloudfunctions2FunctionSource {
  const Cloudfunctions2FunctionSource();

  /// Sets `storage_source`.
  const factory Cloudfunctions2FunctionSource.storageSource(
    Cloudfunctions2FunctionStorageSource storageSource,
  ) = Cloudfunctions2FunctionStorageSourceChoice;

  /// Sets `repo_source`.
  const factory Cloudfunctions2FunctionSource.repoSource(
    Cloudfunctions2FunctionRepoSource repoSource,
  ) = Cloudfunctions2FunctionRepoSourceChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Cloudfunctions2FunctionSource.storageSource] choice: sets `storage_source`.
final class Cloudfunctions2FunctionStorageSourceChoice
    extends Cloudfunctions2FunctionSource {
  const Cloudfunctions2FunctionStorageSourceChoice(this.storageSource);

  final Cloudfunctions2FunctionStorageSource storageSource;

  @override
  String get blockKey => 'storage_source';

  @override
  Map<String, Object?> encode() => {'storage_source': storageSource.encode()};
}

/// The [Cloudfunctions2FunctionSource.repoSource] choice: sets `repo_source`.
final class Cloudfunctions2FunctionRepoSourceChoice
    extends Cloudfunctions2FunctionSource {
  const Cloudfunctions2FunctionRepoSourceChoice(this.repoSource);

  final Cloudfunctions2FunctionRepoSource repoSource;

  @override
  String get blockKey => 'repo_source';

  @override
  Map<String, Object?> encode() => {'repo_source': repoSource.encode()};
}

/// Typed helper for the `build_config.source.repo_source` block of
/// `google_cloudfunctions2_function` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionRepoSource {
  const Cloudfunctions2FunctionRepoSource({
    required this.revision,
    this.dir,
    this.invertRegex,
    this.projectId,
    this.repoName,
  });

  final Cloudfunctions2FunctionRevision revision;

  final TfArg<String>? dir;

  final TfArg<bool>? invertRegex;

  final TfArg<String>? projectId;

  final TfArg<String>? repoName;

  Map<String, Object?> encode() => {
    ...revision.encode(),
    'dir': ?dir?.toTfJson(),
    'invert_regex': ?invertRegex?.toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'repo_name': ?repoName?.toTfJson(),
  };
}

/// Exactly one of `branch_name`, `tag_name`, `commit_sha` on the `build_config.source.repo_source` block of `google_cloudfunctions2_function`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.branchName(...)`.
sealed class Cloudfunctions2FunctionRevision {
  const Cloudfunctions2FunctionRevision();

  /// Sets `branch_name`.
  const factory Cloudfunctions2FunctionRevision.branchName(
    TfArg<String> branchName,
  ) = Cloudfunctions2FunctionRevisionBranchName;

  /// Sets `tag_name`.
  const factory Cloudfunctions2FunctionRevision.tagName(TfArg<String> tagName) =
      Cloudfunctions2FunctionRevisionTagName;

  /// Sets `commit_sha`.
  const factory Cloudfunctions2FunctionRevision.commitSha(
    TfArg<String> commitSha,
  ) = Cloudfunctions2FunctionRevisionCommitSha;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Cloudfunctions2FunctionRevision.branchName] choice: sets `branch_name`.
final class Cloudfunctions2FunctionRevisionBranchName
    extends Cloudfunctions2FunctionRevision {
  const Cloudfunctions2FunctionRevisionBranchName(this.branchName);

  final TfArg<String> branchName;

  @override
  String get blockKey => 'branch_name';

  @override
  Map<String, Object?> encode() => {'branch_name': branchName.toTfJson()};
}

/// The [Cloudfunctions2FunctionRevision.tagName] choice: sets `tag_name`.
final class Cloudfunctions2FunctionRevisionTagName
    extends Cloudfunctions2FunctionRevision {
  const Cloudfunctions2FunctionRevisionTagName(this.tagName);

  final TfArg<String> tagName;

  @override
  String get blockKey => 'tag_name';

  @override
  Map<String, Object?> encode() => {'tag_name': tagName.toTfJson()};
}

/// The [Cloudfunctions2FunctionRevision.commitSha] choice: sets `commit_sha`.
final class Cloudfunctions2FunctionRevisionCommitSha
    extends Cloudfunctions2FunctionRevision {
  const Cloudfunctions2FunctionRevisionCommitSha(this.commitSha);

  final TfArg<String> commitSha;

  @override
  String get blockKey => 'commit_sha';

  @override
  Map<String, Object?> encode() => {'commit_sha': commitSha.toTfJson()};
}

/// Typed helper for the `build_config.source.storage_source` block of
/// `google_cloudfunctions2_function` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionStorageSource {
  const Cloudfunctions2FunctionStorageSource({
    this.bucket,
    this.generation,
    this.object,
  });

  final RefTo<GoogleStorageBucket>? bucket;

  final TfArg<num>? generation;

  final RefTo<GoogleStorageBucketObject>? object;

  Map<String, Object?> encode() => {
    'bucket': ?bucket?.encodeAs('name').toTfJson(),
    'generation': ?generation?.toTfJson(),
    'object': ?object?.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `event_trigger` block of
/// `google_cloudfunctions2_function` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionEventTrigger {
  const Cloudfunctions2FunctionEventTrigger({
    required this.eventType,
    this.pubsubTopic,
    this.retryPolicy,
    this.serviceAccountEmail,
    this.triggerRegion,
    this.eventFilters,
  });

  final TfArg<String> eventType;

  final RefTo<GooglePubsubTopic>? pubsubTopic;

  final EventTriggerRetryPolicy? retryPolicy;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final TfArg<String>? triggerRegion;

  final List<Cloudfunctions2FunctionEventFilters>? eventFilters;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    'pubsub_topic': ?pubsubTopic?.encodeAs('id').toTfJson(),
    'retry_policy': ?retryPolicy?.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'trigger_region': ?triggerRegion?.toTfJson(),
    if (eventFilters != null)
      'event_filters': [for (final e in eventFilters!) e.encode()],
  };
}

/// Typed helper for the `event_trigger.event_filters` block of
/// `google_cloudfunctions2_function` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionEventFilters {
  const Cloudfunctions2FunctionEventFilters({
    required this.attribute,
    this.operator,
    required this.value,
  });

  final TfArg<String> attribute;

  final TfArg<String>? operator;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'attribute': attribute.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `service_config` block of
/// `google_cloudfunctions2_function` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionServiceConfig {
  const Cloudfunctions2FunctionServiceConfig({
    this.allTrafficOnLatestRevision,
    this.availableCpu,
    this.availableMemory,
    this.binaryAuthorizationPolicy,
    this.directVpcEgress,
    this.environmentVariables,
    this.ingressSettings,
    this.maxInstanceCount,
    this.maxInstanceRequestConcurrency,
    this.minInstanceCount,
    this.serviceAccountEmail,
    this.timeoutSeconds,
    this.connection,
    this.vpcConnectorEgressSettings,
    this.secretEnvironmentVariables,
    this.secretVolumes,
  });

  final TfArg<bool>? allTrafficOnLatestRevision;

  final TfArg<String>? availableCpu;

  final TfArg<String>? availableMemory;

  final TfArg<String>? binaryAuthorizationPolicy;

  final DirectVpcEgress? directVpcEgress;

  final TfArg<Map<String, String>>? environmentVariables;

  final IngressSettings? ingressSettings;

  final TfArg<num>? maxInstanceCount;

  final TfArg<num>? maxInstanceRequestConcurrency;

  final TfArg<num>? minInstanceCount;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final TfArg<num>? timeoutSeconds;

  final Cloudfunctions2FunctionConnection? connection;

  final VpcConnectorEgressSettings? vpcConnectorEgressSettings;

  final List<Cloudfunctions2FunctionSecretEnvironmentVariables>?
  secretEnvironmentVariables;

  final List<Cloudfunctions2FunctionSecretVolumes>? secretVolumes;

  Map<String, Object?> encode() => {
    'all_traffic_on_latest_revision': ?allTrafficOnLatestRevision?.toTfJson(),
    'available_cpu': ?availableCpu?.toTfJson(),
    'available_memory': ?availableMemory?.toTfJson(),
    'binary_authorization_policy': ?binaryAuthorizationPolicy?.toTfJson(),
    'direct_vpc_egress': ?directVpcEgress?.toTfJson(),
    'environment_variables': ?environmentVariables?.toTfJson(),
    'ingress_settings': ?ingressSettings?.toTfJson(),
    'max_instance_count': ?maxInstanceCount?.toTfJson(),
    'max_instance_request_concurrency': ?maxInstanceRequestConcurrency
        ?.toTfJson(),
    'min_instance_count': ?minInstanceCount?.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    ...?connection?.encode(),
    'vpc_connector_egress_settings': ?vpcConnectorEgressSettings?.toTfJson(),
    if (secretEnvironmentVariables != null)
      'secret_environment_variables': [
        for (final e in secretEnvironmentVariables!) e.encode(),
      ],
    if (secretVolumes != null)
      'secret_volumes': [for (final e in secretVolumes!) e.encode()],
  };
}

/// At most one of `vpc_connector`, `direct_vpc_network_interface` on the `service_config` block of `google_cloudfunctions2_function`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.vpcConnector(...)`.
sealed class Cloudfunctions2FunctionConnection {
  const Cloudfunctions2FunctionConnection();

  /// Sets `vpc_connector`.
  const factory Cloudfunctions2FunctionConnection.vpcConnector(
    TfArg<String> vpcConnector,
  ) = Cloudfunctions2FunctionConnectionVpcConnector;

  /// Sets `direct_vpc_network_interface`.
  const factory Cloudfunctions2FunctionConnection.directVpcNetworkInterface(
    List<Cloudfunctions2FunctionDirectVpcNetworkInterface>
    directVpcNetworkInterface,
  ) = Cloudfunctions2FunctionConnectionDirectVpcNetworkInterface;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Cloudfunctions2FunctionConnection.vpcConnector] choice: sets `vpc_connector`.
final class Cloudfunctions2FunctionConnectionVpcConnector
    extends Cloudfunctions2FunctionConnection {
  const Cloudfunctions2FunctionConnectionVpcConnector(this.vpcConnector);

  final TfArg<String> vpcConnector;

  @override
  String get blockKey => 'vpc_connector';

  @override
  Map<String, Object?> encode() => {'vpc_connector': vpcConnector.toTfJson()};
}

/// The [Cloudfunctions2FunctionConnection.directVpcNetworkInterface] choice: sets `direct_vpc_network_interface`.
final class Cloudfunctions2FunctionConnectionDirectVpcNetworkInterface
    extends Cloudfunctions2FunctionConnection {
  const Cloudfunctions2FunctionConnectionDirectVpcNetworkInterface(
    this.directVpcNetworkInterface,
  );

  final List<Cloudfunctions2FunctionDirectVpcNetworkInterface>
  directVpcNetworkInterface;

  @override
  String get blockKey => 'direct_vpc_network_interface';

  @override
  Map<String, Object?> encode() => {
    'direct_vpc_network_interface': [
      for (final e in directVpcNetworkInterface) e.encode(),
    ],
  };
}

/// Typed helper for the `service_config.direct_vpc_network_interface` block of
/// `google_cloudfunctions2_function` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionDirectVpcNetworkInterface {
  const Cloudfunctions2FunctionDirectVpcNetworkInterface({
    this.network,
    this.subnetwork,
    this.tags,
  });

  final RefTo<GoogleComputeNetwork>? network;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<List<String>>? tags;

  Map<String, Object?> encode() => {
    'network': ?network?.encodeAs('name').toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('name').toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// Typed helper for the `service_config.secret_environment_variables` block of
/// `google_cloudfunctions2_function` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionSecretEnvironmentVariables {
  const Cloudfunctions2FunctionSecretEnvironmentVariables({
    required this.key,
    required this.projectId,
    required this.secret,
    required this.version,
  });

  final TfArg<String> key;

  final TfArg<String> projectId;

  final TfArg<String> secret;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'project_id': projectId.toTfJson(),
    'secret': secret.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `service_config.secret_volumes` block of
/// `google_cloudfunctions2_function` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionSecretVolumes {
  const Cloudfunctions2FunctionSecretVolumes({
    required this.mountPath,
    required this.projectId,
    required this.secret,
    this.versions,
  });

  final TfArg<String> mountPath;

  final TfArg<String> projectId;

  final TfArg<String> secret;

  final List<Cloudfunctions2FunctionVersions>? versions;

  Map<String, Object?> encode() => {
    'mount_path': mountPath.toTfJson(),
    'project_id': projectId.toTfJson(),
    'secret': secret.toTfJson(),
    if (versions != null) 'versions': [for (final e in versions!) e.encode()],
  };
}

/// Typed helper for the `service_config.secret_volumes.versions` block of
/// `google_cloudfunctions2_function` (derived from provider schema).
@immutable
final class Cloudfunctions2FunctionVersions {
  const Cloudfunctions2FunctionVersions({
    required this.path,
    required this.version,
  });

  final TfArg<String> path;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Factory wrapper for `google_cloudfunctions2_function`.
///
/// A Cloud Function that contains user computation executed in response to an
/// event.
///
/// Cloud Functions Gen 2 function. Gen 2 runs on Cloud Run + Eventarc +
/// Cloud Build; this resource owns the build step (source archive + runtime),
/// the runtime service config (memory / CPU / scaling), and optionally an
/// event-trigger binding.
///
/// Example (HTTP-triggered Python function backed by a GCS source archive):
/// ```dart
/// final fn = GoogleCloudfunctions2Function(
///   'http_fn',
///   name: .literal('hello-http'),
///   location: .literal('asia-northeast1'),
///   buildConfig: Cloudfunctions2FunctionBuildConfig(
///     runtime: .literal('python311'),
///     entryPoint: .literal('hello'),
///     source: .storageSource(
///       .new(
///         bucket: .of(bucket),
///         object: .literal('hello-http.zip'),
///       ),
///     ),
///     updatePolicy: .automaticUpdatePolicy(
///       .new(),
///     ),
///   ),
///   serviceConfig: Cloudfunctions2FunctionServiceConfig(
///     availableMemory: .literal('256M'),
///     timeoutSeconds: .literal(60),
///     ingressSettings: .allowAll,
///   ),
/// );
/// ```
///
/// Example (Pub/Sub event-triggered function):
/// ```dart
/// final fn = GoogleCloudfunctions2Function(
///   'sub_fn',
///   name: .literal('order-handler'),
///   location: .literal('asia-northeast1'),
///   buildConfig: Cloudfunctions2FunctionBuildConfig(
///     runtime: .literal('python311'),
///     entryPoint: .literal('handle'),
///     source: .storageSource(
///       .new(
///         bucket: .of(bucket),
///         object: .literal('order-handler.zip'),
///       ),
///     ),
///     updatePolicy: .automaticUpdatePolicy(
///       .new(),
///     ),
///   ),
///   eventTrigger: Cloudfunctions2FunctionEventTrigger(
///     eventType: .literal('google.cloud.pubsub.topic.v1.messagePublished'),
///     pubsubTopic: .of(orders),
///     retryPolicy: .retry,
///   ),
/// );
/// ```
final class GoogleCloudfunctions2Function extends Resource {
  static const String tfType = 'google_cloudfunctions2_function';

  GoogleCloudfunctions2Function(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<String>? description,
    Cloudfunctions2FunctionBuildConfig? buildConfig,
    Cloudfunctions2FunctionServiceConfig? serviceConfig,
    Cloudfunctions2FunctionEventTrigger? eventTrigger,
    TfArg<Map<String, String>>? labels,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'description': ?description,
           if (buildConfig != null)
             'build_config': TfArg.literal(buildConfig.encode()),
           if (serviceConfig != null)
             'service_config': TfArg.literal(serviceConfig.encode()),
           if (eventTrigger != null)
             'event_trigger': TfArg.literal(eventTrigger.encode()),
           'labels': ?labels,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudfunctions2FunctionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudfunctions2Function>`.
  RefTo<GoogleCloudfunctions2Function> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `environment` attribute.
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
