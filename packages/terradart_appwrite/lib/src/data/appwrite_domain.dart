// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../domain/appwrite_domain.dart';

/// Sensitive field paths for `appwrite_domain`.
const Set<String> _appwriteDomainSensitive = <String>{};

/// Factory wrapper for `appwrite_domain`.
///
/// Fetches a domain in an Appwrite organization by ID or by name. Use it to
/// manage the DNS records of a domain that Terraform does not own, such as one
/// bought through the Console.
final class DataAppwriteDomain extends Data {
  static const String tfType = 'appwrite_domain';

  DataAppwriteDomain(
    super.localName, {
    TfArg<String>? domain,
    TfArg<String>? organizationId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'domain': ?domain, 'organization_id': ?organizationId},
       );

  @override
  Set<String> get sensitiveFields => _appwriteDomainSensitive;

  /// A reference to the `appwrite_domain` this data source reads, for
  /// arguments typed `RefTo<AppwriteDomain>`.
  RefTo<AppwriteDomain> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
