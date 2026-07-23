// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_rag_engine_config`.
const Set<String> _googleVertexAiRagEngineConfigSensitive = <String>{};

// ===========================================================================
// VertexAiRagEngineConfigManagedDbTier — sealed (Basic | Scaled | Unprovisioned)
// ===========================================================================

/// RagManagedDb tier for [GoogleVertexAiRagEngineConfig]. Sealed so the MM
/// `exactly_one_of` under `rag_managed_db_config` is exhaustive at the type
/// level. Each variant is an empty nested block (`allow_empty_object`).
sealed class VertexAiRagEngineConfigManagedDbTier {
  const VertexAiRagEngineConfigManagedDbTier();

  /// Inner block key under `rag_managed_db_config` (`basic` / `scaled` /
  /// `unprovisioned`).
  String get tierKey;

  /// Encodes as `rag_managed_db_config` list max 1:
  /// `[{ <tierKey>: [{}] }]`.
  List<Map<String, Object?>> encode() => [
    {
      tierKey: const [<String, Object?>{}],
    },
  ];
}

/// `basic` tier — cost-effective default for experiments / small data.
@immutable
final class VertexAiRagEngineConfigBasic
    extends VertexAiRagEngineConfigManagedDbTier {
  const VertexAiRagEngineConfigBasic();

  @override
  String get tierKey => 'basic';
}

/// `scaled` tier — production-grade performance with autoscaling.
@immutable
final class VertexAiRagEngineConfigScaled
    extends VertexAiRagEngineConfigManagedDbTier {
  const VertexAiRagEngineConfigScaled();

  @override
  String get tierKey => 'scaled';
}

/// `unprovisioned` — disables RAG Engine and deletes managed data.
@immutable
final class VertexAiRagEngineConfigUnprovisioned
    extends VertexAiRagEngineConfigManagedDbTier {
  const VertexAiRagEngineConfigUnprovisioned();

  @override
  String get tierKey => 'unprovisioned';
}

/// Factory wrapper for `google_vertex_ai_rag_engine_config`.
///
/// Vertex AI RAG Engine lets you scale your RagManagedDb instance based on your
/// usage and performance requirements using a choice of two tiers, and
/// optionally, lets you delete your Vertex AI RAG Engine data using a third
/// tier. The tier is a project-level setting that's available in the
/// RagEngineConfig resource that impacts all RAG corpora using RagManagedDb.
/// The following tiers are available in RagEngineConfig: Basic, Scaled and
/// Unprovisioned.
///
/// Vertex AI **RAG Engine config** — project/location singleton that sets
/// the RagManagedDb compute tier for Vertex AI RAG Engine.
///
/// Choose exactly one [VertexAiRagEngineConfigManagedDbTier]:
/// - [VertexAiRagEngineConfigBasic] — default low-compute tier.
/// - [VertexAiRagEngineConfigScaled] — production autoscaling tier.
/// - [VertexAiRagEngineConfigUnprovisioned] — disables RAG Engine and
///   deletes managed data (halts billing; data is not recoverable).
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` has **no
/// RagManagedDb / RAG Engine SKU** after MCP `list_skus` (keywords
/// `RagManaged` / `RAG Engine` → 0). Scaled is documented as
/// production-grade compute; unprovisioned deletes data. Deferred
/// without an apply-smoke quickstart.
///
/// Enable `aiplatform.googleapis.com` via [GoogleProjectService] before
/// apply. At most one config exists per `(project, region)`.
///
/// Example:
/// ```dart
/// GoogleVertexAiRagEngineConfig(
///   localName: 'rag',
///   region: TfArg.literal('us-central1'),
///   ragManagedDbConfig: const VertexAiRagEngineConfigBasic(),
/// );
/// ```
final class GoogleVertexAiRagEngineConfig extends Resource {
  static const String tfType = 'google_vertex_ai_rag_engine_config';

  GoogleVertexAiRagEngineConfig({
    required super.localName,
    required TfArg<String> region,
    required VertexAiRagEngineConfigManagedDbTier ragManagedDbConfig,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': region,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'rag_managed_db_config': TfArg.literal(ragManagedDbConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiRagEngineConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
