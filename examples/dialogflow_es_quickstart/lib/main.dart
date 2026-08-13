/// Dialogflow ES quickstart — Standard-tier agent plus design-time
/// children (intent, entity type, fulfillment, version, environment).
///
/// Enables `dialogflow.googleapis.com`. The stack never calls DetectIntent
/// and does not enable fulfillment webhooks or environment TTS.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/dialogflow.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

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
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.dialogflow],
      propagationDelay: const Duration(seconds: 60),
    );

    final agent = add(
      GoogleDialogflowAgent(
        localName: 'agent',
        displayName: TfArg.literal('terradart-es-agent'),
        defaultLanguageCode: TfArg.literal('en'),
        timeZone: TfArg.literal('America/New_York'),
        description: TfArg.literal('TerraDart Dialogflow ES smoke agent'),
        matchMode: TfArg.literal(DialogflowAgentMatchMode.hybrid),
        apiVersion: TfArg.literal(DialogflowAgentApiVersion.v2),
        tier: TfArg.literal(DialogflowAgentTier.standard),
        dependsOn: apiDeps,
      ),
    );

    // Agent create is synchronous in Terraform but the ES default intents
    // can lag; version/environment create races that lag.
    final agentReady = add(
      TimeSleep(
        localName: 'agent_ready',
        createDuration: TfArg.duration(const Duration(seconds: 20)),
        triggers: TfArg.literal({
          'agent': agent.id.interpolation,
        }),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(agent),
        ],
      ),
    );
    final onAgent = [ResourceDependency(agentReady)];

    add(
      GoogleDialogflowIntent(
        localName: 'hello',
        displayName: TfArg.literal('terradart.hello'),
        dependsOn: onAgent,
      ),
    );

    add(
      GoogleDialogflowEntityType(
        localName: 'color',
        displayName: TfArg.literal('terradart-color'),
        kind: TfArg.literal(DialogflowEntityTypeKind.kindMap),
        entities: [
          DialogflowEntityTypeEntities(
            value: TfArg.literal('red'),
            synonyms: TfArg.literal(['crimson', 'scarlet']),
          ),
        ],
        dependsOn: onAgent,
      ),
    );

    add(
      GoogleDialogflowFulfillment(
        localName: 'fulfillment',
        displayName: TfArg.literal('terradart-fulfillment'),
        enabled: TfArg.literal(false),
        dependsOn: onAgent,
      ),
    );

    final version = add(
      GoogleDialogflowVersion(
        localName: 'v1',
        parent: TfArg.literal('projects/$projectId/agent'),
        description: TfArg.literal('terradart es snapshot'),
        dependsOn: onAgent,
      ),
    );

    add(
      GoogleDialogflowEnvironment(
        localName: 'dev',
        environmentid: TfArg.literal('terradartes'),
        location: TfArg.literal('global'),
        agentVersion: TfArg.ref(version.id),
        description: TfArg.literal('terradart es env'),
        dependsOn: [
          ...onAgent,
          ResourceDependency(version),
        ],
      ),
    );
  }
}
