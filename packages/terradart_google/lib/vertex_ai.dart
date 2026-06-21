// packages/terradart_google/lib/vertex_ai.dart
/// Vertex AI — feature store feature groups (backed by a BigQuery source),
/// managed datasets, experiment Tensorboards, and GenAI cache config.
/// Nested config blocks (e.g. `encryption_spec`) are passed as structured maps.
library;

export 'src/vertex_ai/google_vertex_ai_cache_config.dart'
    show GoogleVertexAiCacheConfig;
export 'src/vertex_ai/google_vertex_ai_dataset.dart'
    show GoogleVertexAiDataset;
export 'src/vertex_ai/google_vertex_ai_feature_group.dart'
    show GoogleVertexAiFeatureGroup;
export 'src/vertex_ai/google_vertex_ai_tensorboard.dart'
    show GoogleVertexAiTensorboard;
