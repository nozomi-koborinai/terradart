// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_eventarc_trigger`.
const Set<String> _googleEventarcTriggerSensitive = <String>{};

// ===========================================================================
// matching_criteria[] block (set, min_items=1)
// ===========================================================================

/// One `matching_criteria` entry. The full list of entries is AND-ed --
/// only events matching every filter are delivered. The schema models
/// this as a `set` of blocks; the wrapper still accepts a
/// `List<EventarcTriggerMatchingCriteria>` -- duplicates are deduped by
/// the Terraform engine on apply.
///
/// Every trigger MUST include a filter on the CloudEvents `'type'`
/// attribute (e.g. `'google.cloud.storage.object.v1.finalized'`,
/// `'google.cloud.audit.log.v1.written'`,
/// `'google.cloud.pubsub.topic.v1.messagePublished'`). Additional filters
/// narrow the match (e.g. `attribute: 'bucket'` for Storage events,
/// `attribute: 'methodName'` for Audit Log events).
///
/// The [operator] field is currently free-form per the schema; the only
/// API-accepted value is the literal `'match-path-pattern'`, which
/// enables glob-style matching on [value] (e.g.
/// `'projects/_/buckets/my-bucket/objects/uploads/*'`). Omit [operator]
/// for exact-match semantics.
@immutable
class EventarcTriggerMatchingCriteria {
  const EventarcTriggerMatchingCriteria({
    required this.attribute,
    required this.value,
    this.operator,
  });

  /// CloudEvents attribute name to match. Required.
  final String attribute;

  /// Value the attribute must equal (or glob-match when [operator] is
  /// `'match-path-pattern'`). Required.
  final String value;

  /// Optional matching operator. The only API-accepted value today is
  /// `'match-path-pattern'`; omit for exact-match semantics.
  final String? operator;

  Map<String, Object?> toArgMap() => {
    'attribute': attribute,
    'value': value,
    if (operator != null) 'operator': operator,
  };
}

// ===========================================================================
// destination block (required, max_items=1, mutually-exclusive sub-targets)
// ===========================================================================

/// `destination` block. Selects the workload that receives matched
/// CloudEvents. Exactly ONE of [cloudRunService] / [cloudFunction] /
/// [workflow] / [httpEndpoint] / [gke] must be set -- they are
/// mutually exclusive at the GCP API level and the provider validates
/// this before plan/apply.
///
/// Notes per target:
/// - [cloudRunService]: Cloud Run fully-managed service in the SAME
///   project as the trigger.
/// - [cloudFunction]: fully-qualified Cloud Functions Gen 2 resource
///   name (`projects/{p}/locations/{l}/functions/{f}`). The schema
///   marks this attribute read-only (`computed: true`) -- Cloud
///   Functions Gen 2 triggers are typically created from the Cloud
///   Functions side, which then populates this field. Setting it
///   directly will be rejected by the API; surfaced here so consumers
///   can observe / forward the value when reading back state.
/// - [workflow]: fully-qualified Workflows resource name
///   (`projects/{p}/locations/{l}/workflows/{w}`). The Workflow MUST
///   live in the same project as the trigger.
/// - [httpEndpoint]: arbitrary HTTP/HTTPS endpoint reachable from the
///   VPC declared in [networkConfig]. Requires [networkConfig] to be
///   set (the API rejects an [httpEndpoint] destination without one).
/// - [gke]: GKE service running in the same project as the trigger.
///
/// [networkConfig] applies only with an [httpEndpoint] destination.
/// Setting it with any other target is a provider-level validation
/// error.
@immutable
class EventarcTriggerDestination {
  const EventarcTriggerDestination({
    this.cloudRunService,
    this.cloudFunction,
    this.workflow,
    this.httpEndpoint,
    this.gke,
    this.networkConfig,
  });

  /// Cloud Run fully-managed service target.
  final EventarcTriggerCloudRunService? cloudRunService;

  /// Fully-qualified Cloud Functions Gen 2 resource name
  /// (`projects/{p}/locations/{l}/functions/{f}`). Read-only per the
  /// schema; typically populated by the Cloud Functions side.
  final TfArg<String>? cloudFunction;

