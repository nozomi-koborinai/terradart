// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_domain_nameservers_verification`.
const Set<String> _appwriteDomainNameserversVerificationSensitive = <String>{};

/// Factory wrapper for `appwrite_domain_nameservers_verification`.
///
/// Waits for Appwrite to confirm that a domain is delegated to its nameservers.
/// Appwrite only checks delegation when asked, so this asks until the check
/// passes or the create timeout expires. It changes nothing at the registrar:
/// point the domain at appwrite_domain.appwrite_nameservers first.
final class AppwriteDomainNameserversVerification extends Resource {
  static const String tfType = 'appwrite_domain_nameservers_verification';

  AppwriteDomainNameserversVerification(
    super.localName, {
    required TfArg<String> domainId,
    TfArg<String>? organizationId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'domain_id': domainId, 'organization_id': ?organizationId},
       );

  @override
  Set<String> get sensitiveFields =>
      _appwriteDomainNameserversVerificationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteDomainNameserversVerification>`.
  RefTo<AppwriteDomainNameserversVerification> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');
}
