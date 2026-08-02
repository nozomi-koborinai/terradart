// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_dataset_iam_policy`.
const Set<String> _googleHealthcareDatasetIamPolicySensitive = <String>{};

/// Factory wrapper for `google_healthcare_dataset_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Healthcare dataset.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleHealthcareDatasetIamMember] for single-principal grants.
final class GoogleHealthcareDatasetIamPolicy extends Resource {
  static const String tfType = 'google_healthcare_dataset_iam_policy';

  GoogleHealthcareDatasetIamPolicy({
    required super.localName,
    required TfArg<String> datasetId,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'dataset_id': datasetId, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareDatasetIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
