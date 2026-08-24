// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_security_impersonation_registry`.
const Set<String> _cloudflareEmailSecurityImpersonationRegistrySensitive =
    <String>{};

/// Factory wrapper for `cloudflare_email_security_impersonation_registry`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class CloudflareEmailSecurityImpersonationRegistry extends Resource {
  static const String tfType =
      'cloudflare_email_security_impersonation_registry';

  CloudflareEmailSecurityImpersonationRegistry({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? comments,
    TfArg<num>? directoryId,
    TfArg<num>? directoryNodeId,
    required TfArg<String> email,
    TfArg<String>? externalDirectoryNodeId,
    required TfArg<bool> isEmailRegex,
    required TfArg<String> name,
    TfArg<String>? provenance,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (comments != null) 'comments': comments,
           if (directoryId != null) 'directory_id': directoryId,
           if (directoryNodeId != null) 'directory_node_id': directoryNodeId,
           'email': email,
           if (externalDirectoryNodeId != null)
             'external_directory_node_id': externalDirectoryNodeId,
           'is_email_regex': isEmailRegex,
           'name': name,
           if (provenance != null) 'provenance': provenance,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityImpersonationRegistrySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');
}
