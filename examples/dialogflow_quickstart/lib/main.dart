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
