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

  GoogleContactCenterInsightsView(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<String>? value,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'display_name': ?displayName,
           'value': ?value,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContactCenterInsightsViewSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContactCenterInsightsView>`.
  RefTo<GoogleContactCenterInsightsView> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
