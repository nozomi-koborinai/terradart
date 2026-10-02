/// Container Analysis quickstart — attestation-authority note + note IAM.
///
/// Covers note IAM member / binding / policy. [GoogleContainerAnalysisOccurrence]
/// needs a real signed attestation payload (KMS / Binary Authorization flow)
/// and is deferred to [tool/example_debt.yaml].
library;

import 'dart:convert';

import 'package:terradart_google/container_analysis.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

String _iamPolicyDataJson({required String role, required String member}) {
  return jsonEncode({
    'bindings': [
      {
        'role': role,
        'members': [member],
      },
    ],
  });
}

final class ContainerAnalysisStack extends Stack {
  ContainerAnalysisStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    final apiDeps = enableApis([
      .containerAnalysis,
    ], propagationDelay: const Duration(seconds: 60));

    final note = GoogleContainerAnalysisNote(
      'attestor',
      name: .literal('terradart-attestor-note'),
      shortDescription: .literal('TerraDart Container Analysis note'),
      attestationAuthority: ContainerAnalysisNoteAttestationAuthority(
        hint: .new(humanReadableName: .literal('TerraDart attestor')),
      ),
      dependsOn: apiDeps,
    );
    add(note);

    final viewer = GoogleServiceAccount(
      'note_viewer',
      accountId: .literal('ca-note-viewer'),
      displayName: .literal('Container Analysis note viewer'),
    );
    add(viewer);

    add(
      GoogleContainerAnalysisNoteIamMember(
        'note_viewer',
        note: note.ref,
        role: .literal('roles/containeranalysis.notes.occurrences.viewer'),
        member: viewer.principal,
        dependsOn: [note, viewer],
      ),
    );

    final noteBinding = add(
      GoogleContainerAnalysisNoteIamBinding(
        'note_viewer_binding',
        note: note.ref,
        role: .literal('roles/containeranalysis.notes.occurrences.viewer'),
        members: .literal([viewer.principal]),
        dependsOn: [note, viewer],
      ),
    );

    add(
      GoogleContainerAnalysisNoteIamPolicy(
        'note_viewer_policy',
        note: note.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/containeranalysis.notes.occurrences.viewer',
            member:
                'serviceAccount:ca-note-viewer@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [note, noteBinding],
      ),
    );
  }
}
