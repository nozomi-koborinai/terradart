/// Workflows quickstart -- an end-to-end terradart example.
///
/// Defines a `WorkflowStack` that enables the Workflows API and provisions a
/// `google_workflows_workflow` from inline YAML source (a single step that
/// returns a greeting), with error-only call logging.
///
/// `deletionProtection` is set to `false` so the workflow can be torn down
/// (the provider defaults it to `true`, which blocks `terraform destroy`).
///
/// Exports the workflow name as a typed Dart constant via `Stack.addConstant`.
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/workflows.dart';

/// Workflows Stack: a single orchestration workflow defined from inline YAML.
final class WorkflowStack extends Stack {
  WorkflowStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/workflow_stack.app.dart'),
      ) {
    final apiWorkflows = add(
      GoogleProjectService(
        'api_workflows',
        service: .literal('workflows.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final hello = add(
      GoogleWorkflowsWorkflow(
        'hello',
        name: .literal('terradart-hello'),
        region: .literal('us-central1'),
        description: .literal('Returns a greeting (terradart demo)'),
        callLogLevel: .literal(.logErrorsOnly),
        // The provider defaults deletion_protection to true, which blocks
        // teardown; set it false so the example can be created and destroyed.
        deletionProtection: .literal(false),
        sourceContents: .literal('''
main:
  steps:
    - sayHello:
        return: "Hello from TerraDart"
'''),
        dependsOn: [apiWorkflows],
      ),
    );

    // Literal workflow name -- emitted as a Dart constant at synth time.
    addConstant('helloWorkflowName', .ref(hello.name));

    // Full workflow resource id -- Terraform output only (computed).
    addOutput('hello_workflow_id', hello.id);
  }
}
