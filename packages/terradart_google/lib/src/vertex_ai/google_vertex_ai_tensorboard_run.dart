// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_tensorboard_run`.
const Set<String> _googleVertexAiTensorboardRunSensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_tensorboard_run`.
///
/// A TensorboardRun is a single execution of a training job.
///
///
/// **Gotcha:** `tensorboard` is embedded as a single URL path segment
/// (`…/tensorboards/{tensorboard}/experiments`), so pass the Tensorboard's
/// **short numeric ID** — the trailing segment of its `name` — not the full
/// resource name (a full path doubles the URL and the API returns 404).
/// From a managed instance: `element(split("/", <tensorboard>.name), 5)`.
final class GoogleVertexAiTensorboardRun extends Resource {
  static const String tfType = 'google_vertex_ai_tensorboard_run';

  GoogleVertexAiTensorboardRun({
    required super.localName,
    required TfArg<String> tensorboardRunId,
    required TfArg<String> experiment,
    required TfArg<String> tensorboard,
    required TfArg<String> location,
    required TfArg<String> displayName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tensorboard_run_id': tensorboardRunId,
           'experiment': experiment,
           'tensorboard': tensorboard,
           'location': location,
           'display_name': displayName,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiTensorboardRunSensitive;

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

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
