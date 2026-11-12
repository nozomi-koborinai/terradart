// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_analytics_property`.
const Set<String> _appwriteAnalyticsPropertySensitive = <String>{};

/// Factory wrapper for `appwrite_analytics_property`.
///
/// Manages an analytics property on an Appwrite Cloud project: one website, app
/// or agent whose events the project collects.
final class AppwriteAnalyticsProperty extends Resource {
  static const String tfType = 'appwrite_analytics_property';

  AppwriteAnalyticsProperty(
    super.localName, {
    TfArg<List<String>>? allowedOrigins,
    TfArg<String>? domain,
    TfArg<bool>? enabled,
    TfArg<bool>? identifyUsers,
    required TfArg<String> name,
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allowed_origins': ?allowedOrigins,
           'domain': ?domain,
           'enabled': ?enabled,
           'identify_users': ?identifyUsers,
           'name': name,
           'project_id': ?projectId?.encodeAs('id'),
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteAnalyticsPropertySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteAnalyticsProperty>`.
  RefTo<AppwriteAnalyticsProperty> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `allowed_origins` attribute.
  TfRef<List<String>> get allowedOrigins =>
      TfRef.attribute<List<String>>(this, 'allowed_origins');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `identify_users` attribute.
  TfRef<bool> get identifyUsers =>
      TfRef.attribute<bool>(this, 'identify_users');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
