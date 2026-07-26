// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_active_directory_domain`.
const Set<String> _googleActiveDirectoryDomainSensitive = <String>{};

/// Factory wrapper for `google_active_directory_domain`.
///
/// Creates a Microsoft AD domain
///
/// Managed Service for Microsoft Active Directory **domain**.
///
/// **Cost / apply:** gcp-cost: Managed Service for Microsoft Active
/// Directory `2A27-8988-64B8` SKU `BE02-3DF8-6AB6` **$0.4/h**.
/// billing-behavior: domain hours bill while the managed AD domain exists
/// (per deployed region / locations); destroy stops the charge — too
/// expensive for apply-smoke even once. **Never** wire into apply-smoke.
///
/// Enable `managedidentities.googleapis.com` via [GoogleProjectService]
/// before apply. Set [deletionProtection] false when you intend to destroy.
final class GoogleActiveDirectoryDomain extends Resource {
  static const String tfType = 'google_active_directory_domain';

  GoogleActiveDirectoryDomain({
    required super.localName,
    required TfArg<String> domainName,
    required TfArg<List<String>> locations,
    required TfArg<String> reservedIpRange,
    TfArg<List<String>>? authorizedNetworks,
    TfArg<String>? admin,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'locations': locations,
           'reserved_ip_range': reservedIpRange,
           if (authorizedNetworks != null)
             'authorized_networks': authorizedNetworks,
           if (admin != null) 'admin': admin,
           if (labels != null) 'labels': labels,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleActiveDirectoryDomainSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdnRef => TfRef.attribute<String>(this, 'fqdn');
}
