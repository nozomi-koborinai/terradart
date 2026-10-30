// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_bigquery_analytics_hub_query_template`.
const Set<String> _googleBigqueryAnalyticsHubQueryTemplateSensitive =
    <String>{};

/// Typed helper for the `encryption_configuration` block of
/// `google_bigquery_analytics_hub_query_template` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubQueryTemplateEncryptionConfiguration {
  const BigqueryAnalyticsHubQueryTemplateEncryptionConfiguration({
    required this.kmsKeyName,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `routine` block of
/// `google_bigquery_analytics_hub_query_template` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubQueryTemplateRoutine {
  const BigqueryAnalyticsHubQueryTemplateRoutine({
    this.definitionBody,
    this.routineType,
  });

  final TfArg<String>? definitionBody;

  final BigqueryAnalyticsHubQueryTemplateRoutineType? routineType;

  @internal
  Map<String, Object?> encode() => {
    'definition_body': ?definitionBody?.toTfJson(),
    'routine_type': ?routineType?.toTfJson(),
  };
}

/// `routine_type` — derived from the provider schema description.
extension type const BigqueryAnalyticsHubQueryTemplateRoutineType._(
  TfArg<String> _
) implements TfArg<String> {
  BigqueryAnalyticsHubQueryTemplateRoutineType.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryAnalyticsHubQueryTemplateRoutineType.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryAnalyticsHubQueryTemplateRoutineType.arg(TfArg<String> arg)
    : this._(arg);

  static const tableValuedFunction =
      BigqueryAnalyticsHubQueryTemplateRoutineType._(
        TfArgLiteral('TABLE_VALUED_FUNCTION'),
      );

  static const List<BigqueryAnalyticsHubQueryTemplateRoutineType> values = [
    tableValuedFunction,
  ];
}

/// Factory wrapper for `google_bigquery_analytics_hub_query_template`.
///
/// Represents a BigQuery Query Template within a Data Exchange. This resource
/// defines a reusable SQL routine (e.g., a TVF) that can be shared or executed
/// via the Data Exchange. ~> **Note:** Approving a Query Template is not
/// supported by Terraform. The approve flow includes steps that can only be
/// performed through the Google Cloud console UI. You can still create a Query
/// Template (e.g. a TVF) and add it as a listing to a Data Clean Room via
/// Terraform, but the final approval must be done manually.
///
/// Analytics Hub **query template** — reusable SQL routine (typically a
/// table-valued function) defined on a data exchange for sharing /
/// subscription workflows.
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU after MCP
/// lookup (`list_services` name=Analytics → no Analytics Hub service;
/// BigQuery `24E6-581D-38E5` `list_skus` keywords analytics hub /
/// template / sharing / exchange → 0). billing-behavior: exchange
/// metadata only — no existence or hourly charge for the template
/// itself (query jobs that *run* the TVF bill normal BigQuery
/// analysis). Sibling Analytics Hub resources already live under
/// skip-listed `bigquery_quickstart` ("datapolicy + analyticshub
/// resources require an organization"); extending that example would
/// fail the wave skiplist gate. Ships via `tool/example_debt.yaml`.
///
/// Requires [dataExchangeId], [displayName], [location], and
/// [queryTemplateId]. Optional [routine] holds `definition_body` +
/// `routine_type` (`TABLE_VALUED_FUNCTION`). Enable
/// `analyticshub.googleapis.com` via [GoogleProjectService] before
/// apply.
final class GoogleBigqueryAnalyticsHubQueryTemplate extends Resource {
  static const String tfType = 'google_bigquery_analytics_hub_query_template';

  GoogleBigqueryAnalyticsHubQueryTemplate(
    super.localName, {
    required TfArg<String> dataExchangeId,
    required TfArg<String> queryTemplateId,
    required TfArg<String> location,
    required TfArg<String> displayName,
    TfArg<String>? description,
    TfArg<String>? documentation,
    TfArg<String>? primaryContact,
    BigqueryAnalyticsHubQueryTemplateRoutine? routine,
    TfArg<bool>? submit,
    BigqueryAnalyticsHubQueryTemplateEncryptionConfiguration?
    encryptionConfiguration,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           'query_template_id': queryTemplateId,
           'location': location,
           'display_name': displayName,
           'description': ?description,
           'documentation': ?documentation,
           'primary_contact': ?primaryContact,
           if (routine != null) 'routine': TfArg.literal(routine.encode()),
           'submit': ?submit,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal(
               encryptionConfiguration.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubQueryTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryAnalyticsHubQueryTemplate>`.
  RefTo<GoogleBigqueryAnalyticsHubQueryTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `data_exchange_id` attribute.
  TfRef<String> get dataExchangeId =>
      TfRef.attribute<String>(this, 'data_exchange_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `documentation` attribute.
  TfRef<String> get documentation =>
      TfRef.attribute<String>(this, 'documentation');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `primary_contact` attribute.
  TfRef<String> get primaryContact =>
      TfRef.attribute<String>(this, 'primary_contact');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `query_template_id` attribute.
  TfRef<String> get queryTemplateId =>
      TfRef.attribute<String>(this, 'query_template_id');

  /// Reference to `submit` attribute.
  TfRef<bool> get submit => TfRef.attribute<bool>(this, 'submit');
}
