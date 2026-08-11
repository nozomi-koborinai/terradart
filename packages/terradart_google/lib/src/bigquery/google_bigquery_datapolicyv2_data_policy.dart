// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_datapolicyv2_data_policy`.
const Set<String> _googleBigqueryDatapolicyv2DataPolicySensitive = <String>{};

/// Enrollment level for `google_bigquery_datapolicyv2_data_policy.data_policy_type`.
enum BigqueryDatapolicyv2DataPolicyType implements TerraformEnum {
  dataMaskingPolicy('DATA_MASKING_POLICY'),
  rawDataAccessPolicy('RAW_DATA_ACCESS_POLICY'),
  columnLevelSecurityPolicy('COLUMN_LEVEL_SECURITY_POLICY');

  const BigqueryDatapolicyv2DataPolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Predefined masking expression for V2 [BigqueryDatapolicyv2DataPolicyDataMaskingPolicy].
enum BigqueryDatapolicyv2DataPolicyPredefinedExpression
    implements TerraformEnum {
  sha256('SHA256'),
  alwaysNull('ALWAYS_NULL'),
  defaultMaskingValue('DEFAULT_MASKING_VALUE'),
  lastFourCharacters('LAST_FOUR_CHARACTERS'),
  firstFourCharacters('FIRST_FOUR_CHARACTERS'),
  emailMask('EMAIL_MASK'),
  dateYearMask('DATE_YEAR_MASK'),
  randomHash('RANDOM_HASH');

  const BigqueryDatapolicyv2DataPolicyPredefinedExpression(this.terraformValue);
  @override
  final String terraformValue;
}

/// `data_masking_policy` — predefined expression **or** custom routine.
@immutable
class BigqueryDatapolicyv2DataPolicyDataMaskingPolicy {
  const BigqueryDatapolicyv2DataPolicyDataMaskingPolicy({
    this.predefinedExpression,
    this.routine,
  });

  final BigqueryDatapolicyv2DataPolicyPredefinedExpression?
  predefinedExpression;
  final TfArg<String>? routine;

  Map<String, Object?> encode() => {
    if (predefinedExpression != null)
      'predefined_expression': predefinedExpression!.terraformValue,
    if (routine != null) 'routine': routine!.toTfJson(),
  };
}

/// `data_governance_tag` — optional org/project tag binding on the policy.
@immutable
class BigqueryDatapolicyv2DataPolicyDataGovernanceTag {
  const BigqueryDatapolicyv2DataPolicyDataGovernanceTag({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;
  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_datapolicyv2_data_policy`.
///
/// BigQuery Data Policy
///
/// BigQuery Data Policy **V2** — column-level masking / raw-data access
/// without a required V1 policy tag. Prefer
/// [BigqueryDatapolicyv2DataPolicyType.rawDataAccessPolicy] for smoke stacks
/// (no taxonomy). For masking, set [dataMaskingPolicy] with a predefined
/// expression (or a custom routine resource name).
///
/// Enable `bigquerydatapolicy.googleapis.com` before apply.
///
/// Example (raw-data access):
/// ```dart
/// GoogleBigqueryDatapolicyv2DataPolicy(
///   localName: 'raw_access',
///   location: TfArg.literal('us-central1'),
///   dataPolicyId: TfArg.literal('raw-access'),
///   dataPolicyType: TfArg.literal(
///     BigqueryDatapolicyv2DataPolicyType.rawDataAccessPolicy,
///   ),
/// );
/// ```
///
/// Example (predefined email mask):
/// ```dart
/// GoogleBigqueryDatapolicyv2DataPolicy(
///   localName: 'email_mask_v2',
///   location: TfArg.literal('us-central1'),
///   dataPolicyId: TfArg.literal('email-mask-v2'),
///   dataPolicyType: TfArg.literal(
///     BigqueryDatapolicyv2DataPolicyType.dataMaskingPolicy,
///   ),
///   dataMaskingPolicy: const BigqueryDatapolicyv2DataPolicyDataMaskingPolicy(
///     predefinedExpression:
///         BigqueryDatapolicyv2DataPolicyPredefinedExpression.emailMask,
///   ),
/// );
/// ```
final class GoogleBigqueryDatapolicyv2DataPolicy extends Resource {
  static const String tfType = 'google_bigquery_datapolicyv2_data_policy';

  GoogleBigqueryDatapolicyv2DataPolicy({
    required super.localName,
    required TfArg<String> dataPolicyId,
    required TfArg<BigqueryDatapolicyv2DataPolicyType> dataPolicyType,
    required TfArg<String> location,
    TfArg<List<String>>? grantees,
    BigqueryDatapolicyv2DataPolicyDataMaskingPolicy? dataMaskingPolicy,
    BigqueryDatapolicyv2DataPolicyDataGovernanceTag? dataGovernanceTag,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_policy_id': dataPolicyId,
           'data_policy_type': dataPolicyType,
           'location': location,
           if (grantees != null) 'grantees': grantees,
           if (dataMaskingPolicy != null)
             'data_masking_policy': TfArg.literal([dataMaskingPolicy.encode()]),
           if (dataGovernanceTag != null)
             'data_governance_tag': TfArg.literal([dataGovernanceTag.encode()]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDatapolicyv2DataPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_tag` attribute.
  TfRef<String> get policyTag => TfRef.attribute<String>(this, 'policy_tag');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
