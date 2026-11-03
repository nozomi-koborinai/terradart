// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatchomni_dashboard`.
const Set<String> _awsCloudwatchomniDashboardSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatchomni_dashboard`.
final class AwsCloudwatchomniDashboard extends Resource {
  static const String tfType = 'aws_cloudwatchomni_dashboard';

  AwsCloudwatchomniDashboard(
    super.localName, {
    required TfArg<String> body,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> spaceId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'body': body,
           'description': ?description,
           'name': name,
           'region': ?region,
           'space_id': spaceId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchomniDashboardSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchomniDashboard>`.
  RefTo<AwsCloudwatchomniDashboard> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dashboard_id` attribute.
  TfRef<String> get dashboardId =>
      TfRef.attribute<String>(this, 'dashboard_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `space_id` attribute.
  TfRef<String> get spaceId => TfRef.attribute<String>(this, 'space_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
