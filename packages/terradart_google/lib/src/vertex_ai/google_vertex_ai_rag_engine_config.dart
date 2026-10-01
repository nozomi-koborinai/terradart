// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_rag_engine_config`.
const Set<String> _googleVertexAiRagEngineConfigSensitive = <String>{};

/// Exactly one of `scaled`, `basic`, `unprovisioned` on the `rag_managed_db_config` block of `google_vertex_ai_rag_engine_config`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.scaled(...)`.
sealed class VertexAiRagEngineConfigRagManagedDbConfig {
  const VertexAiRagEngineConfigRagManagedDbConfig();

  /// Sets `scaled`.
  const factory VertexAiRagEngineConfigRagManagedDbConfig.scaled(
    VertexAiRagEngineConfigScaled scaled,
  ) = VertexAiRagEngineConfigRagManagedDbConfigScaled;

  /// Sets `basic`.
  const factory VertexAiRagEngineConfigRagManagedDbConfig.basic(
    VertexAiRagEngineConfigBasic basic,
  ) = VertexAiRagEngineConfigRagManagedDbConfigBasic;

  /// Sets `unprovisioned`.
  const factory VertexAiRagEngineConfigRagManagedDbConfig.unprovisioned(
    VertexAiRagEngineConfigUnprovisioned unprovisioned,
  ) = VertexAiRagEngineConfigRagManagedDbConfigUnprovisioned;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VertexAiRagEngineConfigRagManagedDbConfig.scaled] choice: sets `scaled`.
final class VertexAiRagEngineConfigRagManagedDbConfigScaled
    extends VertexAiRagEngineConfigRagManagedDbConfig {
  const VertexAiRagEngineConfigRagManagedDbConfigScaled(this.scaled);

  final VertexAiRagEngineConfigScaled scaled;

  @internal
  @override
  String get blockKey => 'scaled';

  @internal
  @override
  Map<String, Object?> encode() => {'scaled': scaled.encode()};
}

/// The [VertexAiRagEngineConfigRagManagedDbConfig.basic] choice: sets `basic`.
final class VertexAiRagEngineConfigRagManagedDbConfigBasic
    extends VertexAiRagEngineConfigRagManagedDbConfig {
  const VertexAiRagEngineConfigRagManagedDbConfigBasic(this.basic);

  final VertexAiRagEngineConfigBasic basic;

  @internal
  @override
  String get blockKey => 'basic';

  @internal
  @override
  Map<String, Object?> encode() => {'basic': basic.encode()};
}

/// The [VertexAiRagEngineConfigRagManagedDbConfig.unprovisioned] choice: sets `unprovisioned`.
final class VertexAiRagEngineConfigRagManagedDbConfigUnprovisioned
    extends VertexAiRagEngineConfigRagManagedDbConfig {
  const VertexAiRagEngineConfigRagManagedDbConfigUnprovisioned(
    this.unprovisioned,
  );

  final VertexAiRagEngineConfigUnprovisioned unprovisioned;

  @internal
  @override
  String get blockKey => 'unprovisioned';

  @internal
  @override
  Map<String, Object?> encode() => {'unprovisioned': unprovisioned.encode()};
}

/// Typed helper for the `rag_managed_db_config.basic` block of
/// `google_vertex_ai_rag_engine_config` (derived from provider schema).
@immutable
final class VertexAiRagEngineConfigBasic {
  const VertexAiRagEngineConfigBasic();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `rag_managed_db_config.scaled` block of
/// `google_vertex_ai_rag_engine_config` (derived from provider schema).
@immutable
final class VertexAiRagEngineConfigScaled {
  const VertexAiRagEngineConfigScaled();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `rag_managed_db_config.unprovisioned` block of
/// `google_vertex_ai_rag_engine_config` (derived from provider schema).
@immutable
final class VertexAiRagEngineConfigUnprovisioned {
  const VertexAiRagEngineConfigUnprovisioned();

  @internal
  Map<String, Object?> encode() => {};
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
/// [ragManagedDbConfig] is exactly one tier:
/// - `.basic(...)` — default low-compute tier.
/// - `.scaled(...)` — production autoscaling tier.
/// - `.unprovisioned(...)` — disables RAG Engine and deletes managed data
///   (halts billing; data is not recoverable).
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
///   'rag',
///   region: TfArg.literal('us-central1'),
///   ragManagedDbConfig: const .basic(
///     .new(),
///   ),
/// );
/// ```
final class GoogleVertexAiRagEngineConfig extends Resource {
  static const String tfType = 'google_vertex_ai_rag_engine_config';

  GoogleVertexAiRagEngineConfig(
    super.localName, {
    required TfArg<String> region,
    required VertexAiRagEngineConfigRagManagedDbConfig ragManagedDbConfig,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': region,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
           'rag_managed_db_config': TfArg.literal(ragManagedDbConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiRagEngineConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiRagEngineConfig>`.
  RefTo<GoogleVertexAiRagEngineConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
