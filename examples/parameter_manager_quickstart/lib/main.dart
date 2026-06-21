/// Parameter Manager quickstart -- an end-to-end terradart example.
///
/// Defines a `ParamsStack` that enables the Parameter Manager API and
/// provisions a global JSON-formatted parameter and a regional YAML-formatted
/// parameter (the non-secret sibling of Secret Manager, for application
/// configuration).
///
/// Parameter *versions* hold the (sensitive) payload and are tracked in
/// `tool/example_debt.yaml` -- their `parameter_data` field is sensitive, which
/// synth refuses as a literal, and a Terraform variable would make this
/// otherwise-applyable example require `-var` at apply time.
///
/// Exports the global parameter id as a typed Dart constant via
/// `Stack.addExport`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/parameter_manager.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Parameter Manager Stack: a global + a regional config parameter.
final class ParamsStack extends Stack {
  ParamsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiParams = add(
      GoogleProjectService(
        localName: 'api_parametermanager',
        service: TfArg.literal('parametermanager.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final appConfig = add(
      GoogleParameterManagerParameter(
        localName: 'app_config',
        parameterId: TfArg.literal('terradart-app-config'),
        format: TfArg.literal(ParameterManagerParameterFormat.json),
        labels: TfArg.literal(const {'managed-by': 'terradart'}),
        dependsOn: [ResourceDependency(apiParams)],
      ),
    );

    add(
      GoogleParameterManagerRegionalParameter(
        localName: 'app_config_regional',
        parameterId: TfArg.literal('terradart-app-config-rgnl'),
        location: TfArg.literal('us-central1'),
        format: TfArg.literal(ParameterManagerRegionalParameterFormat.yaml),
        labels: TfArg.literal(const {'managed-by': 'terradart'}),
        dependsOn: [ResourceDependency(apiParams)],
      ),
    );

    // Literal parameter id -- emitted as a Dart constant at synth time.
    addExport(
      'APP_CONFIG_PARAMETER_ID',
      StringExport('terradart-app-config'),
    );

    // Full parameter resource name -- Terraform output only (computed).
    addExport(
      'APP_CONFIG_PARAMETER_NAME',
      ResourceIdExport(appConfig.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/params_stack.app.dart');
  }
}
