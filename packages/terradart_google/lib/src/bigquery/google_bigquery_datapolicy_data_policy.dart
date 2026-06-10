// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_datapolicy_data_policy`.
const Set<String> _googleBigqueryDatapolicyDataPolicySensitive = <String>{};

/// Factory wrapper for `google_bigquery_datapolicy_data_policy`.
final class GoogleBigqueryDatapolicyDataPolicy extends Resource {
  static const String tfType = 'google_bigquery_datapolicy_data_policy';

  GoogleBigqueryDatapolicyDataPolicy({
    required super.localName,
    required TfArg<String> dataPolicyId,
    required TfArg<String> dataPolicyType,
    required TfArg<String> location,
    required TfArg<String> policyTag,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? dataMaskingPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_policy_id': dataPolicyId,
           'data_policy_type': dataPolicyType,
           'location': location,
           'policy_tag': policyTag,
           if (project != null) 'project': project,
           if (dataMaskingPolicy != null)
             'data_masking_policy': dataMaskingPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDatapolicyDataPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
