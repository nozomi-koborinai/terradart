/// Cloud Observability quickstart -- an end-to-end terradart example.
///
/// Defines an `ObservabilityStack` that enables the Cloud Observability API and
/// provisions a Trace scope (`terradart-traces`) covering the current project's
/// trace data. Trace scopes are free, project-scoped config, so the stack
/// creates and destroys cleanly in a single project.
///
/// Exports the trace scope id as a typed Dart constant via `Stack.addExport`.
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/observability.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Cloud Observability Stack: a Trace scope over the current project.
final class ObservabilityStack extends Stack {
  ObservabilityStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiObservability = add(
      GoogleProjectService(
        localName: 'api_observability',
        service: TfArg.literal('observability.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final traceScope = add(
      GoogleObservabilityTraceScope(
        localName: 'app_traces',
        traceScopeId: TfArg.literal('terradart-traces'),
        location: TfArg.literal('global'),
        // A trace scope groups the trace data of one or more projects; here it
        // covers just the current project.
        resourceNames: TfArg.literal(['projects/$projectId']),
        description: TfArg.literal('Trace scope for the current project'),
        dependsOn: [ResourceDependency(apiObservability)],
      ),
    );

    // Literal trace-scope id -- emitted as a Dart constant at synth time.
    addExport('TRACE_SCOPE_ID', StringExport('terradart-traces'));

    // Full trace-scope resource name -- Terraform output only (computed).
    addExport(
      'TRACE_SCOPE_NAME',
      ResourceIdExport(traceScope.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/observability_stack.app.dart');
  }
}