  /// Fully-qualified Workflows resource name
  /// (`projects/{p}/locations/{l}/workflows/{w}`).
  final TfArg<String>? workflow;

  /// HTTP endpoint target. Requires [networkConfig] to be set.
  final EventarcTriggerHttpEndpoint? httpEndpoint;

  /// GKE service target.
  final EventarcTriggerGkeService? gke;

  /// VPC network configuration for resolving / reaching the
  /// destination. Required when [httpEndpoint] is set; rejected for
  /// every other destination type.
  final EventarcTriggerNetworkConfig? networkConfig;

  Map<String, Object?> toArgMap() => {
    if (cloudRunService != null)
      'cloud_run_service': [cloudRunService!.toArgMap()],
    if (cloudFunction != null) 'cloud_function': cloudFunction!.toTfJson(),
    if (workflow != null) 'workflow': workflow!.toTfJson(),
    if (httpEndpoint != null) 'http_endpoint': [httpEndpoint!.toArgMap()],
    if (gke != null) 'gke': [gke!.toArgMap()],
    if (networkConfig != null) 'network_config': [networkConfig!.toArgMap()],
  };
}

/// `destination.cloud_run_service` block.
@immutable
class EventarcTriggerCloudRunService {
  const EventarcTriggerCloudRunService({
    required this.service,
    this.region,
    this.path,
  });

  /// Cloud Run service name (NOT a self-link). Only services located in
  /// the same project as the trigger can be addressed.
  final TfArg<String> service;

  /// Region the Cloud Run service is deployed in. Defaults to the
  /// trigger's `location` when omitted.
  final TfArg<String>? region;

  /// Optional URL path segment appended to the service URL when
  /// dispatching events (e.g. `'/route'`, `'route/subroute'`). Must
  /// conform to RFC2396 section 3.3.
  final TfArg<String>? path;

  Map<String, Object?> toArgMap() => {
    'service': service.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
  };
}

/// `destination.http_endpoint` block. Only HTTP and HTTPS protocols are
/// supported. The host can be either a static IP reachable from the VPC
/// declared in [EventarcTriggerDestination.networkConfig], or an internal
/// DNS hostname resolvable via Cloud DNS.
@immutable
class EventarcTriggerHttpEndpoint {
  const EventarcTriggerHttpEndpoint({required this.uri});

  /// Endpoint URI (RFC2396). Examples: `'http://10.10.10.8:80/route'`,
  /// `'http://svc.us-central1.p.local:8080/'`.
  final TfArg<String> uri;

  Map<String, Object?> toArgMap() => {'uri': uri.toTfJson()};
}

/// `destination.gke` block. GKE service in the same project as the
/// trigger.
@immutable
class EventarcTriggerGkeService {
  const EventarcTriggerGkeService({
    required this.cluster,
    required this.location,
    required this.namespace,
    required this.service,
    this.path,
  });

  /// GKE cluster name (NOT a self-link). The cluster must live in the
  /// same project as the trigger.
  final TfArg<String> cluster;

  /// Compute zone (zonal clusters, e.g. `'us-central1-a'`) or region
  /// (regional clusters, e.g. `'us-central1'`) in which the cluster
  /// resides.
  final TfArg<String> location;

  /// Kubernetes namespace the service runs in.
  final TfArg<String> namespace;

  /// Kubernetes Service name within [namespace].
  final TfArg<String> service;

  /// Optional URL path segment (RFC2396 section 3.3). Examples:
  /// `'/route'`, `'route/subroute'`.
  final TfArg<String>? path;

  Map<String, Object?> toArgMap() => {
    'cluster': cluster.toTfJson(),
    'location': location.toTfJson(),
    'namespace': namespace.toTfJson(),
    'service': service.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
  };
}

/// `destination.network_config` block. Configures how Eventarc resolves
/// and connects to the destination. ONLY valid when
/// [EventarcTriggerDestination.httpEndpoint] is set.
@immutable
class EventarcTriggerNetworkConfig {
  const EventarcTriggerNetworkConfig({required this.networkAttachment});

