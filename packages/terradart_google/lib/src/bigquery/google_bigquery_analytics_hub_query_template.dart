// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_query_template`.
const Set<String> _googleBigqueryAnalyticsHubQueryTemplateSensitive =
    <String>{};

/// Typed helper for the `routine` block of
/// `google_bigquery_analytics_hub_query_template` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubQueryTemplateRoutine {
  const BigqueryAnalyticsHubQueryTemplateRoutine({
    this.definitionBody,
    this.routineType,
  });

  final TfArg<String>? definitionBody;

  final TfArg<String>? routineType;

  Map<String, Object?> encode() => {
    if (definitionBody != null) 'definition_body': definitionBody!.toTfJson(),
    if (routineType != null) 'routine_type': routineType!.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_analytics_hub_query_template`.
///
/// Represents a BigQuery Query Template within a Data Exchange. This resource
/// defines a reusable SQL routine (e.g., a TVF) that can be shared or executed
/// via the Data Exchange.
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

  GoogleBigqueryAnalyticsHubQueryTemplate({
    required super.localName,
    required TfArg<String> dataExchangeId,
    required TfArg<String> queryTemplateId,
    required TfArg<String> location,
    required TfArg<String> displayName,
    TfArg<String>? description,
    TfArg<String>? documentation,
    TfArg<String>? primaryContact,
    BigqueryAnalyticsHubQueryTemplateRoutine? routine,
    TfArg<bool>? submit,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           'query_template_id': queryTemplateId,
           'location': location,
           'display_name': displayName,
           if (description != null) 'description': description,
           if (documentation != null) 'documentation': documentation,
           if (primaryContact != null) 'primary_contact': primaryContact,
           if (routine != null) 'routine': TfArg.literal(routine.encode()),
           if (submit != null) 'submit': submit,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubQueryTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
