// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_data_exchange_iam_member`.
const Set<String> _googleBigqueryAnalyticsHubDataExchangeIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_bigquery_analytics_hub_data_exchange_iam_member`.
final class GoogleBigqueryAnalyticsHubDataExchangeIamMember extends Resource {
  static const String tfType =
      'google_bigquery_analytics_hub_data_exchange_iam_member';

  GoogleBigqueryAnalyticsHubDataExchangeIamMember({
    required super.localName,
    required TfArg<String> dataExchangeId,
    TfArg<String>? location,
    required TfArg<String> member,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           if (location != null) 'location': location,
           'member': member,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubDataExchangeIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
