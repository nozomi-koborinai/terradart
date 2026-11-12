// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_proxy_rule`.
const Set<String> _appwriteProxyRuleSensitive = <String>{};

/// Factory wrapper for `appwrite_proxy_rule`.
///
/// Manages a custom domain proxy rule: serving an Appwrite site, function or
/// the Appwrite API on a domain, or redirecting a domain to a URL.
final class AppwriteProxyRule extends Resource {
  static const String tfType = 'appwrite_proxy_rule';

  AppwriteProxyRule(
    super.localName, {
    TfArg<String>? branch,
    required TfArg<String> domain,
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? redirectResourceType,
    TfArg<num>? redirectStatusCode,
    TfArg<String>? redirectUrl,
    TfArg<String>? resourceId,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'branch': ?branch,
           'domain': domain,
           'project_id': ?projectId?.encodeAs('id'),
           'redirect_resource_type': ?redirectResourceType,
           'redirect_status_code': ?redirectStatusCode,
           'redirect_url': ?redirectUrl,
           'resource_id': ?resourceId,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProxyRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProxyRule>`.
  RefTo<AppwriteProxyRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `logs` attribute.
  TfRef<String> get logs => TfRef.attribute<String>(this, 'logs');

  /// Reference to `renew_at` attribute.
  TfRef<String> get renewAt => TfRef.attribute<String>(this, 'renew_at');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `branch` attribute.
  TfRef<String> get branch => TfRef.attribute<String>(this, 'branch');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `redirect_resource_type` attribute.
  TfRef<String> get redirectResourceType =>
      TfRef.attribute<String>(this, 'redirect_resource_type');

  /// Reference to `redirect_status_code` attribute.
  TfRef<num> get redirectStatusCode =>
      TfRef.attribute<num>(this, 'redirect_status_code');

  /// Reference to `redirect_url` attribute.
  TfRef<String> get redirectUrl =>
      TfRef.attribute<String>(this, 'redirect_url');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
