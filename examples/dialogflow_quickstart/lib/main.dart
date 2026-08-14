/// Dialogflow CX quickstart — regional SIP trunk plus a thin ES
/// conversation-profile (Agent Assist metadata only).
///
/// Real apply is skipped ([tool/apply_smoke_skip.yaml]): SIP trunk
/// needs a live carrier TLS peer. The conversation profile omits
/// automated-agent / STT / TTS so it does not start a conversation.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/dialogflow.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

final class DialogflowSipTrunkStack extends Stack {
  DialogflowSipTrunkStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'europe-west3'),
            const TimeProvider(),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.dialogflow],
      propagationDelay: const Duration(seconds: 60),
    );

    // The project's Dialogflow ES agent (a per-project singleton). Created
    // before the CX SIP trunk; both share the dialogflow API enablement.
    add(
      GoogleDialogflowAgent(
        localName: 'agent',
        displayName: TfArg.literal('terradart-agent'),
        defaultLanguageCode: TfArg.literal('en'),
        timeZone: TfArg.literal('Europe/Berlin'),
        description: TfArg.literal('Demo Dialogflow agent (terradart)'),
        matchMode: TfArg.literal(DialogflowAgentMatchMode.hybrid),
        apiVersion: TfArg.literal(DialogflowAgentApiVersion.v2),
        tier: TfArg.literal(DialogflowAgentTier.standard),
        enableLogging: TfArg.literal(true),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleDialogflowSipTrunk(
        localName: 'carrier_trunk',
        location: TfArg.literal('europe-west3'),
        expectedHostname: TfArg.literal(['terradart-carrier.example.com']),
        displayName: TfArg.literal('terradart-carrier-trunk'),
        dependsOn: apiDeps,
      ),
    );

    // Agent Assist config metadata only. No automated agent, STT, TTS,
    // or notifications — creating this does not start a conversation.
    add(
      GoogleDialogflowConversationProfile(
        localName: 'demo_profile',
        displayName: TfArg.literal('terradart-profile'),
        location: TfArg.literal('global'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
  }
}
