/// Dialogflow CX quickstart — regional SIP trunk plus thin Agent
/// Assist metadata (conversation profile + summarization generator).
///
/// Real apply is skipped ([tool/apply_smoke_skip.yaml]): SIP trunk
/// needs a live carrier TLS peer. The conversation profile omits
/// automated-agent / STT / TTS so it does not start a conversation.
/// The generator uses [DialogflowGeneratorTriggerEvent.manualCall]
/// and does not run summarization on create.
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

    // Summarization generator config only. MANUAL_CALL so create does
    // not run the LLM. No published_model / inference / few-shot.
    add(
      GoogleDialogflowGenerator(
        localName: 'demo_summarizer',
        location: TfArg.literal('global'),
        description: TfArg.literal('terradart summarization generator'),
        triggerEvent: TfArg.literal(
          DialogflowGeneratorTriggerEvent.manualCall,
        ),
        summarizationContext: DialogflowGeneratorSummarizationContext(
          version: TfArg.literal('4.0'),
          outputLanguageCode: TfArg.literal('en'),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    // Apply-excluded leftover: location CMEK spec. Placeholder KMS key.
    add(
      GoogleDialogflowEncryptionSpec(
        localName: 'cmek',
        location: TfArg.literal('europe-west3'),
        encryptionSpec: DialogflowEncryptionSpecEncryptionSpec(
          kmsKey: TfArg.literal(
            'projects/$projectId/locations/europe-west3/keyRings/terradart/cryptoKeys/dialogflow',
          ),
        ),
        dependsOn: apiDeps,
      ),
    );
  }
}
