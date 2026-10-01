// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_datapolicy_data_policy`.
const Set<String> _googleBigqueryDatapolicyDataPolicySensitive = <String>{};

/// Enrollment level for `google_bigquery_datapolicy_data_policy.data_policy_type`.
extension type const BigqueryDatapolicyDataPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryDatapolicyDataPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryDatapolicyDataPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryDatapolicyDataPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const columnLevelSecurityPolicy = BigqueryDatapolicyDataPolicyType._(
    TfArgLiteral('COLUMN_LEVEL_SECURITY_POLICY'),
  );
  static const dataMaskingPolicy = BigqueryDatapolicyDataPolicyType._(
    TfArgLiteral('DATA_MASKING_POLICY'),
  );

  static const List<BigqueryDatapolicyDataPolicyType> values = [
    columnLevelSecurityPolicy,
    dataMaskingPolicy,
  ];
}

extension type const BigqueryDatapolicyDataPolicyPredefinedExpression._(
  TfArg<String> _
) implements TfArg<String> {
  BigqueryDatapolicyDataPolicyPredefinedExpression.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryDatapolicyDataPolicyPredefinedExpression.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryDatapolicyDataPolicyPredefinedExpression.arg(TfArg<String> arg)
    : this._(arg);

  static const sha256 = BigqueryDatapolicyDataPolicyPredefinedExpression._(
    TfArgLiteral('SHA256'),
  );
  static const alwaysNull = BigqueryDatapolicyDataPolicyPredefinedExpression._(
    TfArgLiteral('ALWAYS_NULL'),
  );
  static const defaultMaskingValue =
      BigqueryDatapolicyDataPolicyPredefinedExpression._(
        TfArgLiteral('DEFAULT_MASKING_VALUE'),
      );
  static const lastFourCharacters =
      BigqueryDatapolicyDataPolicyPredefinedExpression._(
        TfArgLiteral('LAST_FOUR_CHARACTERS'),
      );
  static const firstFourCharacters =
      BigqueryDatapolicyDataPolicyPredefinedExpression._(
        TfArgLiteral('FIRST_FOUR_CHARACTERS'),
      );
  static const emailMask = BigqueryDatapolicyDataPolicyPredefinedExpression._(
    TfArgLiteral('EMAIL_MASK'),
  );
  static const dateYearMask =
      BigqueryDatapolicyDataPolicyPredefinedExpression._(
        TfArgLiteral('DATE_YEAR_MASK'),
      );

  static const List<BigqueryDatapolicyDataPolicyPredefinedExpression> values = [
    sha256,
    alwaysNull,
    defaultMaskingValue,
    lastFourCharacters,
    firstFourCharacters,
    emailMask,
    dateYearMask,
  ];
}

/// Exactly one of `predefined_expression`, `routine` on the `data_masking_policy` block of `google_bigquery_datapolicy_data_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.predefinedExpression(...)`.
sealed class BigqueryDatapolicyDataPolicyDataMaskingPolicy {
  const BigqueryDatapolicyDataPolicyDataMaskingPolicy();

  /// Sets `predefined_expression`.
  const factory BigqueryDatapolicyDataPolicyDataMaskingPolicy.predefinedExpression(
    BigqueryDatapolicyDataPolicyPredefinedExpression predefinedExpression,
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

  final BigqueryDatapolicyDataPolicyPredefinedExpression predefinedExpression;

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

  GoogleBigqueryDatapolicyDataPolicy(
    super.localName, {
    required TfArg<String> dataPolicyId,
    required BigqueryDatapolicyDataPolicyType dataPolicyType,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_policy_id` attribute.
  TfRef<String> get dataPolicyId =>
      TfRef.attribute<String>(this, 'data_policy_id');

  /// Reference to `data_policy_type` attribute.
  TfRef<String> get dataPolicyType =>
      TfRef.attribute<String>(this, 'data_policy_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_tag` attribute.
  TfRef<String> get policyTag => TfRef.attribute<String>(this, 'policy_tag');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
