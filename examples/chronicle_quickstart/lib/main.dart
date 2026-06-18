/// Chronicle quickstart — custom list on a SecOps instance.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/chronicle.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

final class ChronicleCustomListStack extends Stack {
  ChronicleCustomListStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.chronicle],
      propagationDelay: const Duration(seconds: 60),
    );

    add(
      GoogleChronicleCustomList(
        localName: 'approved_files',
        location: TfArg.literal('us'),
        instance: TfArg.literal('00000000-0000-0000-0000-000000000000'),
        entityIdentifier: TfArg.literal('filename.bin'),
        category: TfArg.literal('Approved Files'),
        environments: TfArg.literal('["Default Environment"]'),
        dependsOn: apiDeps,
      ),
    );
  }
}
