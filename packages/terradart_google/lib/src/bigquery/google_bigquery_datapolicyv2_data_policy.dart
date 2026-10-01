// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_datapolicyv2_data_policy`.
const Set<String> _googleBigqueryDatapolicyv2DataPolicySensitive = <String>{};

/// Enrollment level for `google_bigquery_datapolicyv2_data_policy.data_policy_type`.
extension type const BigqueryDatapolicyv2DataPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryDatapolicyv2DataPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryDatapolicyv2DataPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryDatapolicyv2DataPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const dataMaskingPolicy = BigqueryDatapolicyv2DataPolicyType._(
    TfArgLiteral('DATA_MASKING_POLICY'),
  );
  static const rawDataAccessPolicy = BigqueryDatapolicyv2DataPolicyType._(
    TfArgLiteral('RAW_DATA_ACCESS_POLICY'),
  );
  static const columnLevelSecurityPolicy = BigqueryDatapolicyv2DataPolicyType._(
    TfArgLiteral('COLUMN_LEVEL_SECURITY_POLICY'),
  );

  static const List<BigqueryDatapolicyv2DataPolicyType> values = [
    dataMaskingPolicy,
    rawDataAccessPolicy,
    columnLevelSecurityPolicy,
  ];
}

/// Predefined masking expression for V2 [BigqueryDatapolicyv2DataPolicyDataMaskingPolicy].
extension type const BigqueryDatapolicyv2DataPolicyPredefinedExpression._(
  TfArg<String> _
) implements TfArg<String> {
  BigqueryDatapolicyv2DataPolicyPredefinedExpression.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryDatapolicyv2DataPolicyPredefinedExpression.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryDatapolicyv2DataPolicyPredefinedExpression.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const sha256 = BigqueryDatapolicyv2DataPolicyPredefinedExpression._(
    TfArgLiteral('SHA256'),
  );
  static const alwaysNull =
      BigqueryDatapolicyv2DataPolicyPredefinedExpression._(
        TfArgLiteral('ALWAYS_NULL'),
      );
  static const defaultMaskingValue =
      BigqueryDatapolicyv2DataPolicyPredefinedExpression._(
        TfArgLiteral('DEFAULT_MASKING_VALUE'),
      );
  static const lastFourCharacters =
      BigqueryDatapolicyv2DataPolicyPredefinedExpression._(
        TfArgLiteral('LAST_FOUR_CHARACTERS'),
      );
  static const firstFourCharacters =
      BigqueryDatapolicyv2DataPolicyPredefinedExpression._(
        TfArgLiteral('FIRST_FOUR_CHARACTERS'),
      );
  static const emailMask = BigqueryDatapolicyv2DataPolicyPredefinedExpression._(
    TfArgLiteral('EMAIL_MASK'),
  );
  static const dateYearMask =
      BigqueryDatapolicyv2DataPolicyPredefinedExpression._(
        TfArgLiteral('DATE_YEAR_MASK'),
      );
  static const randomHash =
      BigqueryDatapolicyv2DataPolicyPredefinedExpression._(
        TfArgLiteral('RANDOM_HASH'),
      );

  static const List<BigqueryDatapolicyv2DataPolicyPredefinedExpression> values =
      [
        sha256,
        alwaysNull,
        defaultMaskingValue,
        lastFourCharacters,
        firstFourCharacters,
        emailMask,
        dateYearMask,
        randomHash,
      ];
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
      'predefined_expression': predefinedExpression!.toTfJson(),
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
///   'raw_access',
///   location: TfArg.literal('us-central1'),
///   dataPolicyId: TfArg.literal('raw-access'),
///   dataPolicyType: BigqueryDatapolicyv2DataPolicyType.rawDataAccessPolicy,
/// );
/// ```
///
/// Example (predefined email mask):
/// ```dart
/// GoogleBigqueryDatapolicyv2DataPolicy(
///   'email_mask_v2',
///   location: TfArg.literal('us-central1'),
///   dataPolicyId: TfArg.literal('email-mask-v2'),
///   dataPolicyType: BigqueryDatapolicyv2DataPolicyType.dataMaskingPolicy,
///   dataMaskingPolicy: const BigqueryDatapolicyv2DataPolicyDataMaskingPolicy(
///     predefinedExpression:
///         BigqueryDatapolicyv2DataPolicyPredefinedExpression.emailMask,
///   ),
/// );
/// ```
final class GoogleBigqueryDatapolicyv2DataPolicy extends Resource {
  static const String tfType = 'google_bigquery_datapolicyv2_data_policy';

  GoogleBigqueryDatapolicyv2DataPolicy(
    super.localName, {
    required TfArg<String> dataPolicyId,
    required BigqueryDatapolicyv2DataPolicyType dataPolicyType,
    required TfArg<String> location,
    TfArg<List<String>>? grantees,
    BigqueryDatapolicyv2DataPolicyDataMaskingPolicy? dataMaskingPolicy,
    BigqueryDatapolicyv2DataPolicyDataGovernanceTag? dataGovernanceTag,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
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
           'grantees': ?grantees,
           if (dataMaskingPolicy != null)
             'data_masking_policy': TfArg.literal([dataMaskingPolicy.encode()]),
           if (dataGovernanceTag != null)
             'data_governance_tag': TfArg.literal([dataGovernanceTag.encode()]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDatapolicyv2DataPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDatapolicyv2DataPolicy>`.
  RefTo<GoogleBigqueryDatapolicyv2DataPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_tag` attribute.
  TfRef<String> get policyTag => TfRef.attribute<String>(this, 'policy_tag');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `data_policy_id` attribute.
  TfRef<String> get dataPolicyId =>
      TfRef.attribute<String>(this, 'data_policy_id');

  /// Reference to `data_policy_type` attribute.
  TfRef<String> get dataPolicyType =>
      TfRef.attribute<String>(this, 'data_policy_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `grantees` attribute.
  TfRef<List<String>> get grantees =>
      TfRef.attribute<List<String>>(this, 'grantees');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
