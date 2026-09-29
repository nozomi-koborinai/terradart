// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
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

/// Exactly one of `predefined_expression`, `routine` on the `data_masking_policy` block of `google_bigquery_datapolicy_data_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.predefinedExpression(...)`.
sealed class BigqueryDatapolicyDataPolicyDataMaskingPolicy {
  const BigqueryDatapolicyDataPolicyDataMaskingPolicy();

  /// Sets `predefined_expression`.
  const factory BigqueryDatapolicyDataPolicyDataMaskingPolicy.predefinedExpression(
    TfArg<BigqueryDatapolicyDataPolicyPredefinedExpression>
    predefinedExpression,
  ) = BigqueryDatapolicyDataPolicyDataMaskingPolicyPredefinedExpression;

  /// Sets `routine`.
  const factory BigqueryDatapolicyDataPolicyDataMaskingPolicy.routine(
    TfArg<String> routine,
  ) = BigqueryDatapolicyDataPolicyDataMaskingPolicyRoutine;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BigqueryDatapolicyDataPolicyDataMaskingPolicy.predefinedExpression] choice: sets `predefined_expression`.
final class BigqueryDatapolicyDataPolicyDataMaskingPolicyPredefinedExpression
    extends BigqueryDatapolicyDataPolicyDataMaskingPolicy {
  const BigqueryDatapolicyDataPolicyDataMaskingPolicyPredefinedExpression(
    this.predefinedExpression,
  );

  final TfArg<BigqueryDatapolicyDataPolicyPredefinedExpression>
  predefinedExpression;

  @override
  String get blockKey => 'predefined_expression';

  @override
  Map<String, Object?> encode() => {
    'predefined_expression': predefinedExpression.toTfJson(),
  };
}

/// The [BigqueryDatapolicyDataPolicyDataMaskingPolicy.routine] choice: sets `routine`.
final class BigqueryDatapolicyDataPolicyDataMaskingPolicyRoutine
    extends BigqueryDatapolicyDataPolicyDataMaskingPolicy {
  const BigqueryDatapolicyDataPolicyDataMaskingPolicyRoutine(this.routine);

  final TfArg<String> routine;

  @override
  String get blockKey => 'routine';

  @override
  Map<String, Object?> encode() => {'routine': routine.toTfJson()};
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_policy_id': dataPolicyId,
           'data_policy_type': dataPolicyType,
           'location': location,
           'policy_tag': policyTag,
           'project': ?project,
           if (dataMaskingPolicy != null)
             'data_masking_policy': TfArg.literal(dataMaskingPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDatapolicyDataPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDatapolicyDataPolicy>`.
  RefTo<GoogleBigqueryDatapolicyDataPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
