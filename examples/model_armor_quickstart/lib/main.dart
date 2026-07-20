/// Model Armor template quickstart.
///
/// Enables `modelarmor.googleapis.com` and creates a regional
/// `google_model_armor_template` with an empty `filter_config` (provider
/// basic example). Template metadata alone does not invoke Model Armor
/// screening.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/model_armor.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Model Armor stack: empty filter_config template.
final class ModelArmorStack extends Stack {
  ModelArmorStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiModelArmor = add(
      GoogleProjectService(
        localName: 'api_modelarmor',
        service: TfArg.literal('modelarmor.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleModelArmorTemplate(
        localName: 'basic',
        location: TfArg.literal('us-central1'),
        templateId: TfArg.literal('terradart-modelarmor'),
        filterConfig: const ModelArmorTemplateFilterConfig(),
        dependsOn: [ResourceDependency(apiModelArmor)],
      ),
    );
  }
}
