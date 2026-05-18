// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudfunctions2_function`.
const Set<String> _googleCloudfunctions2FunctionSensitive = <String>{};

// ===========================================================================
// Enums (sourced from schema "Possible values" prose)
// ===========================================================================

/// `event_trigger.retry_policy` -- behaviour when the user code raises.
/// `retry` re-delivers per the system retry budget; `doNotRetry` drops on
/// first failure; `unspecified` defers to the server default (currently
/// `doNotRetry`).
enum EventTriggerRetryPolicy {
  unspecified('RETRY_POLICY_UNSPECIFIED'),
  doNotRetry('RETRY_POLICY_DO_NOT_RETRY'),
  retry('RETRY_POLICY_RETRY');

  const EventTriggerRetryPolicy(this.terraformValue);
  final String terraformValue;
}

/// `service_config.ingress_settings` -- which traffic sources can invoke
/// the underlying Cloud Run service. Defaults server-side to `allowAll`.
enum IngressSettings {
  allowAll('ALLOW_ALL'),
  allowInternalOnly('ALLOW_INTERNAL_ONLY'),
  allowInternalAndGclb('ALLOW_INTERNAL_AND_GCLB');

  const IngressSettings(this.terraformValue);
  final String terraformValue;
}

/// `service_config.direct_vpc_egress` -- egress policy for direct VPC
/// network interfaces. Server default is `vpcEgressPrivateRangesOnly`.
enum DirectVpcEgress {
  vpcEgressAllTraffic('VPC_EGRESS_ALL_TRAFFIC'),
  vpcEgressPrivateRangesOnly('VPC_EGRESS_PRIVATE_RANGES_ONLY');

  const DirectVpcEgress(this.terraformValue);
  final String terraformValue;
}

/// `service_config.vpc_connector_egress_settings` -- egress policy when
/// the function attaches via a Serverless VPC Access connector
/// ([ServiceConfig.vpcConnector]). Mutually exclusive in spirit with
/// [DirectVpcEgress] (which applies when using direct VPC egress).
enum VpcConnectorEgressSettings {
  unspecified('VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED'),
  privateRangesOnly('PRIVATE_RANGES_ONLY'),
  allTraffic('ALL_TRAFFIC');

