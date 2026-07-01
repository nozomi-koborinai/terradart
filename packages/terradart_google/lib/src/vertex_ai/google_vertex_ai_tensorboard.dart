// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_tensorboard`.
const Set<String> _googleVertexAiTensorboardSensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_tensorboard`.
///
/// Tensorboard is a physical database that stores users' training metrics. A
/// default Tensorboard is provided in each region of a GCP project. If needed
/// users can also create extra Tensorboards in their projects.
final class GoogleVertexAiTensorboard extends Resource {
  static const String tfType = 'google_vertex_ai_tensorboard';

  GoogleVertexAiTensorboard({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<Map<String, dynamic>>? encryptionSpec,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           if (encryptionSpec != null) 'encryption_spec': encryptionSpec,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiTensorboardSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `blob_storage_path_prefix` attribute.
  TfRef<String> get blobStoragePathPrefix =>
      TfRef.attribute<String>(this, 'blob_storage_path_prefix');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `run_count` attribute.
  TfRef<String> get runCount => TfRef.attribute<String>(this, 'run_count');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
