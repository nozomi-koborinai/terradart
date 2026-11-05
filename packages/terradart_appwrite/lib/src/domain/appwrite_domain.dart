// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_domain`.
const Set<String> _appwriteDomainSensitive = <String>{};

/// Factory wrapper for `appwrite_domain`.
///
/// Adds a domain to an Appwrite organization, so Appwrite hosts its DNS zone.
final class AppwriteDomain extends Resource {
  static const String tfType = 'appwrite_domain';

  AppwriteDomain(
    super.localName, {
    required TfArg<String> domain,
    TfArg<String>? organizationId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'domain': domain, 'organization_id': ?organizationId},
       );

  @override
  Set<String> get sensitiveFields => _appwriteDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteDomain>`.
  RefTo<AppwriteDomain> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `appwrite_nameservers` attribute.
  TfRef<List<String>> get appwriteNameservers =>
      TfRef.attribute<List<String>>(this, 'appwrite_nameservers');

  /// Reference to `auto_renewal` attribute.
  TfRef<bool> get autoRenewal => TfRef.attribute<bool>(this, 'auto_renewal');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `expires_at` attribute.
  TfRef<String> get expiresAt => TfRef.attribute<String>(this, 'expires_at');

  /// Reference to `nameservers_verified` attribute.
  TfRef<bool> get nameserversVerified =>
      TfRef.attribute<bool>(this, 'nameservers_verified');

  /// Reference to `registrar` attribute.
  TfRef<String> get registrar => TfRef.attribute<String>(this, 'registrar');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');
}
