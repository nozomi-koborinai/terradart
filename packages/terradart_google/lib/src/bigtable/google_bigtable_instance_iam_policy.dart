// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigtable_instance_iam_policy`.
const Set<String> _googleBigtableInstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_bigtable_instance_iam_policy`.
///
/// Authoritative IAM policy for a Bigtable instance.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleBigtableInstanceIamMember] for single-principal grants.
final class GoogleBigtableInstanceIamPolicy extends Resource {
  static const String tfType = 'google_bigtable_instance_iam_policy';

  GoogleBigtableInstanceIamPolicy({
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
  Set<String> get sensitiveFields => _googleBigtableInstanceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
