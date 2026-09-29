/// Eventarc quickstart — Wave 17 end-to-end example.
///
/// Provisions the Eventarc control plane beyond [GoogleEventarcTrigger]:
/// message bus → API source → enrollment, a partner channel, a pipeline,
/// and a Pub/Sub → HTTP trigger.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/eventarc.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

final class EventarcStack extends Stack {
  EventarcStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    // Eventarc Advanced (MessageBus, GoogleApiSource, Enrollment, Pipeline) is
    // GA only in a limited set of regions; asia-northeast1 is not one of them.
    // us-central1 supports both Eventarc Advanced and Eventarc Standard, and a
    // bus + its enrollments/pipelines must all share one region.
    const location = 'us-central1';

    final eventarcApi = add(
      GoogleProjectService(
        localName: 'eventarc_api',
        service: .literal('eventarc.googleapis.com'),
      ),
    );
    // google_eventarc_channel (the partner channel below) additionally
    // requires the Eventarc Publishing API; without it the create call fails
    // with "Creating channel requires enablement of service
    // eventarcpublishing.googleapis.com".
    final eventarcPublishingApi = add(
      GoogleProjectService(
        localName: 'eventarc_publishing_api',
        service: .literal('eventarcpublishing.googleapis.com'),
      ),
    );
    final eventarcDeps = [
      ResourceDependency(eventarcApi),
      ResourceDependency(eventarcPublishingApi),
    ];

    // Eventarc triggers require a service account that delivers events to the
    // destination; the API rejects creation with "trigger.service_account is
    // empty" otherwise.
    final triggerSa = add(
      GoogleServiceAccount(
        localName: 'trigger_sa',
        accountId: .literal('eventarc-trigger'),
        displayName: .literal('Eventarc trigger delivery'),
        dependsOn: eventarcDeps,
      ),
    );

    final messageBus = add(
      GoogleEventarcMessageBus(
        localName: 'ops_bus',
        location: .literal(location),
        messageBusId: .literal('ops-bus'),
        displayName: .literal('Ops message bus'),
        loggingConfig: const EventarcMessageBusLoggingConfig(
          logSeverity: EventarcMessageBusLogSeverity.info,
        ),
        dependsOn: eventarcDeps,
      ),
    );

    add(
      GoogleEventarcGoogleApiSource(
        localName: 'audit_source',
        location: .literal(location),
        googleApiSourceId: .literal('audit-source'),
        destination: .ref(messageBus.nameRef),
        displayName: .literal('Audit log API source'),
        loggingConfig: const EventarcMessageBusLoggingConfig(
          logSeverity: EventarcMessageBusLogSeverity.warning,
        ),
        dependsOn: eventarcDeps,
      ),
    );

    // A pipeline routes bus messages to a concrete target (here a Workflow).
    final pipeline = add(
      GoogleEventarcPipeline(
        localName: 'ingest_pipeline',
        location: .literal(location),
        pipelineId: .literal('ingest-pipeline'),
        destinations: .literal([
          {
            'workflow':
                'projects/$projectId/locations/$location/workflows/ingest',
          },
        ]),
        loggingConfig: const EventarcMessageBusLoggingConfig(
          logSeverity: EventarcMessageBusLogSeverity.notice,
        ),
        dependsOn: eventarcDeps,
      ),
    );

    // An enrollment's destination is the *pipeline* that processes matched
    // messages — not a Workflow directly. Pointing it at a Workflow fails with
    // "invalid destination" (field enrollment.destination).
    add(
      GoogleEventarcEnrollment(
        localName: 'audit_enrollment',
        location: .literal(location),
        enrollmentId: .literal('audit-enrollment'),
        celMatch: .literal('true'),
        messageBus: .ref(messageBus.nameRef),
        destination: .ref(pipeline.nameRef),
        dependsOn: eventarcDeps,
      ),
    );

    add(
      GoogleEventarcChannel(
        localName: 'partner_channel',
        location: .literal(location),
        name: .literal('partner-channel'),
        dependsOn: eventarcDeps,
      ),
    );

    add(
      GoogleEventarcGoogleChannelConfig(
        localName: 'channel_config',
        location: .literal(location),
        name: .literal('default'),
        dependsOn: eventarcDeps,
      ),
    );

    add(
      GoogleEventarcTrigger(
        localName: 'pubsub_to_http',
        name: .literal('pubsub-to-http'),
        location: .literal(location),
        serviceAccount: .ref(triggerSa.email),
        matchingCriteria: [
          EventarcTriggerMatchingCriteria(
            attribute: .literal('type'),
            value: .literal('google.cloud.pubsub.topic.v1.messagePublished'),
          ),
        ],
        destination: EventarcTriggerDestination(
          httpEndpoint: EventarcTriggerHttpEndpoint(
            uri: .literal('https://example.com/events'),
          ),
        ),
        dependsOn: eventarcDeps,
      ),
    );
  }
}
