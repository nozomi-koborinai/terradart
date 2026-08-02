// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_colab_runtime_template_iam_policy`.
const Set<String> _googleColabRuntimeTemplateIamPolicySensitive = <String>{};

/// Factory wrapper for `google_colab_runtime_template_iam_policy`.
///
/// Authoritative IAM policy for a Colab Enterprise runtime template.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleColabRuntimeTemplateIamMember] for single-principal grants.
final class GoogleColabRuntimeTemplateIamPolicy extends Resource {
  static const String tfType = 'google_colab_runtime_template_iam_policy';

  GoogleColabRuntimeTemplateIamPolicy({
    required super.localName,
    required TfArg<String> runtimeTemplate,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'runtime_template': runtimeTemplate,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleColabRuntimeTemplateIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
