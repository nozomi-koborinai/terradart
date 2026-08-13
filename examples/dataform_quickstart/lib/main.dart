/// Dataform folder quickstart.
///
/// Enables `dataform.googleapis.com` and creates a team folder plus a
/// nested folder. Neither resource compiles SQL or runs workflows.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/dataform.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

/// Dataform stack: team folder + nested folder.
final class DataformStack extends Stack {
  DataformStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.dataform],
      propagationDelay: const Duration(seconds: 60),
    );

    final team = add(
      GoogleDataformTeamFolder(
        localName: 'team',
        displayName: TfArg.literal('terradart-team'),
        region: TfArg.literal('us-central1'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleDataformFolder(
        localName: 'apps',
        displayName: TfArg.literal('terradart-apps'),
        region: TfArg.literal('us-central1'),
        containingFolder: TfArg.ref(team.nameRef),
        dependsOn: [ResourceDependency(team)],
      ),
    );
  }
}
