// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_contact_center_insights_view`.
const Set<String> _googleContactCenterInsightsViewSensitive = <String>{};

/// Factory wrapper for `google_contact_center_insights_view`.
///
/// Insights View resource for filtering conversations
///
/// Saved conversation view (filter) for Contact Center AI Insights.
///
/// Enable `contactcenterinsights.googleapis.com` via [GoogleProjectService]
/// before apply. [value] is a Conversational Insights filter expression.
final class GoogleContactCenterInsightsView extends Resource {
  static const String tfType = 'google_contact_center_insights_view';

  GoogleContactCenterInsightsView({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<String>? value,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (displayName != null) 'display_name': displayName,
           if (value != null) 'value': value,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContactCenterInsightsViewSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
