/// Container Analysis quickstart — attestation-authority note + note IAM.
///
/// [GoogleContainerAnalysisOccurrence] needs a real signed attestation
/// payload (KMS / Binary Authorization flow) and is deferred to
/// [tool/example_debt.yaml].
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/container_analysis.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

final class ContainerAnalysisStack extends Stack {
  ContainerAnalysisStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.containerAnalysis],
      propagationDelay: const Duration(seconds: 60),
    );

    final note = GoogleContainerAnalysisNote(
      localName: 'attestor',
      name: TfArg.literal('terradart-attestor-note'),
      shortDescription: TfArg.literal('TerraDart Container Analysis note'),
      attestationAuthority: ContainerAnalysisNoteAttestationAuthority(
        hint: ContainerAnalysisNoteAttestationAuthorityHint(
          humanReadableName: TfArg.literal('TerraDart attestor'),
        ),
      ),
      dependsOn: apiDeps,
    );
    add(note);

    final viewer = GoogleServiceAccount(
      localName: 'note_viewer',
      accountId: TfArg.literal('ca-note-viewer'),
      displayName: TfArg.literal('Container Analysis note viewer'),
    );
    add(viewer);

    add(
      GoogleContainerAnalysisNoteIamMember(
        localName: 'note_viewer',
        note: TfArg.ref(note.nameRef),
        role: TfArg.literal(
          'roles/containeranalysis.notes.occurrences.viewer',
        ),
        member: TfArg.ref(viewer.iamMember),
        dependsOn: [
          ResourceDependency(note),
          ResourceDependency(viewer),
        ],
      ),
    );
  }
}
