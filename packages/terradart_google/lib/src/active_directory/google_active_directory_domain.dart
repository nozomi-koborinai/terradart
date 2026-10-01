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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'locations': locations,
           'reserved_ip_range': reservedIpRange,
           'authorized_networks': ?authorizedNetworks,
           'admin': ?admin,
           'labels': ?labels,
           'deletion_protection': ?deletionProtection,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleActiveDirectoryDomainSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleActiveDirectoryDomain>`.
  RefTo<GoogleActiveDirectoryDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `admin` attribute.
  TfRef<String> get admin => TfRef.attribute<String>(this, 'admin');

  /// Reference to `authorized_networks` attribute.
  TfRef<List<String>> get authorizedNetworks =>
      TfRef.attribute<List<String>>(this, 'authorized_networks');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `locations` attribute.
  TfRef<List<String>> get locations =>
      TfRef.attribute<List<String>>(this, 'locations');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `reserved_ip_range` attribute.
  TfRef<String> get reservedIpRange =>
      TfRef.attribute<String>(this, 'reserved_ip_range');
}
