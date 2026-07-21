/// Vector Search 2.0 collection quickstart.
///
/// Enables `vectorsearch.googleapis.com` and creates a regional
/// `google_vector_search_collection` with a minimal data schema and a dense
/// vector field (dimensions only — no Vertex embedding config). Collection
/// metadata alone does not provision index-serving capacity units.
///
/// `google_vector_search_index` is curated but deferred to
/// `tool/example_debt.yaml` because the API defaults dedicated infrastructure
/// to two PERFORMANCE_OPTIMIZED replicas (hourly capacity-unit billing).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/vector.dart';

/// Vector Search stack: schema-only collection.
final class VectorSearchStack extends Stack {
  VectorSearchStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiVectorSearch = add(
      GoogleProjectService(
        localName: 'api_vectorsearch',
        service: TfArg.literal('vectorsearch.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleVectorSearchCollection(
        localName: 'docs',
        location: TfArg.literal('us-central1'),
        collectionId: TfArg.literal('terradart-docs'),
        displayName: TfArg.literal('TerraDart docs'),
        description: TfArg.literal('Schema-only Vector Search collection'),
        dataSchema: TfArg.literal(
          '{"type":"object","properties":{"title":{"type":"string"},'
          '"plot":{"type":"string"}}}',
        ),
        vectorSchema: [
          VectorSearchCollectionVectorSchema(
            fieldName: TfArg.literal('text_embedding'),
            denseVector: const VectorSearchCollectionVectorSchemaDenseVector(
              dimensions: TfArg.literal(768),
            ),
          ),
        ],
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(apiVectorSearch)],
      ),
    );
  }
}