  /// Name of the NetworkAttachment that allows access to the destination
  /// VPC. Format:
  /// `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NAME}`.
  final TfArg<String> networkAttachment;

  Map<String, Object?> toArgMap() => {
    'network_attachment': networkAttachment.toTfJson(),
  };
}

// ===========================================================================
// transport block (optional, max_items=1)
// ===========================================================================

/// `transport` block. Optional reference to the GCP product Eventarc
/// uses as the delivery intermediary. Today the only supported transport
/// is Pub/Sub via [pubsub]; future transports may be added by the API
/// without breaking this block (additional sub-blocks would map to new
/// nullable fields).
///
/// When [transport] is omitted entirely (or [pubsub] is set without a
/// [EventarcTriggerPubsubTransport.topic]), Eventarc auto-creates and
/// manages the Pub/Sub topic. See the resource-level doc comment for
/// the auto-creation lifecycle details.
@immutable
class EventarcTriggerTransport {
  const EventarcTriggerTransport({this.pubsub});

  /// Pub/Sub transport configuration. The block is required by the
  /// schema today (and is the only transport type the provider
  /// recognizes); the field is nullable here purely to permit future
  /// non-Pub/Sub transports.
  final EventarcTriggerPubsubTransport? pubsub;

  Map<String, Object?> toArgMap() => {
    if (pubsub != null) 'pubsub': [pubsub!.toArgMap()],
  };
}

/// `transport.pubsub` block.
///
/// When [topic] is omitted, Eventarc creates and manages a topic on
/// behalf of the trigger and deletes it when the trigger is removed.
/// When [topic] is supplied, the user-managed topic is reused as-is and
/// is NOT deleted on trigger deletion -- caller retains ownership.
/// Setting [topic] is ONLY valid for triggers filtering on
/// `type = google.cloud.pubsub.topic.v1.messagePublished`.
@immutable
class EventarcTriggerPubsubTransport {
  const EventarcTriggerPubsubTransport({this.topic});

  /// Existing Pub/Sub topic to reuse as the delivery intermediary.
  /// Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. Omit to let
  /// Eventarc auto-create a topic.
  final TfArg<String>? topic;

  Map<String, Object?> toArgMap() => {
    if (topic != null) 'topic': topic!.toTfJson(),
  };
}

// ===========================================================================
// retry_policy block (optional, max_items=1)
// ===========================================================================

/// `retry_policy` block. Configures delivery retry behavior for the
/// trigger. Per the schema, this block is ONLY valid when [destination]
/// targets a Cloud Run service ([EventarcTriggerDestination.cloudRunService]);
/// setting it for any other destination is rejected by the provider.
@immutable
class EventarcTriggerRetryPolicy {
  const EventarcTriggerRetryPolicy({this.maxAttempts});

  /// Maximum delivery attempts per message. Per the schema, the only
  /// valid value today is `1`. Future API versions may relax this.
  final TfArg<int>? maxAttempts;

  Map<String, Object?> toArgMap() => {
    if (maxAttempts != null) 'max_attempts': maxAttempts!.toTfJson(),
  };
}

