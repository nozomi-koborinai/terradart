/// Dataform quickstart.
///
/// Enables `dataform.googleapis.com` and creates folder metadata (team folder
/// plus a nested folder) alongside a Dataform **repository** whose workflow
/// invocations run as an in-stack service account, which is additively granted
/// `roles/dataform.editor` on that repository.
///
/// No resource here compiles SQL or runs a workflow, so no BigQuery analysis
/// charge is incurred by `terraform apply`.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/dataform.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

/// Dataform stack: team folder + nested folder + repository with IAM.
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

    // Identity that Dataform workflow invocations run under. It needs
    // BigQuery access to the datasets a workflow writes; this stack only
    // grants it on the repository itself.
    final runner = add(
      GoogleServiceAccount(
        localName: 'workflow_runner',
        accountId: TfArg.literal('terradart-dataform-runner'),
        displayName: TfArg.literal('TerraDart Dataform workflow runner'),
      ),
    );

    final repository = add(
      GoogleDataformRepository(
        localName: 'analytics',
        name: TfArg.literal('terradart-analytics'),
        region: TfArg.literal('us-central1'),
        displayName: TfArg.literal('TerraDart analytics'),
        serviceAccount: TfArg.ref(runner.email),
        workspaceCompilationOverrides: TfArg.literal(<String, Object?>{
          'schema_suffix': 'terradart',
          'table_prefix': 'terradart_',
        }),
        labels: TfArg.literal({'managed-by': 'terradart'}),
        // FORCE also removes workspaces created inside the repository.
        deletionPolicy: TfArg.literal('FORCE'),
        dependsOn: [...apiDeps, ResourceDependency(runner)],
      ),
    );

    add(
      GoogleDataformRepositoryIamMember(
        localName: 'repository_editor',
        repository: TfArg.ref(repository.nameRef),
        role: TfArg.literal('roles/dataform.editor'),
        member: TfArg.ref(runner.iamMember),
        region: TfArg.literal('us-central1'),
        dependsOn: [
          ResourceDependency(repository),
          ResourceDependency(runner),
        ],
      ),
    );
  }
}
