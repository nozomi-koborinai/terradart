// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_datapolicy_data_policy`.
const Set<String> _googleBigqueryDatapolicyDataPolicySensitive = <String>{};

/// Enrollment level for `google_bigquery_datapolicy_data_policy.data_policy_type`.
enum BigqueryDatapolicyDataPolicyType implements TerraformEnum {
  columnLevelSecurityPolicy('COLUMN_LEVEL_SECURITY_POLICY'),
  dataMaskingPolicy('DATA_MASKING_POLICY');

  const BigqueryDatapolicyDataPolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

enum BigqueryDatapolicyDataPolicyPredefinedExpression implements TerraformEnum {
  sha256('SHA256'),
  alwaysNull('ALWAYS_NULL'),
  defaultMaskingValue('DEFAULT_MASKING_VALUE'),
  lastFourCharacters('LAST_FOUR_CHARACTERS'),
  firstFourCharacters('FIRST_FOUR_CHARACTERS'),
  emailMask('EMAIL_MASK'),
  dateYearMask('DATE_YEAR_MASK');

  const BigqueryDatapolicyDataPolicyPredefinedExpression(this.terraformValue);
  @override
  final String terraformValue;
}

@immutable
class BigqueryDatapolicyDataPolicyDataMaskingPolicy {
  const BigqueryDatapolicyDataPolicyDataMaskingPolicy({
    required this.predefinedExpression,
  });

  final BigqueryDatapolicyDataPolicyPredefinedExpression predefinedExpression;

  Map<String, Object?> encode() => {
    'predefined_expression': predefinedExpression.terraformValue,
  };
}

/// Factory wrapper for `google_bigquery_datapolicy_data_policy`.
///
/// A BigQuery Data Policy
final class GoogleBigqueryDatapolicyDataPolicy extends Resource {
  static const String tfType = 'google_bigquery_datapolicy_data_policy';

  GoogleBigqueryDatapolicyDataPolicy({
    required super.localName,
    required TfArg<String> dataPolicyId,
    required TfArg<BigqueryDatapolicyDataPolicyType> dataPolicyType,
    required TfArg<String> location,
    required TfArg<String> policyTag,
    TfArg<String>? project,
    BigqueryDatapolicyDataPolicyDataMaskingPolicy? dataMaskingPolicy,
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
             'data_masking_policy': TfArg.literal([dataMaskingPolicy.encode()]),
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
