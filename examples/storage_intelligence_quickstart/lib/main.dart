/// Cloud Storage Intelligence project config quickstart.
///
/// Enables `storage.googleapis.com` and sets the project Storage Intelligence
/// singleton to `DISABLED` — free config metadata that does not enable the
/// paid STANDARD edition.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage_control.dart';

/// Storage Intelligence stack: project config in DISABLED edition.
final class StorageIntelligenceStack extends Stack {
  StorageIntelligenceStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final apiStorage = add(
      GoogleProjectService(
        localName: 'api_storage',
        service: TfArg.literal('storage.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleStorageControlProjectIntelligenceConfig(
        localName: 'intelligence',
        name: TfArg.literal(projectId),
        editionConfig: TfArg.literal(
          StorageControlProjectIntelligenceConfigEditionConfig.disabled,
        ),
        dependsOn: [ResourceDependency(apiStorage)],
      ),
    );
  }
}
