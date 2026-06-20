// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_custom_target_type`.
const Set<String> _googleClouddeployCustomTargetTypeSensitive = <String>{};

/// Factory wrapper for `google_clouddeploy_custom_target_type`.
final class GoogleClouddeployCustomTargetType extends Resource {
  static const String tfType = 'google_clouddeploy_custom_target_type';

  GoogleClouddeployCustomTargetType({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<Map<String, dynamic>>? customActions,
    TfArg<Map<String, dynamic>>? tasks,
    TfArg<String>? description,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           if (customActions != null) 'custom_actions': customActions,
           if (tasks != null) 'tasks': tasks,
           if (description != null) 'description': description,
           if (annotations != null) 'annotations': annotations,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleClouddeployCustomTargetTypeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `custom_target_type_id` attribute.
  TfRef<String> get customTargetTypeId =>
      TfRef.attribute<String>(this, 'custom_target_type_id');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
