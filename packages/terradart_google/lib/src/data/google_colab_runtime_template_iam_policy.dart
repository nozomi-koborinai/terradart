// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../colab/google_colab_runtime_template_iam_policy.dart';

/// Sensitive field paths for `google_colab_runtime_template_iam_policy`.
const Set<String> _googleColabRuntimeTemplateIamPolicySensitive = <String>{};

/// Factory wrapper for `google_colab_runtime_template_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleColabRuntimeTemplateIamPolicy extends Data {
  static const String tfType = 'google_colab_runtime_template_iam_policy';

  DataGoogleColabRuntimeTemplateIamPolicy({
    required super.localName,
    TfArg<String>? location,
    TfArg<String>? project,
    required TfArg<String> runtimeTemplate,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?location,
           'project': ?project,
           'runtime_template': runtimeTemplate,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleColabRuntimeTemplateIamPolicySensitive;

  /// A reference to the `google_colab_runtime_template_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleColabRuntimeTemplateIamPolicy>`.
  RefTo<GoogleColabRuntimeTemplateIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
