// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_analytics_hub_data_exchange.dart'
    show GoogleBigqueryAnalyticsHubDataExchange;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_bigquery_analytics_hub_data_exchange_iam_member`.
const Set<String> _googleBigqueryAnalyticsHubDataExchangeIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_analytics_hub_data_exchange_iam_member` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubDataExchangeIamMemberCondition {
  const BigqueryAnalyticsHubDataExchangeIamMemberCondition({
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

/// Factory wrapper for `google_bigquery_analytics_hub_data_exchange_iam_member`.
final class GoogleBigqueryAnalyticsHubDataExchangeIamMember extends Resource {
  static const String tfType =
      'google_bigquery_analytics_hub_data_exchange_iam_member';

  GoogleBigqueryAnalyticsHubDataExchangeIamMember(
    super.localName, {
    required RefTo<GoogleBigqueryAnalyticsHubDataExchange> dataExchange,
    TfArg<String>? location,
    required IamPrincipal member,
    TfArg<String>? project,
    required TfArg<String> role,
    BigqueryAnalyticsHubDataExchangeIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchange.encodeAs('data_exchange_id'),
           'location': ?(location ?? dataExchange.alsoAs('location')),
           'member': member,
           'project': ?(project ?? dataExchange.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubDataExchangeIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryAnalyticsHubDataExchangeIamMember>`.
  RefTo<GoogleBigqueryAnalyticsHubDataExchangeIamMember> get ref =>
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

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
