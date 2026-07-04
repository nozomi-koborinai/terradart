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
  }) : super(
         terraformType: tfType,
         argMap: {
           'tensorboard_experiment_id': tensorboardExperimentId,
           'tensorboard': tensorboard,
           'location': location,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (source != null) 'source': source,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiTensorboardExperimentSensitive;

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
