/// Cloud KMS project Autokey config quickstart.
///
/// Enables `cloudkms.googleapis.com` and sets the project Autokey singleton
/// to `DISABLED` — free config metadata that does not provision CMEK keys.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/kms.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// KMS Autokey stack: project Autokey config in DISABLED mode.
final class KmsAutokeyStack extends Stack {
  KmsAutokeyStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final apiKms = add(
      GoogleProjectService(
        localName: 'api_cloudkms',
        service: TfArg.literal('cloudkms.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleKmsProjectAutokeyConfig(
        localName: 'autokey',
        keyProjectResolutionMode: TfArg.literal(
          KmsProjectAutokeyConfigKeyProjectResolutionMode.disabled,
        ),
        dependsOn: [ResourceDependency(apiKms)],
      ),
    );
  }
}
