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
/// `Stack.addConstant`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/parameter_manager.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Parameter Manager Stack: a global + a regional config parameter.
final class ParamsStack extends Stack {
  ParamsStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/params_stack.app.dart'),
      ) {
    final apiParams = add(
      GoogleProjectService(
        'api_parametermanager',
        service: .literal('parametermanager.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final appConfig = add(
      GoogleParameterManagerParameter(
        'app_config',
        parameterId: .literal('terradart-app-config'),
        format: .json,
        labels: .literal(const {'managed-by': 'terradart'}),
        dependsOn: [apiParams],
      ),
    );

    add(
      GoogleParameterManagerRegionalParameter(
        'app_config_regional',
        parameterId: .literal('terradart-app-config-rgnl'),
        location: .literal('us-central1'),
        format: .yaml,
        labels: .literal(const {'managed-by': 'terradart'}),
        dependsOn: [apiParams],
      ),
    );

    // Literal parameter id -- emitted as a Dart constant at synth time.
    addConstant('appConfigParameterId', .ref(appConfig.parameterId));

    // Full parameter resource name -- Terraform output only (computed).
    addOutput('app_config_parameter_name', appConfig.id);
  }
}
