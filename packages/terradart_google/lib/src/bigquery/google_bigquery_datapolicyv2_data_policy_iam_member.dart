// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_datapolicyv2_data_policy_iam_member`.
const Set<String> _googleBigqueryDatapolicyv2DataPolicyIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_bigquery_datapolicyv2_data_policy_iam_member`.
///
/// Additive IAM grant on a [GoogleBigqueryDatapolicyv2DataPolicy]. Prefer
/// this over binding/policy when adding one (`role`, `member`) tuple.
///
/// Example:
/// ```dart
/// GoogleBigqueryDatapolicyv2DataPolicyIamMember(
///   localName: 'raw_reader',
///   dataPolicyId: TfArg.literal('raw-access'),
///   location: TfArg.literal('us-central1'),
///   role: TfArg.literal('roles/bigquerydatapolicy.maskedReader'),
///   member: TfArg.ref(reader.iamMember),
/// );
/// ```
final class GoogleBigqueryDatapolicyv2DataPolicyIamMember extends Resource {
  static const String tfType =
      'google_bigquery_datapolicyv2_data_policy_iam_member';

  GoogleBigqueryDatapolicyv2DataPolicyIamMember({
    required super.localName,
    required TfArg<String> dataPolicyId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_policy_id': dataPolicyId,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDatapolicyv2DataPolicyIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
