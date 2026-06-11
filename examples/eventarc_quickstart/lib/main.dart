/// Eventarc quickstart — Wave 17 end-to-end example.
///
/// Provisions the Eventarc control plane beyond [GoogleEventarcTrigger]:
/// message bus → API source → enrollment, a partner channel, a pipeline,
/// and a Pub/Sub → HTTP trigger.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/eventarc.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

final class EventarcStack extends Stack {
  EventarcStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    const location = 'asia-northeast1';

    final eventarcApi = add(
      GoogleProjectService(
        localName: 'eventarc_api',
        service: TfArg.literal('eventarc.googleapis.com'),
      ),
    );
    final eventarcDeps = [ResourceDependency(eventarcApi)];

    final messageBus = add(
      GoogleEventarcMessageBus(
        localName: 'ops_bus',
        location: TfArg.literal(location),
        messageBusId: TfArg.literal('ops-bus'),
        displayName: TfArg.literal('Ops message bus'),
        loggingConfig: const EventarcMessageBusLoggingConfig(
          logSeverity: EventarcMessageBusLogSeverity.info,
        ),
        dependsOn: eventarcDeps,
      ),
    );

    add(
      GoogleEventarcGoogleApiSource(
        localName: 'audit_source',
        location: TfArg.literal(location),
        googleApiSourceId: TfArg.literal('audit-source'),
        destination: TfArg.ref(messageBus.nameRef),
        displayName: TfArg.literal('Audit log API source'),
        loggingConfig: const EventarcMessageBusLoggingConfig(
          logSeverity: EventarcMessageBusLogSeverity.warning,
        ),
        dependsOn: eventarcDeps,
      ),
    );

    add(
      GoogleEventarcEnrollment(
        localName: 'audit_enrollment',
        location: TfArg.literal(location),
        enrollmentId: TfArg.literal('audit-enrollment'),
        celMatch: TfArg.literal('true'),
        messageBus: TfArg.ref(messageBus.nameRef),
        destination: TfArg.literal(
          'projects/$projectId/locations/$location/workflows/audit-router',
        ),
        dependsOn: eventarcDeps,
      ),
    );

    add(
      GoogleEventarcChannel(
        localName: 'partner_channel',
        location: TfArg.literal(location),
        name: TfArg.literal('partner-channel'),
        dependsOn: eventarcDeps,
      ),
    );

    add(
      GoogleEventarcGoogleChannelConfig(
        localName: 'channel_config',
        location: TfArg.literal(location),
        name: TfArg.literal('default'),
        dependsOn: eventarcDeps,
      ),
    );

    add(
      GoogleEventarcPipeline(
        localName: 'ingest_pipeline',
        location: TfArg.literal(location),
        pipelineId: TfArg.literal('ingest-pipeline'),
        destinations: TfArg.literal([
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

    add(
      GoogleEventarcTrigger(
        localName: 'pubsub_to_http',
        name: TfArg.literal('pubsub-to-http'),
        location: TfArg.literal(location),
        matchingCriteria: [
          EventarcTriggerMatchingCriteria(
            attribute: TfArg.literal('type'),
            value: TfArg.literal(
              'google.cloud.pubsub.topic.v1.messagePublished',
            ),
          ),
        ],
        destination: EventarcTriggerDestination(
          httpEndpoint: EventarcTriggerHttpEndpoint(
            uri: TfArg.literal('https://example.com/events'),
          ),
        ),
        dependsOn: eventarcDeps,
      ),
    );
  }
}
