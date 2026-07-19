/// Vertex AI Workbench (Notebooks) quickstart — environment image recipe.
///
/// Enables `notebooks.googleapis.com` and provisions a reusable environment
/// from the public `base-cpu` container image. Creating an environment does
/// **not** start a notebook VM.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/notebooks.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Notebooks stack: Workbench environment (container image).
final class NotebooksStack extends Stack {
  NotebooksStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiNotebooks = add(
      GoogleProjectService(
        localName: 'api_notebooks',
        service: TfArg.literal('notebooks.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleNotebooksEnvironment(
        localName: 'base_cpu',
        name: TfArg.literal('terradart-nb-env'),
        location: TfArg.literal('us-central1-a'),
        displayName: TfArg.literal('TerraDart base-cpu environment'),
        image: NotebooksEnvironmentContainerImage(
          repository: TfArg.literal(
            'gcr.io/deeplearning-platform-release/base-cpu',
          ),
        ),
        dependsOn: [ResourceDependency(apiNotebooks)],
      ),
    );
  }
}
