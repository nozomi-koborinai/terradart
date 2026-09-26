// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_dashboard`.
const Set<String> _awsQuicksightDashboardSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_dashboard`.
final class AwsQuicksightDashboard extends Resource {
  static const String tfType = 'aws_quicksight_dashboard';

  AwsQuicksightDashboard({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> dashboardId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? themeArn,
    required TfArg<String> versionDescription,
    TfArg<Map<String, dynamic>>? dashboardPublishOptions,
    TfArg<Map<String, dynamic>>? definition,
    TfArg<Map<String, dynamic>>? parameters,
    TfArg<List<Map<String, dynamic>>>? permissions,
    TfArg<Map<String, dynamic>>? sourceEntity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'dashboard_id': dashboardId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (themeArn != null) 'theme_arn': themeArn,
           'version_description': versionDescription,
           if (dashboardPublishOptions != null)
             'dashboard_publish_options': dashboardPublishOptions,
           if (definition != null) 'definition': definition,
           if (parameters != null) 'parameters': parameters,
           if (permissions != null) 'permissions': permissions,
           if (sourceEntity != null) 'source_entity': sourceEntity,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightDashboardSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `last_published_time` attribute.
  TfRef<String> get lastPublishedTime =>
      TfRef.attribute<String>(this, 'last_published_time');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `source_entity_arn` attribute.
  TfRef<String> get sourceEntityArn =>
      TfRef.attribute<String>(this, 'source_entity_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version_number` attribute.
  TfRef<num> get versionNumber => TfRef.attribute<num>(this, 'version_number');
}
