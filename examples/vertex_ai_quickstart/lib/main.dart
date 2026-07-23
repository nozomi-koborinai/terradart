/// Vertex AI Feature Store quickstart -- an end-to-end terradart example.
///
/// Defines a `FeatureStack` that enables the Vertex AI API and provisions a
/// BigQuery-backed Vertex AI feature group:
/// - a BigQuery dataset + table (the feature source, keyed by `entity_id`),
/// - a `google_vertex_ai_feature_group` reading from that table,
/// - a `google_vertex_ai_feature_group_feature` for the `feature_score` column,
/// - Tensorboard experiment tracking (tensorboard + experiment + run),
/// - a far-future Vertex AI pipeline schedule (metadata only during smoke).
///
/// The BigQuery `big_query` config is passed as a structured map (the thin
/// curated factory exposes it as `TfArg<Map<String, dynamic>>`). All resources
/// are free to define, so the stack creates and destroys cleanly in a single
/// project.
///
/// Exports the feature group name as a typed Dart constant via
/// `Stack.addExport`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';
import 'package:terradart_google/vertex_ai.dart';

/// Vertex AI Stack: a BigQuery-backed feature group.
final class FeatureStack extends Stack {
  FeatureStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiVertex = add(
      GoogleProjectService(
        localName: 'api_aiplatform',
        service: TfArg.literal('aiplatform.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    // The feature group's source lives in BigQuery, so enable that API too
    // (an example that enables any API must enable every API its resources
    // need -- enforced by tool/example_synth_gates.dart).
    final apiBigquery = add(
      GoogleProjectService(
        localName: 'api_bigquery',
        service: TfArg.literal('bigquery.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiStorage = add(
      GoogleProjectService(
        localName: 'api_storage',
        service: TfArg.literal('storage.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final dataset = add(
      GoogleBigqueryDataset(
        localName: 'features',
        datasetId: TfArg.literal('vertex_features'),
        location: TfArg.literal('us-central1'),
        deleteContentsOnDestroy: TfArg.literal(true),
        dependsOn: [ResourceDependency(apiBigquery)],
      ),
    );

    final table = add(
      GoogleBigqueryTable(
        localName: 'entities',
        datasetId: TfArg.ref(dataset.datasetIdRef),
        tableId: TfArg.literal('entities'),
        deletionProtection: TfArg.literal(false),
        schema: TfArg.literal(
          '[{"name":"entity_id","type":"STRING","mode":"REQUIRED"},'
          '{"name":"feature_score","type":"FLOAT64","mode":"NULLABLE"},'
          '{"name":"feature_timestamp","type":"TIMESTAMP","mode":"NULLABLE"}]',
        ),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );

    final featureGroup = add(
      GoogleVertexAiFeatureGroup(
        localName: 'customer_features',
        name: TfArg.literal('terradart_customer_features'),
        region: TfArg.literal('us-central1'),
        description: TfArg.literal('Customer features backed by BigQuery'),
        bigQuery: TfArg.literal(<String, Object?>{
          'big_query_source': {
            'input_uri': 'bq://$projectId.vertex_features.entities',
          },
          'entity_id_columns': ['entity_id'],
        }),
        dependsOn: [
          ResourceDependency(apiVertex),
          ResourceDependency(table),
        ],
      ),
    );

    add(
      GoogleVertexAiFeatureGroupFeature(
        localName: 'feature_score',
        featureGroup: TfArg.ref(featureGroup.nameRef),
        name: TfArg.literal('feature_score'),
        region: TfArg.literal('us-central1'),
        versionColumnName: TfArg.literal('feature_score'),
        description: TfArg.literal('Customer score from BigQuery'),
        dependsOn: [ResourceDependency(featureGroup)],
      ),
    );

    // A managed Vertex AI dataset (image dataset; the metadata schema URI is
    // a public Google-hosted schema). Free to define.
    add(
      GoogleVertexAiDataset(
        localName: 'images',
        displayName: TfArg.literal('terradart-image-dataset'),
        metadataSchemaUri: TfArg.literal(
          'gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml',
        ),
        region: TfArg.literal('us-central1'),
        dependsOn: [ResourceDependency(apiVertex)],
      ),
    );

    // A Vertex AI Tensorboard for experiment visualization. Empty Tensorboards
    // are free; created and destroyed cleanly.
    final tensorboard = add(
      GoogleVertexAiTensorboard(
        localName: 'experiments',
        displayName: TfArg.literal('terradart-experiments'),
        description: TfArg.literal('Experiment metrics (demo)'),
        region: TfArg.literal('us-central1'),
        dependsOn: [ResourceDependency(apiVertex)],
      ),
    );

    const experimentId = 'terradart-experiment';

    // The experiment/run APIs place `tensorboard` as ONE path segment
    // (…/tensorboards/{tensorboard}/experiments), so they need the short
    // numeric ID — the full resource name in `tensorboard.name` produces a
    // doubled path and a 404. Extract the trailing segment.
    final tensorboardShortId = TfArg.literal(
      '\${element(split("/", ${tensorboard.nameRef.bareAddress}), 5)}',
    );

    final experiment = add(
      GoogleVertexAiTensorboardExperiment(
        localName: 'training_experiment',
        tensorboardExperimentId: TfArg.literal(experimentId),
        tensorboard: tensorboardShortId,
        location: TfArg.literal('us-central1'),
        displayName: TfArg.literal('TerraDart training experiment'),
        description: TfArg.literal('Demo experiment for apply-smoke'),
        dependsOn: [ResourceDependency(tensorboard)],
      ),
    );

    add(
      GoogleVertexAiTensorboardRun(
        localName: 'training_run',
        tensorboardRunId: TfArg.literal('terradart-run'),
        experiment: TfArg.literal(experimentId),
        tensorboard: tensorboardShortId,
        location: TfArg.literal('us-central1'),
        displayName: TfArg.literal('TerraDart training run'),
        dependsOn: [ResourceDependency(experiment)],
      ),
    );

    final pipelineRoot = add(
      GoogleStorageBucket(
        localName: 'pipeline_root',
        name: TfArg.literal('$projectId-vertex-pipeline-root'),
        location: TfArg.literal('US'),
        forceDestroy: TfArg.literal(true),
        uniformBucketLevelAccess: TfArg.literal(true),
        dependsOn: [ResourceDependency(apiStorage)],
      ),
    );

    add(
      GoogleVertexAiSchedule(
        localName: 'pipeline_schedule',
        displayName: TfArg.literal('terradart-pipeline-schedule'),
        location: TfArg.literal('us-central1'),
        cron: TfArg.literal('0 0 1 1 *'),
        maxConcurrentRunCount: TfArg.literal('1'),
        startTime: TfArg.literal('2035-01-01T00:00:00Z'),
        endTime: TfArg.literal('2035-01-02T00:00:00Z'),
        createPipelineJobRequest: TfArg.literal(<String, Object?>{
          'parent': 'projects/$projectId/locations/us-central1',
          'pipeline_job': {
            'display_name': 'terradart-empty-pipeline',
            'pipeline_spec': '''
{
  "pipelineInfo": {"name": "terradart-empty"},
  "root": {"dag": {"tasks": {}}},
  "schemaVersion": "2.1.0",
  "sdkVersion": "kfp-2.0.0"
}
''',
            'runtime_config': {
              'gcs_output_directory':
                  'gs://$projectId-vertex-pipeline-root/pipeline_root',
            },
          },
        }),
        dependsOn: [
          ResourceDependency(apiVertex),
          ResourceDependency(pipelineRoot),
        ],
      ),
    );

    // Project-level GenAI cache config (singleton per project). Free to toggle;
    // destroyed cleanly when removed from Terraform state.
    add(
      GoogleVertexAiCacheConfig(
        localName: 'genai_cache',
        disableCache: TfArg.literal(false),
        dependsOn: [ResourceDependency(apiVertex)],
      ),
    );

    // Literal feature-group name -- emitted as a Dart constant at synth time.
    addExport(
      'FEATURE_GROUP_NAME',
      StringExport('terradart_customer_features'),
    );

    // Full feature-group resource id -- Terraform output only (computed).
    addExport(
      'FEATURE_GROUP_ID',
      ResourceIdExport(featureGroup.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/feature_stack.app.dart');
  }
}
