// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_eventarc_trigger`.
const Set<String> _googleEventarcTriggerSensitive = <String>{};

// ===========================================================================
// matching_criteria[] block (set, min_items=1)
// ===========================================================================

// ===========================================================================
// destination block (required, max_items=1, mutually-exclusive sub-targets)
// ===========================================================================

// ===========================================================================
// transport block (optional, max_items=1)
// ===========================================================================

// ===========================================================================
// retry_policy block (optional, max_items=1)
// ===========================================================================

/// Typed helper for the `destination` block of
/// `google_eventarc_trigger` (derived from provider schema).
@immutable
final class EventarcTriggerDestination {
  const EventarcTriggerDestination({
    this.workflow,
    this.cloudRunService,
    this.gke,
    this.httpEndpoint,
    this.networkConfig,
  });

  final TfArg<String>? workflow;

  final EventarcTriggerCloudRunService? cloudRunService;

  final EventarcTriggerGke? gke;

  final EventarcTriggerHttpEndpoint? httpEndpoint;

  final EventarcTriggerNetworkConfig? networkConfig;

  @internal
  Map<String, Object?> encode() => {
    'workflow': ?workflow?.toTfJson(),
    'cloud_run_service': ?cloudRunService?.encode(),
    'gke': ?gke?.encode(),
    'http_endpoint': ?httpEndpoint?.encode(),
    'network_config': ?networkConfig?.encode(),
  };
}

/// Typed helper for the `destination.cloud_run_service` block of
/// `google_eventarc_trigger` (derived from provider schema).
@immutable
final class EventarcTriggerCloudRunService {
  const EventarcTriggerCloudRunService({
    this.path,
    this.region,
    required this.service,
  });

  final TfArg<String>? path;

  final TfArg<String>? region;

  final TfArg<String> service;

  @internal
  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    'region': ?region?.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `destination.gke` block of
/// `google_eventarc_trigger` (derived from provider schema).
@immutable
final class EventarcTriggerGke {
  const EventarcTriggerGke({
    required this.cluster,
    required this.location,
    required this.namespace,
    this.path,
    required this.service,
  });

  final TfArg<String> cluster;

  final TfArg<String> location;

  final TfArg<String> namespace;

  final TfArg<String>? path;

  final TfArg<String> service;

