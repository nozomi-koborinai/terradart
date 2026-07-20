/// Security Command Center v2 project notification config quickstart.
///
/// Enables `securitycenter.googleapis.com` + `pubsub.googleapis.com`, creates
/// a Pub/Sub topic, and wires a project notification config that streams
/// ACTIVE findings to that topic.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_google/scc.dart';

/// SCC v2 notification stack: Pub/Sub topic + project notification config.
final class SccNotificationStack extends Stack {
  SccNotificationStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final apiScc = add(
      GoogleProjectService(
        localName: 'api_securitycenter',
        service: TfArg.literal('securitycenter.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );
    final apiPubsub = add(
      GoogleProjectService(
        localName: 'api_pubsub',
        service: TfArg.literal('pubsub.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final topic = add(
      GooglePubsubTopic(
        localName: 'scc_findings',
        name: TfArg.literal('terradart-scc-findings'),
        dependsOn: [
          ResourceDependency(apiScc),
          ResourceDependency(apiPubsub),
        ],
      ),
    );

    add(
      GoogleSccV2ProjectNotificationConfig(
        localName: 'findings_export',
        configId: TfArg.literal('terradart-scc-findings'),
        description: TfArg.literal(
          'TerraDart SCC v2 project notification config smoke',
        ),
        pubsubTopic: TfArg.ref(topic.id),
        location: TfArg.literal('global'),
        streamingConfig: SccV2ProjectNotificationConfigStreamingConfig(
          filter: TfArg.literal('state = "ACTIVE"'),
        ),
        dependsOn: [
          ResourceDependency(topic),
          ResourceDependency(apiScc),
        ],
      ),
    );
  }
}
