// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_domain_nameservers`.
const Set<String> _appwriteDomainNameserversSensitive = <String>{};

/// Factory wrapper for `appwrite_domain_nameservers`.
///
/// Sets the registrar nameservers of a domain registered through Appwrite.
/// Domains registered elsewhere have their nameservers set at that registrar;
/// use appwrite_domain_nameservers_verification for those instead.
final class AppwriteDomainNameservers extends Resource {
  static const String tfType = 'appwrite_domain_nameservers';

  AppwriteDomainNameservers(
    super.localName, {
    required TfArg<String> domainId,
    TfArg<List<String>>? nameservers,
    TfArg<String>? organizationId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_id': domainId,
           'nameservers': ?nameservers,
           'organization_id': ?organizationId,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteDomainNameserversSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteDomainNameservers>`.
  RefTo<AppwriteDomainNameservers> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `nameservers` attribute.
  TfRef<List<String>> get nameservers =>
      TfRef.attribute<List<String>>(this, 'nameservers');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');
}
