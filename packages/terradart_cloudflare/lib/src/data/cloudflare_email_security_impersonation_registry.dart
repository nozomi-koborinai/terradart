// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_security_impersonation_registry`.
const Set<String> _cloudflareEmailSecurityImpersonationRegistrySensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_email_security_impersonation_registry` (derived from provider schema).
@immutable
final class DataEmailSecurityImpersonationRegistryFilter {
  const DataEmailSecurityImpersonationRegistryFilter({
    this.direction,
    this.order,
    this.provenance,
    this.search,
  });

  final TfArg<String>? direction;

  final TfArg<String>? order;

  final TfArg<String>? provenance;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (provenance != null) 'provenance': provenance!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_email_security_impersonation_registry`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityImpersonationRegistry extends Data {
  static const String tfType =
      'cloudflare_email_security_impersonation_registry';

  DataCloudflareEmailSecurityImpersonationRegistry({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? impersonationRegistryId,
    DataEmailSecurityImpersonationRegistryFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (impersonationRegistryId != null)
             'impersonation_registry_id': impersonationRegistryId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityImpersonationRegistrySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `comments` attribute.
  TfRef<String> get comments => TfRef.attribute<String>(this, 'comments');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `directory_id` attribute.
  TfRef<num> get directoryId => TfRef.attribute<num>(this, 'directory_id');

  /// Reference to `directory_node_id` attribute.
  TfRef<num> get directoryNodeId =>
      TfRef.attribute<num>(this, 'directory_node_id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `external_directory_node_id` attribute.
  TfRef<String> get externalDirectoryNodeId =>
      TfRef.attribute<String>(this, 'external_directory_node_id');

  /// Reference to `is_email_regex` attribute.
  TfRef<bool> get isEmailRegex => TfRef.attribute<bool>(this, 'is_email_regex');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `provenance` attribute.
  TfRef<String> get provenance => TfRef.attribute<String>(this, 'provenance');
}
