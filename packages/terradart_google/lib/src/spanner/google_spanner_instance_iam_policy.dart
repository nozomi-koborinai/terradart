// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_spanner_instance_iam_policy`.
const Set<String> _googleSpannerInstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_spanner_instance_iam_policy`.
///
/// Authoritative IAM policy for a Spanner instance.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleSpannerInstanceIamMember] for single-principal grants.
final class GoogleSpannerInstanceIamPolicy extends Resource {
  static const String tfType = 'google_spanner_instance_iam_policy';

  GoogleSpannerInstanceIamPolicy({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerInstanceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
