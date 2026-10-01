/// Cloud Observability quickstart -- an end-to-end terradart example.
///
/// Defines an `ObservabilityStack` that enables the Cloud Observability API and
/// provisions a Trace scope (`terradart-traces`) covering the current project's
/// trace data. Trace scopes are free, project-scoped config, so the stack
/// creates and destroys cleanly in a single project.
///
/// Exports the trace scope id as a typed Dart constant via `Stack.addConstant`.
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
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/observability_stack.app.dart'),
      ) {
    final apiObservability = add(
      GoogleProjectService(
        localName: 'api_observability',
        service: .literal('observability.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final traceScope = add(
      GoogleObservabilityTraceScope(
        localName: 'app_traces',
        traceScopeId: .literal('terradart-traces'),
        location: .literal('global'),
        // A trace scope groups the trace data of one or more projects; here it
        // covers just the current project.
        resourceNames: .literal(['projects/$projectId']),
        description: .literal('Trace scope for the current project'),
        dependsOn: [apiObservability],
      ),
    );

    // Literal trace-scope id -- emitted as a Dart constant at synth time.
    addConstant('traceScopeId', .ref(traceScope.traceScopeId));

    // Full trace-scope resource name -- Terraform output only (computed).
    addOutput('trace_scope_name', traceScope.id);
  }
}
