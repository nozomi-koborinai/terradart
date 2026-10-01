// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_analytics_hub_data_exchange.dart'
    show GoogleBigqueryAnalyticsHubDataExchange;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_bigquery_analytics_hub_data_exchange_iam_binding`.
const Set<String> _googleBigqueryAnalyticsHubDataExchangeIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_analytics_hub_data_exchange_iam_binding` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubDataExchangeIamBindingCondition {
  const BigqueryAnalyticsHubDataExchangeIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_analytics_hub_data_exchange_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigQuery Analytics Hub
/// data exchange.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBigqueryAnalyticsHubDataExchangeIamMember] for additive grants.
final class GoogleBigqueryAnalyticsHubDataExchangeIamBinding extends Resource {
  static const String tfType =
      'google_bigquery_analytics_hub_data_exchange_iam_binding';

  GoogleBigqueryAnalyticsHubDataExchangeIamBinding({
    required super.localName,
    required RefTo<GoogleBigqueryAnalyticsHubDataExchange> dataExchange,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    BigqueryAnalyticsHubDataExchangeIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchange.encodeAs('data_exchange_id'),
           'location': ?(location ?? dataExchange.alsoAs('location')),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? dataExchange.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubDataExchangeIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryAnalyticsHubDataExchangeIamBinding>`.
  RefTo<GoogleBigqueryAnalyticsHubDataExchangeIamBinding> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_exchange_id` attribute.
  TfRef<String> get dataExchangeId =>
      TfRef.attribute<String>(this, 'data_exchange_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
