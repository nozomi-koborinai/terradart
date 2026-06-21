/// Dialogflow CX quickstart — regional SIP trunk.
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
  }
}