/// Factory wrapper for `google_eventarc_trigger` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Manages an **Eventarc trigger** -- a routing rule that delivers
/// CloudEvents (from Cloud Storage, Pub/Sub, Audit Logs, third-party SaaS
/// partners via Eventarc channels, etc.) to a destination workload such as
/// a Cloud Run service, Cloud Functions Gen 2 function, Workflows
/// execution, GKE service, or an arbitrary HTTP endpoint.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_eventarc_trigger.`).
/// - `name`: trigger name. Unique within the location.
/// - `location`: GCP region (e.g. `'asia-northeast1'`, or `'global'`).
/// - `matchingCriteria`: at least one [EventarcTriggerMatchingCriteria]
///   entry. Every trigger MUST include a filter on the `'type'` attribute
///   (CloudEvents event type, e.g.
///   `'google.cloud.storage.object.v1.finalized'`).
/// - `destination`: the [EventarcTriggerDestination] block. Exactly ONE
///   of [EventarcTriggerDestination.cloudRunService] /
///   [EventarcTriggerDestination.cloudFunction] /
///   [EventarcTriggerDestination.workflow] /
///   [EventarcTriggerDestination.httpEndpoint] /
///   [EventarcTriggerDestination.gke] may be set per trigger -- they are
///   mutually exclusive at the GCP API level. Setting two raises a
///   provider validation error before plan/apply.
///
/// Transport auto-creation:
/// - When [transport] is omitted (or [EventarcTriggerTransport.pubsub] is
///   set without a [EventarcTriggerPubsubTransport.topic]), Eventarc
///   automatically creates and manages a Pub/Sub topic as the delivery
///   intermediary. Eventarc owns that topic's lifecycle and deletes it
///   when the trigger is removed. Passing an explicit
///   [EventarcTriggerPubsubTransport.topic] (only valid for triggers of
///   type `google.cloud.pubsub.topic.v1.messagePublished`) attaches an
///   existing topic instead -- and Eventarc will NOT delete that topic on
///   trigger deletion.
///
/// Example (Cloud Storage object finalized -> Cloud Run service):
/// ```dart
/// final onUpload = GoogleEventarcTrigger(
///   localName: 'on_upload',
///   name: TfArg.literal('on-upload'),
///   location: TfArg.literal('asia-northeast1'),
///   serviceAccount: TfArg.literal(
///     'eventarc-runner@my-project.iam.gserviceaccount.com',
///   ),
///   matchingCriteria: const [
///     EventarcTriggerMatchingCriteria(
///       attribute: 'type',
///       value: 'google.cloud.storage.object.v1.finalized',
///     ),
///     EventarcTriggerMatchingCriteria(
///       attribute: 'bucket',
///       value: 'uploads-prod',
///     ),
///   ],
///   destination: EventarcTriggerDestination(
///     cloudRunService: EventarcTriggerCloudRunService(
///       service: TfArg.literal('image-processor'),
///       region: TfArg.literal('asia-northeast1'),
///       path: TfArg.literal('/events'),
///     ),
///   ),
/// );
/// ```
///
/// Naming convention: ALL nested helper types in this resource are
/// prefixed `EventarcTrigger...` (e.g. [EventarcTriggerMatchingCriteria],
/// [EventarcTriggerDestination], [EventarcTriggerCloudRunService]) to
/// avoid colliding with similarly-named structures in sibling Eventarc
/// resources (channels, connections) and other event-delivery wrappers
/// (Pub/Sub subscriptions, Cloud Scheduler).
///
/// Composition pattern: extends `Resource<$GoogleEventarcTrigger>` for
/// runtime behavior.
final class GoogleEventarcTrigger extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_eventarc_trigger';

  GoogleEventarcTrigger({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required List<EventarcTriggerMatchingCriteria> matchingCriteria,
    required EventarcTriggerDestination destination,
    EventarcTriggerTransport? transport,
    TfArg<String>? serviceAccount,
    TfArg<String>? channel,
    TfArg<String>? eventDataContentType,
    EventarcTriggerRetryPolicy? retryPolicy,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           'location': location,
           'matching_criteria': TfArg.literal(
             matchingCriteria.map((c) => c.toArgMap()).toList(),
           ),
           'destination': TfArg.literal([destination.toArgMap()]),
           if (transport != null)
             'transport': TfArg.literal([transport.toArgMap()]),
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (channel != null) 'channel': channel,
           if (eventDataContentType != null)
             'event_data_content_type': eventDataContentType,
           if (retryPolicy != null)
             'retry_policy': TfArg.literal([retryPolicy.toArgMap()]),
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleEventarcTriggerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/locations/{location}/triggers/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `uid` (server-assigned unique identifier).
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `etag` (optimistic-concurrency token).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `create_time` (RFC3339 creation timestamp).
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` (RFC3339 last-modified timestamp).
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
