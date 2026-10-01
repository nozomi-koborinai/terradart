/// Vertex AI Feature Store quickstart -- an end-to-end terradart example.
///
/// Defines a `FeatureStack` that enables the Vertex AI API and provisions a
/// BigQuery-backed Vertex AI feature group:
/// - a BigQuery dataset + table (the feature source, keyed by `entity_id`),
/// - a `google_vertex_ai_feature_group` reading from that table,
/// - a `google_vertex_ai_feature_group_feature` for the `feature_score` column,
/// - Tensorboard experiment tracking (tensorboard + experiment + run),
/// - a reusable LLM-based `google_vertex_ai_evaluation_metric`,
///
/// The BigQuery `big_query` config is passed as a structured map (the thin
/// curated factory exposes it as `TfArg<Map<String, dynamic>>`). All resources
/// are free to define, so the stack creates and destroys cleanly in a single
/// project.
///
/// Exports the feature group name as a typed Dart constant via
/// `Stack.addConstant`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'dart:convert';

import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/vertex_ai.dart';

/// Vertex AI Stack: a BigQuery-backed feature group.
final class FeatureStack extends Stack {
  FeatureStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/feature_stack.app.dart'),
      ) {
    final apiVertex = add(
      GoogleProjectService(
        'api_aiplatform',
        service: .literal('aiplatform.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    // The feature group's source lives in BigQuery, so enable that API too
    // (an example that enables any API must enable every API its resources
    // need -- enforced by tool/example_synth_gates.dart).
    final apiBigquery = add(
      GoogleProjectService(
        'api_bigquery',
        service: .literal('bigquery.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final dataset = add(
      GoogleBigqueryDataset(
        'features',
        datasetId: .literal('vertex_features'),
        location: .literal('us-central1'),
        deleteContentsOnDestroy: .literal(true),
        dependsOn: [apiBigquery],
      ),
    );

    final table = add(
      GoogleBigqueryTable(
        'entities',
        datasetId: dataset.ref,
        tableId: .literal('entities'),
        deletionProtection: .literal(false),
        schema: .literal(
          '[{"name":"entity_id","type":"STRING","mode":"REQUIRED"},'
          '{"name":"feature_score","type":"FLOAT64","mode":"NULLABLE"},'
          '{"name":"feature_timestamp","type":"TIMESTAMP","mode":"NULLABLE"}]',
        ),
        dependsOn: [dataset],
      ),
    );

    final featureGroup = add(
      GoogleVertexAiFeatureGroup(
        'customer_features',
        name: .literal('terradart_customer_features'),
        region: .literal('us-central1'),
        description: .literal('Customer features backed by BigQuery'),
        bigQuery: VertexAiFeatureGroupBigQuery(
          bigQuerySource: .new(
            inputUri: .literal('bq://$projectId.vertex_features.entities'),
          ),
          entityIdColumns: .literal(['entity_id']),
        ),
        dependsOn: [apiVertex, table],
      ),
    );

    add(
      GoogleVertexAiFeatureGroupFeature(
        'feature_score',
        featureGroup: featureGroup.ref,
        name: .literal('feature_score'),
        region: .literal('us-central1'),
        versionColumnName: .literal('feature_score'),
        description: .literal('Customer score from BigQuery'),
        dependsOn: [featureGroup],
      ),
    );

    // A managed Vertex AI dataset (image dataset; the metadata schema URI is
    // a public Google-hosted schema). Free to define.
    add(
      GoogleVertexAiDataset(
        'images',
        displayName: .literal('terradart-image-dataset'),
        metadataSchemaUri: .literal(
          'gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml',
        ),
        region: .literal('us-central1'),
        dependsOn: [apiVertex],
      ),
    );

    // A Vertex AI Tensorboard for experiment visualization. Empty Tensorboards
    // are free; created and destroyed cleanly.
    final tensorboard = add(
      GoogleVertexAiTensorboard(
        'experiments',
        displayName: .literal('terradart-experiments'),
        description: .literal('Experiment metrics (demo)'),
        region: .literal('us-central1'),
        dependsOn: [apiVertex],
      ),
    );

    const experimentId = 'terradart-experiment';

    // The experiment/run APIs place `tensorboard` as ONE path segment
    // (…/tensorboards/{tensorboard}/experiments), so they need the short
    // numeric ID — the full resource name in `tensorboard.name` produces a
    // doubled path and a 404. Extract the trailing segment.
    final tensorboardShortId = TfArg.expression<String>(
      '\${element(split("/", ${tensorboard.name.bareAddress}), 5)}',
    );

    final experiment = add(
      GoogleVertexAiTensorboardExperiment(
        'training_experiment',
        tensorboardExperimentId: .literal(experimentId),
        tensorboard: tensorboardShortId,
        location: .literal('us-central1'),
        displayName: .literal('TerraDart training experiment'),
        description: .literal('Demo experiment'),
        dependsOn: [tensorboard],
      ),
    );

    add(
      GoogleVertexAiTensorboardRun(
        'training_run',
        tensorboardRunId: .literal('terradart-run'),
        experiment: .literal(experimentId),
        tensorboard: tensorboardShortId,
        location: .literal('us-central1'),
        displayName: .literal('TerraDart training run'),
        dependsOn: [experiment],
      ),
    );

    // Project-level GenAI cache config (singleton per project). Free to toggle;
    // destroyed cleanly when removed from Terraform state.
    add(
      GoogleVertexAiCacheConfig(
        'genai_cache',
        disableCache: .literal(false),
        dependsOn: [apiVertex],
      ),
    );

    // A reusable LLM-based evaluation metric; `metric` is the API's Metric
    // message as a JSON string.
    add(
      GoogleVertexAiEvaluationMetric(
        'response_quality',
        evaluationMetricId: .literal('terradart-response-quality'),
        region: .literal('us-central1'),
        displayName: .literal('Response quality'),
        metric: .literal(
          jsonEncode({
            'llmBasedMetricSpec': {
              'metricPromptTemplate':
                  'Rate the quality of the following response on a scale of '
                  '1 to 5. Response: {response}',
            },
          }),
        ),
        dependsOn: [apiVertex],
      ),
    );

    // Literal feature-group name -- emitted as a Dart constant at synth time.
    addConstant('featureGroupName', .ref(featureGroup.name));

    // Full feature-group resource id -- Terraform output only (computed).
    addOutput('feature_group_id', featureGroup.id);
  }
}
