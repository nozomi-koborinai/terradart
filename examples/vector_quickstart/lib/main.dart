/// Vector Search 2.0 collection + data object quickstart.
///
/// Enables `vectorsearch.googleapis.com` and creates:
/// - a regional [GoogleVectorSearchCollection] with a minimal data schema and
///   a dense vector field (dimensions only — no Vertex embedding config),
/// - one [GoogleVectorSearchDataObject] row (zero vector) in that collection.
///
/// **Apply-smoke:** listed in `tool/apply_smoke_skip.yaml` so real apply is
/// skipped — DataObject meters Write Ops (`C1E5-1A7F-E9B3` ~$0.18/count) and
/// payload storage. Synth + `terraform validate` still cover both factories.
///
/// `google_vector_search_index` stays in `tool/example_debt.yaml` (hourly
/// capacity-unit defaults).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/vector.dart';

/// Vector Search stack: schema collection + one payload data object.
final class VectorSearchStack extends Stack {
  VectorSearchStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    const location = 'us-central1';
    // Match collection vector_schema dimensions; zeros avoid inventing content.
    final zeroEmbedding = List<Object?>.filled(768, 0.0);

    final apiVectorSearch = add(
      GoogleProjectService(
        localName: 'api_vectorsearch',
        service: TfArg.literal('vectorsearch.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final collection = add(
      GoogleVectorSearchCollection(
        localName: 'docs',
        location: TfArg.literal(location),
        collectionId: TfArg.literal('terradart-docs'),
        displayName: TfArg.literal('TerraDart docs'),
        description: TfArg.literal('Vector Search collection + data object'),
        dataSchema: TfArg.literal(
          '{"type":"object","properties":{"title":{"type":"string"},'
          '"plot":{"type":"string"}}}',
        ),
        vectorSchema: [
          VectorSearchCollectionVectorSchema(
            fieldName: TfArg.literal('text_embedding'),
            denseVector: VectorSearchCollectionVectorSchemaDenseVector(
              dimensions: TfArg.literal(768),
            ),
          ),
        ],
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(apiVectorSearch)],
      ),
    );

    add(
      GoogleVectorSearchDataObject(
        localName: 'sample_doc',
        location: TfArg.literal(location),
        collectionId: TfArg.ref(collection.collectionIdRef),
        dataObjectId: TfArg.literal('terradart-sample-doc'),
        data: TfArg.literal(
          '{"title":"TerraDart smoke","plot":"Schema coverage only"}',
        ),
        vectors: [
          VectorSearchDataObjectVectors(
            fieldName: TfArg.literal('text_embedding'),
            dense: VectorSearchDataObjectVectorsDense(
              values: TfArg.literal(zeroEmbedding),
            ),
          ),
        ],
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [
          ResourceDependency(apiVectorSearch),
          ResourceDependency(collection),
        ],
      ),
    );
  }
}
