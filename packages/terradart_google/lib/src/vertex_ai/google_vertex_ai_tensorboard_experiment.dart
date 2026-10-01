// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_tensorboard_experiment`.
const Set<String> _googleVertexAiTensorboardExperimentSensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_tensorboard_experiment`.
///
/// A TensorboardExperiment is a group of TensorboardRuns that are logically
/// grouped together.
///
///
/// **Gotcha:** `tensorboard` is embedded as a single URL path segment
/// (`…/tensorboards/{tensorboard}/experiments`), so pass the Tensorboard's
/// **short numeric ID** — the trailing segment of its `name` — not the full
/// resource name (a full path doubles the URL and the API returns 404).
/// From a managed instance: `element(split("/", <tensorboard>.name), 5)`.
final class GoogleVertexAiTensorboardExperiment extends Resource {
  static const String tfType = 'google_vertex_ai_tensorboard_experiment';

  GoogleVertexAiTensorboardExperiment({
    required super.localName,
    required TfArg<String> tensorboardExperimentId,
    required TfArg<String> tensorboard,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? source,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tensorboard_experiment_id': tensorboardExperimentId,
           'tensorboard': tensorboard,
           'location': location,
           'display_name': ?displayName,
           'description': ?description,
           'labels': ?labels,
           'source': ?source,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiTensorboardExperimentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiTensorboardExperiment>`.
  RefTo<GoogleVertexAiTensorboardExperiment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `tensorboard` attribute.
  TfRef<String> get tensorboard => TfRef.attribute<String>(this, 'tensorboard');

  /// Reference to `tensorboard_experiment_id` attribute.
  TfRef<String> get tensorboardExperimentId =>
      TfRef.attribute<String>(this, 'tensorboard_experiment_id');
}
