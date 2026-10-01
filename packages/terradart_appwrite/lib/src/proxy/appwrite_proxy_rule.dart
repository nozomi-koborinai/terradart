// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_proxy_rule`.
const Set<String> _appwriteProxyRuleSensitive = <String>{};

/// Proxy Rule enum for `type`.
enum ProxyRuleType implements TerraformEnum {
  site('site'),
  function('function');

  const ProxyRuleType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `appwrite_proxy_rule`.
///
/// Manages a custom domain proxy rule for an Appwrite site or function.
final class AppwriteProxyRule extends Resource {
  static const String tfType = 'appwrite_proxy_rule';

  AppwriteProxyRule(
    super.localName, {
    TfArg<String>? branch,
    required TfArg<String> domain,
    RefTo<AppwriteProject>? projectId,
    required TfArg<String> resourceId,
    required TfArg<ProxyRuleType> type,
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
           'resource_id': resourceId,
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

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
