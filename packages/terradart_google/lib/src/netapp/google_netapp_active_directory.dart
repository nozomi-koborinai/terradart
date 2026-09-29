// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_active_directory`.
const Set<String> _googleNetappActiveDirectorySensitive = <String>{'password'};

/// Factory wrapper for `google_netapp_active_directory`.
///
/// ActiveDirectory is the public representation of the active directory config.
///
/// NetApp Volumes **Active Directory** policy for SMB / LDAP volumes.
///
/// **Cost:** gcp-cost: no Cloud Billing Catalog SKU under `FC86-5113-7C81`
/// (list_skus keyword directory → 0). billing-behavior: control-plane AD
/// join metadata — pool capacity (`C2DF-4710-FFE1`) bills only when a
/// never_apply [GoogleNetappStoragePool] attaches this policy. Deferred
/// with the pool Wave (no apply-smoke quickstart).
///
/// [password] is sensitive.
final class GoogleNetappActiveDirectory extends Resource {
  static const String tfType = 'google_netapp_active_directory';

  GoogleNetappActiveDirectory({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> domain,
    required TfArg<String> dns,
    required TfArg<String> netBiosPrefix,
    required TfArg<String> username,
    required TfArg<String> password,
    TfArg<String>? organizationalUnit,
    TfArg<String>? site,
    TfArg<List<String>>? administrators,
    TfArg<List<String>>? backupOperators,
    TfArg<List<String>>? securityOperators,
    TfArg<bool>? aesEncryption,
    TfArg<bool>? encryptDcConnections,
    TfArg<bool>? ldapSigning,
    TfArg<bool>? nfsUsersWithLdap,
    TfArg<String>? kdcHostname,
    TfArg<String>? kdcIp,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'domain': domain,
           'dns': dns,
           'net_bios_prefix': netBiosPrefix,
           'username': username,
           'password': password,
           'organizational_unit': ?organizationalUnit,
           'site': ?site,
           'administrators': ?administrators,
           'backup_operators': ?backupOperators,
           'security_operators': ?securityOperators,
           'aes_encryption': ?aesEncryption,
           'encrypt_dc_connections': ?encryptDcConnections,
           'ldap_signing': ?ldapSigning,
           'nfs_users_with_ldap': ?nfsUsersWithLdap,
           'kdc_hostname': ?kdcHostname,
           'kdc_ip': ?kdcIp,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappActiveDirectorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetappActiveDirectory>`.
  RefTo<GoogleNetappActiveDirectory> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_details` attribute.
  TfRef<String> get stateDetails =>
      TfRef.attribute<String>(this, 'state_details');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
