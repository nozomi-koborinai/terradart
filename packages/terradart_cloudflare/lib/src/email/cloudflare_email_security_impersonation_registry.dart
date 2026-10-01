// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_impersonation_registry`.
const Set<String> _cloudflareEmailSecurityImpersonationRegistrySensitive =
    <String>{};

/// Email Security Impersonation Registry enum for `provenance`.
extension type const EmailSecurityImpersonationRegistryProvenance._(
  TfArg<String> _
) implements TfArg<String> {
  EmailSecurityImpersonationRegistryProvenance.variable(String name)
    : this._(TfArg.variable(name));
  EmailSecurityImpersonationRegistryProvenance.expression(String template)
    : this._(TfArg.expression(template));
  const EmailSecurityImpersonationRegistryProvenance.arg(TfArg<String> arg)
    : this._(arg);

  static const a1sInternal = EmailSecurityImpersonationRegistryProvenance._(
    TfArgLiteral('A1S_INTERNAL'),
  );
  static const snoopyCasbOffice365 =
      EmailSecurityImpersonationRegistryProvenance._(
        TfArgLiteral('SNOOPY-CASB_OFFICE_365'),
      );
  static const snoopyOffice365 = EmailSecurityImpersonationRegistryProvenance._(
    TfArgLiteral('SNOOPY-OFFICE_365'),
  );
  static const snoopyGoogleDirectory =
      EmailSecurityImpersonationRegistryProvenance._(
        TfArgLiteral('SNOOPY-GOOGLE_DIRECTORY'),
      );

  static const List<EmailSecurityImpersonationRegistryProvenance> values = [
    a1sInternal,
    snoopyCasbOffice365,
    snoopyOffice365,
    snoopyGoogleDirectory,
  ];
}

/// Factory wrapper for `cloudflare_email_security_impersonation_registry`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class CloudflareEmailSecurityImpersonationRegistry extends Resource {
  static const String tfType =
      'cloudflare_email_security_impersonation_registry';

  CloudflareEmailSecurityImpersonationRegistry(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? comments,
    TfArg<num>? directoryId,
    TfArg<num>? directoryNodeId,
    required TfArg<String> email,
    TfArg<String>? externalDirectoryNodeId,
    required TfArg<bool> isEmailRegex,
    required TfArg<String> name,
    EmailSecurityImpersonationRegistryProvenance? provenance,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'comments': ?comments,
           'directory_id': ?directoryId,
           'directory_node_id': ?directoryNodeId,
           'email': email,
           'external_directory_node_id': ?externalDirectoryNodeId,
           'is_email_regex': isEmailRegex,
           'name': name,
           'provenance': ?provenance,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityImpersonationRegistrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareEmailSecurityImpersonationRegistry>`.
  RefTo<CloudflareEmailSecurityImpersonationRegistry> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `comments` attribute.
  TfRef<String> get comments => TfRef.attribute<String>(this, 'comments');

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

  /// Reference to `provenance` attribute.
  TfRef<String> get provenance => TfRef.attribute<String>(this, 'provenance');
}
