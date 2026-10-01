// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../colab/google_colab_runtime_template.dart'
    show GoogleColabRuntimeTemplate;

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

  GoogleColabRuntimeTemplateIamPolicy(
    super.localName, {
    required RefTo<GoogleColabRuntimeTemplate> runtimeTemplate,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'runtime_template': runtimeTemplate.encodeAs('name'),
           'policy_data': policyData,
           'location': ?(location ?? runtimeTemplate.alsoAs('location')),
           'project': ?(project ?? runtimeTemplate.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleColabRuntimeTemplateIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleColabRuntimeTemplateIamPolicy>`.
  RefTo<GoogleColabRuntimeTemplateIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `runtime_template` attribute.
  TfRef<String> get runtimeTemplate =>
      TfRef.attribute<String>(this, 'runtime_template');
}
