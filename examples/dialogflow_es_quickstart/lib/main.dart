/// Dialogflow ES quickstart — Standard-tier agent plus design-time
/// children (intent, entity type, fulfillment, version, environment).
///
/// Enables `dialogflow.googleapis.com`. The stack never calls DetectIntent
/// and does not enable fulfillment webhooks or environment TTS.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_google/dialogflow.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

/// Dialogflow ES stack: Standard-tier agent + intent / entity / fulfillment
/// / version / environment.
final class DialogflowEsStack extends Stack {
  DialogflowEsStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    final apiDeps = enableApis([
      .dialogflow,
    ], propagationDelay: const Duration(seconds: 60));

    final agent = add(
      GoogleDialogflowAgent(
        'agent',
        displayName: .literal('terradart-es-agent'),
        defaultLanguageCode: .literal('en'),
        timeZone: .literal('America/New_York'),
        description: .literal('TerraDart Dialogflow ES smoke agent'),
        matchMode: .hybrid,
        apiVersion: .v2,
        tier: .standard,
        dependsOn: apiDeps,
      ),
    );

    // Agent create is synchronous in Terraform but the ES default intents
    // can lag; version/environment create races that lag.
    final agentReady = add(
      TimeSleep(
        'agent_ready',
        createDuration: TfArg.duration(const Duration(seconds: 20)),
        triggers: .literal({'agent': agent.id.interpolation}),
        dependsOn: [...apiDeps, agent],
      ),
    );
    final onAgent = [agentReady];

    add(
      GoogleDialogflowIntent(
        'hello',
        displayName: .literal('terradart.hello'),
        dependsOn: onAgent,
      ),
    );

    add(
      GoogleDialogflowEntityType(
        'color',
        displayName: .literal('terradart-color'),
        kind: .kindMap,
        entities: [
          DialogflowEntityTypeEntities(
            value: .literal('red'),
            synonyms: .literal(['crimson', 'scarlet']),
          ),
        ],
        dependsOn: onAgent,
      ),
    );

    add(
      GoogleDialogflowFulfillment(
        'fulfillment',
        displayName: .literal('terradart-fulfillment'),
        enabled: .literal(false),
        dependsOn: onAgent,
      ),
    );

    final version = add(
      GoogleDialogflowVersion(
        'v1',
        parent: .literal('projects/$projectId/agent'),
        description: .literal('terradart es snapshot'),
        dependsOn: onAgent,
      ),
    );

    add(
      GoogleDialogflowEnvironment(
        'dev',
        environmentid: .literal('terradartes'),
        location: .literal('global'),
        agentVersion: version.ref,
        description: .literal('terradart es env'),
        dependsOn: [...onAgent, version],
      ),
    );
  }
}
