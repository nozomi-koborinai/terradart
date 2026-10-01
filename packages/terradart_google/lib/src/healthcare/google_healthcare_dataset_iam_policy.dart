// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_dataset.dart'
    show GoogleHealthcareDataset;

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

  GoogleHealthcareDatasetIamPolicy(
    super.localName, {
    required RefTo<GoogleHealthcareDataset> dataset,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': dataset.encodeAs('id'),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareDatasetIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareDatasetIamPolicy>`.
  RefTo<GoogleHealthcareDatasetIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetId => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
