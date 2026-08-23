// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_proxy_rule`.
const Set<String> _appwriteProxyRuleSensitive = <String>{};

/// Factory wrapper for `appwrite_proxy_rule`.
///
/// Manages a custom domain proxy rule for an Appwrite site or function.
final class AppwriteProxyRule extends Resource {
  static const String tfType = 'appwrite_proxy_rule';

  AppwriteProxyRule({
    required super.localName,
    TfArg<String>? branch,
    required TfArg<String> domain,
    TfArg<String>? projectId,
    required TfArg<String> resourceId,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (branch != null) 'branch': branch,
           'domain': domain,
           if (projectId != null) 'project_id': projectId,
           'resource_id': resourceId,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProxyRuleSensitive;

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
}