  const VpcConnectorEgressSettings(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// build_config + nested helpers
// ===========================================================================

/// `build_config` block (single, max_items=1). Carries the runtime
/// declaration and source-archive reference for the Cloud Build step that
/// produces the function's container image.
@immutable
class BuildConfig {
  const BuildConfig({
    this.runtime,
    this.entryPoint,
    this.source,
    this.environmentVariables,
    this.serviceAccount,
    this.dockerRepository,
    this.workerPool,
    this.updatePolicy,
  });

  /// Runtime identifier, e.g. `'python311'`, `'nodejs20'`, `'go122'`. The
  /// schema marks this optional (updates can omit it) but creating a new
  /// function effectively requires it.
  final TfArg<String>? runtime;

  /// Entry point function name in the source code. Defaults to the
  /// resource name suffix if unset.
  final TfArg<String>? entryPoint;

  /// Source archive reference. Pick exactly one of [StorageSource] (GCS
  /// object) or [RepoSource] (Cloud Source Repositories ref).
  final SourceConfig? source;

  /// Build-time environment variables (available to the build script, NOT
  /// to the runtime — use [ServiceConfig.environmentVariables] for that).
  final TfArg<Map<String, String>>? environmentVariables;

  /// Service account email Cloud Build runs as. Defaults to the project
  /// Cloud Build SA.
  final TfArg<String>? serviceAccount;

  /// User-managed Artifact Registry repository for the built image. When
  /// unset, GCP uses the per-project default repo.
  final TfArg<String>? dockerRepository;

  /// Cloud Build Custom Worker Pool resource path. Required when the build
  /// must run inside a VPC perimeter.
  final TfArg<String>? workerPool;

  /// Runtime update policy. Pick [AutomaticUpdatePolicy] (the default --
  /// pull patch-level runtime updates on every deploy) or
  /// [OnDeployUpdatePolicy] (pin the runtime version at deploy time).
  final UpdatePolicy? updatePolicy;

  Map<String, Object?> encode() => {
        if (runtime != null) 'runtime': runtime!.toTfJson(),
        if (entryPoint != null) 'entry_point': entryPoint!.toTfJson(),
        if (source != null) 'source': [source!.encode()],
        if (environmentVariables != null)
          'environment_variables': environmentVariables!.toTfJson(),
        if (serviceAccount != null)
          'service_account': serviceAccount!.toTfJson(),
        if (dockerRepository != null)
          'docker_repository': dockerRepository!.toTfJson(),
        if (workerPool != null) 'worker_pool': workerPool!.toTfJson(),
        if (updatePolicy != null) ...updatePolicy!.encode(),
      };
}

/// Sealed dispatch for [BuildConfig.source]. Models the
/// `storage_source` / `repo_source` exactly_one_of constraint at the type
/// level: each [SourceConfig] subclass encodes its own Terraform key.
sealed class SourceConfig {
  const SourceConfig();

  /// Returns the JSON fragment to merge into the `source` block.
  Map<String, Object?> encode();
}

/// GCS-backed source archive (`build_config.source.storage_source`). The
/// archive must be a single zip/tar.gz at `gs://{bucket}/{object}`.
@immutable
final class StorageSource extends SourceConfig {
  const StorageSource({
    required this.bucket,
    required this.object,
    this.generation,
  });

  /// GCS bucket name (no `gs://` prefix).
  final TfArg<String> bucket;

  /// GCS object key (path within the bucket).
  final TfArg<String> object;

  /// Object generation. Pin to a specific generation for deterministic
  /// deploys; omit for "use latest".
  final TfArg<int>? generation;

  @override
  Map<String, Object?> encode() => {
        'storage_source': [
          {
            'bucket': bucket.toTfJson(),
            'object': object.toTfJson(),
            if (generation != null) 'generation': generation!.toTfJson(),
          },
        ],
      };
}

/// Cloud Source Repositories-backed source
/// (`build_config.source.repo_source`). Specify one of [branchName],
/// [tagName], or [commitSha] (the schema does not enforce this but the
/// API requires exactly one).
@immutable
final class RepoSource extends SourceConfig {
  const RepoSource({
    required this.repoName,
    this.projectId,
    this.dir,
    this.branchName,
    this.tagName,
    this.commitSha,
    this.invertRegex,
  });

  /// Cloud Source Repository name.
  final TfArg<String> repoName;

  /// Project owning the repo. Defaults to the requesting project.
  final TfArg<String>? projectId;

  /// Sub-directory inside the repo to build from.
  final TfArg<String>? dir;

  /// Branch regex.
  final TfArg<String>? branchName;

  /// Tag regex.
  final TfArg<String>? tagName;

  /// Specific commit SHA.
  final TfArg<String>? commitSha;

  /// When true, build only when the revision regex does NOT match.
  final TfArg<bool>? invertRegex;

  @override
  Map<String, Object?> encode() => {
        'repo_source': [
          {
            'repo_name': repoName.toTfJson(),
            if (projectId != null) 'project_id': projectId!.toTfJson(),
            if (dir != null) 'dir': dir!.toTfJson(),
            if (branchName != null) 'branch_name': branchName!.toTfJson(),
            if (tagName != null) 'tag_name': tagName!.toTfJson(),
            if (commitSha != null) 'commit_sha': commitSha!.toTfJson(),
            if (invertRegex != null) 'invert_regex': invertRegex!.toTfJson(),
          },
        ],
      };
}

/// Sealed dispatch for [BuildConfig.updatePolicy]. The schema exposes two
/// mutually exclusive sub-blocks (`automatic_update_policy` --
/// pull patch-level updates on every deploy, vs. `on_deploy_update_policy`
/// -- pin runtime version at deploy time).
sealed class UpdatePolicy {
  const UpdatePolicy();

  /// Returns the JSON fragment to merge into [BuildConfig.encode].
  Map<String, Object?> encode();
}

/// `automatic_update_policy` sub-block. Cloud Functions pulls the latest
/// patch-level runtime release on every deploy. No tunable fields.
@immutable
final class AutomaticUpdatePolicy extends UpdatePolicy {
  const AutomaticUpdatePolicy();

  @override
  Map<String, Object?> encode() => {
        'automatic_update_policy': [<String, Object?>{}],
      };
}

/// `on_deploy_update_policy` sub-block. Pin the runtime version observed
/// at deploy time -- patch-level updates are NOT pulled in on subsequent
/// reconciles. No tunable fields on input; the server populates
/// `runtime_version` on read.
@immutable
final class OnDeployUpdatePolicy extends UpdatePolicy {
  const OnDeployUpdatePolicy();

  @override
  Map<String, Object?> encode() => {
        'on_deploy_update_policy': [<String, Object?>{}],
      };
}

// ===========================================================================
// event_trigger + nested helpers
// ===========================================================================

/// `event_trigger` block (single, max_items=1). Binds the function to an
/// Eventarc trigger. Use [pubsubTopic] for Pub/Sub events, or
/// [eventFilters] to subscribe to GCS / Firestore / Eventarc system events.
@immutable
class EventTrigger {
  const EventTrigger({
    required this.eventType,
    this.pubsubTopic,
    this.serviceAccountEmail,
    this.retryPolicy,
    this.triggerRegion,
    this.eventFilters,
  });

  /// CloudEvents `type` attribute the trigger listens for. Examples:
  /// `'google.cloud.pubsub.topic.v1.messagePublished'`,
  /// `'google.cloud.storage.object.v1.finalized'`,
  /// `'google.cloud.firestore.document.v1.created'`.
  final TfArg<String> eventType;

  /// Pub/Sub topic resource path (`projects/{p}/topics/{t}`). Required
  /// when [eventType] is a Pub/Sub event.
  final TfArg<String>? pubsubTopic;

  /// Eventarc trigger service account. Must have permission to invoke the
  /// underlying Cloud Run service.
  final TfArg<String>? serviceAccountEmail;

  /// Retry behaviour when the function returns an error.
  final TfArg<EventTriggerRetryPolicy>? retryPolicy;

  /// Region the Eventarc trigger lives in. Defaults to the function
  /// location; required for global-only event sources.
  final TfArg<String>? triggerRegion;

  /// CloudEvents attribute filters (e.g. GCS bucket name match,
  /// Firestore document path match).
  final List<EventFilter>? eventFilters;

  Map<String, Object?> encode() => {
        'event_type': eventType.toTfJson(),
        if (pubsubTopic != null) 'pubsub_topic': pubsubTopic!.toTfJson(),
        if (serviceAccountEmail != null)
          'service_account_email': serviceAccountEmail!.toTfJson(),
        if (retryPolicy != null) 'retry_policy': retryPolicy!.toTfJson(),
        if (triggerRegion != null) 'trigger_region': triggerRegion!.toTfJson(),
        if (eventFilters != null)
          'event_filters': eventFilters!.map((f) => f.encode()).toList(),
      };
}

/// One entry in `event_trigger.event_filters`. Matches a CloudEvents
/// attribute against a literal [value] (or, when [operator] is
/// `'match-path-pattern'`, a path pattern).
@immutable
class EventFilter {
  const EventFilter({
    required this.attribute,
    required this.value,
    this.operator,
  });

  /// CloudEvents attribute name (e.g. `'bucket'`, `'document'`).
  final TfArg<String> attribute;

  /// Literal value or path pattern.
  final TfArg<String> value;

  /// Match operator. Omit for exact match; set to
  /// `'match-path-pattern'` for wildcard matching.
  final TfArg<String>? operator;

  Map<String, Object?> encode() => {
        'attribute': attribute.toTfJson(),
        'value': value.toTfJson(),
        if (operator != null) 'operator': operator!.toTfJson(),
      };
}

// ===========================================================================
// service_config + nested helpers
// ===========================================================================

/// `service_config` block (single, max_items=1). Configures the underlying
/// Cloud Run service: memory, CPU, scaling, environment, VPC egress,
/// secret refs.
@immutable
class ServiceConfig {
  const ServiceConfig({
    this.availableMemory,
    this.availableCpu,
    this.timeoutSeconds,
    this.minInstanceCount,
    this.maxInstanceCount,
    this.maxInstanceRequestConcurrency,
    this.environmentVariables,
    this.serviceAccountEmail,
    this.ingressSettings,
    this.allTrafficOnLatestRevision,
    this.vpcConnector,
    this.vpcConnectorEgressSettings,
    this.directVpcEgress,
    this.binaryAuthorizationPolicy,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.directVpcNetworkInterfaces,
  });

  /// Memory limit. Accepts the schema's Kubernetes-Quantity form
  /// (`'256M'`, `'1Gi'`). Defaults to `'256M'`.
  final TfArg<String>? availableMemory;

  /// CPU limit. Accepts the Cloud Run-style scalar (`'1'`, `'2'`, ...).
  /// Server picks a default proportional to [availableMemory] when null.
  final TfArg<String>? availableCpu;

  /// Per-request timeout in seconds. Defaults to 60.
  final TfArg<int>? timeoutSeconds;

  /// Floor on serving instances. Defaults to 0 (cold starts allowed).
  final TfArg<int>? minInstanceCount;

  /// Ceiling on serving instances.
  final TfArg<int>? maxInstanceCount;

  /// Maximum concurrent requests per instance. Defaults to 1.
  final TfArg<int>? maxInstanceRequestConcurrency;

  /// Runtime environment variables (visible to the function code, NOT to
  /// the build step -- use [BuildConfig.environmentVariables] for that).
  final TfArg<Map<String, String>>? environmentVariables;

  /// Runtime service account email. Defaults to the project default
  /// compute SA.
  final TfArg<String>? serviceAccountEmail;

  /// Which traffic sources can invoke the function.
  final TfArg<IngressSettings>? ingressSettings;

  /// When true (default), 100% of traffic targets the latest revision.
  final TfArg<bool>? allTrafficOnLatestRevision;

  /// Serverless VPC Access connector path. Mutually exclusive (at the
  /// provider level) with [directVpcNetworkInterfaces].
  final TfArg<String>? vpcConnector;

  /// Egress policy when [vpcConnector] is set.
  final TfArg<VpcConnectorEgressSettings>? vpcConnectorEgressSettings;

  /// Egress policy when [directVpcNetworkInterfaces] is set.
  final TfArg<DirectVpcEgress>? directVpcEgress;

  /// Binary Authorization policy resource name. Enforces image admission
  /// on every deploy.
  final TfArg<String>? binaryAuthorizationPolicy;

  /// Secret-Manager backed environment variables.
  final List<SecretEnvironmentVariable>? secretEnvironmentVariables;

  /// Secret-Manager backed file mounts.
  final List<SecretVolume>? secretVolumes;

  /// Direct VPC network interfaces. Mutually exclusive (at the provider
  /// level) with [vpcConnector].
  final List<DirectVpcNetworkInterface>? directVpcNetworkInterfaces;

  Map<String, Object?> encode() => {
        if (availableMemory != null)
          'available_memory': availableMemory!.toTfJson(),
        if (availableCpu != null) 'available_cpu': availableCpu!.toTfJson(),
        if (timeoutSeconds != null)
          'timeout_seconds': timeoutSeconds!.toTfJson(),
        if (minInstanceCount != null)
          'min_instance_count': minInstanceCount!.toTfJson(),
        if (maxInstanceCount != null)
          'max_instance_count': maxInstanceCount!.toTfJson(),
        if (maxInstanceRequestConcurrency != null)
          'max_instance_request_concurrency':
              maxInstanceRequestConcurrency!.toTfJson(),
        if (environmentVariables != null)
          'environment_variables': environmentVariables!.toTfJson(),
        if (serviceAccountEmail != null)
          'service_account_email': serviceAccountEmail!.toTfJson(),
        if (ingressSettings != null)
          'ingress_settings': ingressSettings!.toTfJson(),
        if (allTrafficOnLatestRevision != null)
          'all_traffic_on_latest_revision':
              allTrafficOnLatestRevision!.toTfJson(),
        if (vpcConnector != null) 'vpc_connector': vpcConnector!.toTfJson(),
        if (vpcConnectorEgressSettings != null)
          'vpc_connector_egress_settings':
              vpcConnectorEgressSettings!.toTfJson(),
        if (directVpcEgress != null)
          'direct_vpc_egress': directVpcEgress!.toTfJson(),
        if (binaryAuthorizationPolicy != null)
          'binary_authorization_policy': binaryAuthorizationPolicy!.toTfJson(),
        if (secretEnvironmentVariables != null)
          'secret_environment_variables':
              secretEnvironmentVariables!.map((s) => s.encode()).toList(),
        if (secretVolumes != null)
          'secret_volumes': secretVolumes!.map((s) => s.encode()).toList(),
        if (directVpcNetworkInterfaces != null)
          'direct_vpc_network_interface':
              directVpcNetworkInterfaces!.map((n) => n.encode()).toList(),
      };
}

/// One entry in `service_config.secret_environment_variables`. Each
/// reference materializes as an env var whose value is the secret payload
/// at runtime.
@immutable
class SecretEnvironmentVariable {
  const SecretEnvironmentVariable({
    required this.key,
    required this.projectId,
    required this.secret,
    required this.version,
  });

  /// Environment variable name (C_IDENTIFIER).
  final TfArg<String> key;

  /// Project containing the secret (project number or ID).
  final TfArg<String> projectId;

  /// Secret name in Secret Manager (short form, not full resource path).
  final TfArg<String> secret;

  /// Version (`'latest'` or numeric). Prefer numeric versions: rotation
  /// requires a redeploy to pick up a new `'latest'`.
  final TfArg<String> version;

  Map<String, Object?> encode() => {
        'key': key.toTfJson(),
        'project_id': projectId.toTfJson(),
        'secret': secret.toTfJson(),
        'version': version.toTfJson(),
      };
}

/// One entry in `service_config.secret_volumes`. Mounts one or more
/// secret versions as files under [mountPath].
@immutable
class SecretVolume {
  const SecretVolume({
    required this.mountPath,
    required this.projectId,
    required this.secret,
    this.versions,
  });

  /// Mount path inside the container (e.g. `'/etc/secrets'`).
  final TfArg<String> mountPath;

  /// Project containing the secret.
  final TfArg<String> projectId;

  /// Secret name (short form).
  final TfArg<String> secret;

  /// Per-version file mappings. When null, the secret's `'latest'`
  /// version is mounted at `{mountPath}/{secret}`.
  final List<SecretVolumeVersion>? versions;

  Map<String, Object?> encode() => {
        'mount_path': mountPath.toTfJson(),
        'project_id': projectId.toTfJson(),
        'secret': secret.toTfJson(),
        if (versions != null)
          'versions': versions!.map((v) => v.encode()).toList(),
      };
}

/// One entry in `secret_volumes.versions`. Maps a specific secret version
/// to a relative path under the volume mount.
@immutable
class SecretVolumeVersion {
  const SecretVolumeVersion({required this.path, required this.version});

  /// Relative path within the volume.
  final TfArg<String> path;

  /// Secret version (`'latest'` or numeric).
  final TfArg<String> version;

  Map<String, Object?> encode() => {
        'path': path.toTfJson(),
        'version': version.toTfJson(),
      };
}

/// One entry in `service_config.direct_vpc_network_interface`. Attaches
/// the function instance to a VPC network without going through a
/// Serverless VPC Access connector.
@immutable
class DirectVpcNetworkInterface {
  const DirectVpcNetworkInterface({this.network, this.subnetwork, this.tags});

  /// VPC network self-link or short name.
  final TfArg<String>? network;

  /// VPC subnetwork self-link or short name.
  final TfArg<String>? subnetwork;

  /// Network tags applied to this Cloud Function.
  final TfArg<List<String>>? tags;

  Map<String, Object?> encode() => {
        if (network != null) 'network': network!.toTfJson(),
        if (subnetwork != null) 'subnetwork': subnetwork!.toTfJson(),
        if (tags != null) 'tags': tags!.toTfJson(),
      };
}

/// Factory wrapper for `google_cloudfunctions2_function` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_cloudfunctions2_function.`).
/// - `name`: function name. Must be unique within the project + location.
/// - `location`: GCP region (e.g. `'asia-northeast1'`).
///
/// At least one of [buildConfig] / [eventTrigger] / [serviceConfig] is
/// usually set; an empty function is a valid (no-op) resource so none are
/// marked required at the type level.
///
/// Example (HTTP-triggered Python function backed by a GCS source archive):
/// ```dart
/// final fn = GoogleCloudfunctions2Function(
///   localName: 'http_fn',
///   name: TfArg.literal('hello-http'),
///   location: TfArg.literal('asia-northeast1'),
///   buildConfig: BuildConfig(
///     runtime: TfArg.literal('python311'),
///     entryPoint: TfArg.literal('hello'),
///     source: StorageSource(
///       bucket: TfArg.literal('my-source-bucket'),
///       object: TfArg.literal('hello-http.zip'),
///     ),
///   ),
///   serviceConfig: ServiceConfig(
///     availableMemory: TfArg.literal('256M'),
///     timeoutSeconds: TfArg.literal(60),
///     ingressSettings: TfArg.literal(IngressSettings.allowAll),
///   ),
/// );
/// ```
///
/// Example (Pub/Sub event-triggered function):
/// ```dart
/// final fn = GoogleCloudfunctions2Function(
///   localName: 'sub_fn',
///   name: TfArg.literal('order-handler'),
///   location: TfArg.literal('asia-northeast1'),
///   buildConfig: BuildConfig(
///     runtime: TfArg.literal('python311'),
///     entryPoint: TfArg.literal('handle'),
///     source: StorageSource(
///       bucket: TfArg.literal('my-source-bucket'),
///       object: TfArg.literal('order-handler.zip'),
///     ),
///   ),
///   eventTrigger: EventTrigger(
///     eventType: TfArg.literal('google.cloud.pubsub.topic.v1.messagePublished'),
///     pubsubTopic: TfArg.literal('projects/p/topics/orders'),
///     retryPolicy: TfArg.literal(EventTriggerRetryPolicy.retry),
///   ),
/// );
/// ```
///
/// Manages a Cloud Functions Gen 2 function. Gen 2 functions run on top of
/// Cloud Run + Eventarc + Cloud Build under the hood; this resource is the
/// single source of truth for the build step (source archive + runtime),
/// the runtime service config (memory / CPU / scaling), and (optionally)
/// the event-trigger binding.
final class GoogleCloudfunctions2Function extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_cloudfunctions2_function';

  GoogleCloudfunctions2Function({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<String>? description,
    BuildConfig? buildConfig,
    ServiceConfig? serviceConfig,
    EventTrigger? eventTrigger,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? kmsKeyName,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            'location': location,
            if (description != null) 'description': description,
            if (buildConfig != null)
              'build_config': TfArg.literal([buildConfig.encode()]),
            if (serviceConfig != null)
              'service_config': TfArg.literal([serviceConfig.encode()]),
            if (eventTrigger != null)
              'event_trigger': TfArg.literal([eventTrigger.encode()]),
            if (labels != null) 'labels': labels,
            if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleCloudfunctions2FunctionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/locations/{location}/functions/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `url` attribute -- the public HTTPS URL of the deployed
  /// function (populated only for HTTP-triggered functions).
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `state` attribute. One of `ACTIVE`, `FAILED`, `DEPLOYING`,
  /// `DELETING`, `UNKNOWN`.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `environment` attribute. Always `'GEN_2'` for resources
  /// emitted by this wrapper (Gen 1 has its own resource type).
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `update_time` attribute (RFC3339 timestamp of the last
  /// deployment).
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
