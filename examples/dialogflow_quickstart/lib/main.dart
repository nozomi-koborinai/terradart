/// Dialogflow CX quickstart — regional SIP trunk plus thin Agent
/// Assist metadata (conversation profile + summarization generator).
///
/// Applying needs a live carrier TLS peer for the SIP trunk (see the
/// README's "Before you apply"). The conversation profile omits
/// automated-agent / STT / TTS so it does not start a conversation.
/// The generator uses [DialogflowGeneratorTriggerEvent.manualCall]
/// and does not run summarization on create.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/dialogflow.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

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
        displayName: .literal('terradart-agent'),
        defaultLanguageCode: .literal('en'),
        timeZone: .literal('Europe/Berlin'),
        description: .literal('Demo Dialogflow agent (terradart)'),
        matchMode: .literal(.hybrid),
        apiVersion: .literal(.v2),
        tier: .literal(.standard),
        enableLogging: .literal(true),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleDialogflowSipTrunk(
        localName: 'carrier_trunk',
        location: .literal('europe-west3'),
        expectedHostname: .literal(['terradart-carrier.example.com']),
        displayName: .literal('terradart-carrier-trunk'),
        dependsOn: apiDeps,
      ),
    );

    // Agent Assist config metadata only. No automated agent, STT, TTS,
    // or notifications — creating this does not start a conversation.
    add(
      GoogleDialogflowConversationProfile(
        localName: 'demo_profile',
        displayName: .literal('terradart-profile'),
        location: .literal('global'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    // Summarization generator config only. MANUAL_CALL so create does
    // not run the LLM. No published_model / inference / few-shot.
    add(
      GoogleDialogflowGenerator(
        localName: 'demo_summarizer',
        location: .literal('global'),
        description: .literal('terradart summarization generator'),
        triggerEvent: .literal(.manualCall),
        summarizationContext: DialogflowGeneratorSummarizationContext(
          version: .literal('4.0'),
          outputLanguageCode: .literal('en'),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    // Apply-excluded leftover: location CMEK spec. Placeholder KMS key.
    add(
      GoogleDialogflowEncryptionSpec(
        localName: 'cmek',
        location: .literal('europe-west3'),
        encryptionSpec: DialogflowEncryptionSpecEncryptionSpec(
          kmsKey: .literal(
            'projects/$projectId/locations/europe-west3/keyRings/terradart/cryptoKeys/dialogflow',
          ),
        ),
        dependsOn: apiDeps,
      ),
    );
  }
}