  @internal
  Map<String, Object?> encode() => {
    'cluster': cluster.toTfJson(),
    'location': location.toTfJson(),
    'namespace': namespace.toTfJson(),
    'path': ?path?.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `destination.http_endpoint` block of
/// `google_eventarc_trigger` (derived from provider schema).
@immutable
final class EventarcTriggerHttpEndpoint {
  const EventarcTriggerHttpEndpoint({required this.uri});

  final TfArg<String> uri;

  @internal
  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}

/// Typed helper for the `destination.network_config` block of
/// `google_eventarc_trigger` (derived from provider schema).
@immutable
final class EventarcTriggerNetworkConfig {
  const EventarcTriggerNetworkConfig({required this.networkAttachment});

  final TfArg<String> networkAttachment;

  @internal
  Map<String, Object?> encode() => {
    'network_attachment': networkAttachment.toTfJson(),
  };
}

/// Typed helper for the `matching_criteria` block of
/// `google_eventarc_trigger` (derived from provider schema).
@immutable
final class EventarcTriggerMatchingCriteria {
  const EventarcTriggerMatchingCriteria({
    required this.attribute,
    this.operator,
    required this.value,
  });

  final TfArg<String> attribute;

  final TfArg<String>? operator;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'attribute': attribute.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `retry_policy` block of
/// `google_eventarc_trigger` (derived from provider schema).
@immutable
final class EventarcTriggerRetryPolicy {
  const EventarcTriggerRetryPolicy({this.maxAttempts});

  final TfArg<num>? maxAttempts;

  @internal
  Map<String, Object?> encode() => {'max_attempts': ?maxAttempts?.toTfJson()};
}

/// Typed helper for the `transport` block of
/// `google_eventarc_trigger` (derived from provider schema).
@immutable
final class EventarcTriggerTransport {
  const EventarcTriggerTransport({this.pubsub});

  final EventarcTriggerPubsub? pubsub;

  @internal
  Map<String, Object?> encode() => {'pubsub': ?pubsub?.encode()};
}

/// Typed helper for the `transport.pubsub` block of
/// `google_eventarc_trigger` (derived from provider schema).
@immutable
final class EventarcTriggerPubsub {
  const EventarcTriggerPubsub({this.topic});

  final RefTo<GooglePubsubTopic>? topic;

  @internal
  Map<String, Object?> encode() => {'topic': ?topic?.encodeAs('id').toTfJson()};
}

/// Factory wrapper for `google_eventarc_trigger`.
///
/// The Eventarc Trigger resource
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
///   set without a [EventarcTriggerPubsub.topic]), Eventarc
///   automatically creates and manages a Pub/Sub topic as the delivery
///   intermediary. Eventarc owns that topic's lifecycle and deletes it
///   when the trigger is removed. Passing an explicit
///   [EventarcTriggerPubsub.topic] (only valid for triggers of
///   type `google.cloud.pubsub.topic.v1.messagePublished`) attaches an
///   existing topic instead -- and Eventarc will NOT delete that topic on
///   trigger deletion.
///
/// Example (Cloud Storage object finalized -> Cloud Run service):
/// ```dart
/// final onUpload = GoogleEventarcTrigger(
///   'on_upload',
///   name: .literal('on-upload'),
///   location: .literal('asia-northeast1'),
///   serviceAccount: .of(runner),
///   matchingCriteria: [
///     EventarcTriggerMatchingCriteria(
///       attribute: .literal('type'),
///       value: .literal('google.cloud.storage.object.v1.finalized'),
///     ),
///     EventarcTriggerMatchingCriteria(
///       attribute: .literal('bucket'),
///       value: .literal('uploads-prod'),
///     ),
///   ],
///   destination: EventarcTriggerDestination(
///     cloudRunService: .new(
///       service: .literal('image-processor'),
///       region: .literal('asia-northeast1'),
///       path: .literal('/events'),
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
final class GoogleEventarcTrigger extends Resource {
  static const String tfType = 'google_eventarc_trigger';

  GoogleEventarcTrigger(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required List<EventarcTriggerMatchingCriteria> matchingCriteria,
    required EventarcTriggerDestination destination,
    EventarcTriggerTransport? transport,
    RefTo<GoogleServiceAccount>? serviceAccount,
    TfArg<String>? channel,
    TfArg<String>? eventDataContentType,
    EventarcTriggerRetryPolicy? retryPolicy,
    TfArg<Map<String, String>>? labels,
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
           'matching_criteria': TfArg.literal([
             for (final e in matchingCriteria) e.encode(),
           ]),
           'destination': TfArg.literal(destination.encode()),
           if (transport != null)
             'transport': TfArg.literal(transport.encode()),
           'service_account': ?serviceAccount?.encodeAs('email'),
           'channel': ?channel,
           'event_data_content_type': ?eventDataContentType,
           if (retryPolicy != null)
             'retry_policy': TfArg.literal(retryPolicy.encode()),
           'labels': ?labels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcTriggerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEventarcTrigger>`.
  RefTo<GoogleEventarcTrigger> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `conditions` attribute.
  TfRef<Map<String, String>> get conditions =>
      TfRef.attribute<Map<String, String>>(this, 'conditions');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `channel` attribute.
  TfRef<String> get channel => TfRef.attribute<String>(this, 'channel');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `event_data_content_type` attribute.
  TfRef<String> get eventDataContentType =>
      TfRef.attribute<String>(this, 'event_data_content_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');
}
