// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_colab_runtime_template_iam_member`.
const Set<String> _googleColabRuntimeTemplateIamMemberSensitive = <String>{};

/// Factory wrapper for `google_colab_runtime_template_iam_member`.
///
/// Adds a single IAM `role` → `member` binding on a
/// [GoogleColabRuntimeTemplate]. Prefer an in-stack service account for
/// apply-smoke (placeholder identities fail at apply).
final class GoogleColabRuntimeTemplateIamMember extends Resource {
  static const String tfType = 'google_colab_runtime_template_iam_member';

  GoogleColabRuntimeTemplateIamMember({
    required super.localName,
    required TfArg<String> runtimeTemplate,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'runtime_template': runtimeTemplate,
           'role': role,
           'member': member,
           if (location != null) 'location': location,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleColabRuntimeTemplateIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
