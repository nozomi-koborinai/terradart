// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_active_directory_domain_service`.
const Set<String> _azurermActiveDirectoryDomainServiceSensitive = <String>{
  'secure_ldap.pfx_certificate',
  'secure_ldap.pfx_certificate_password',
};

/// Active Directory Domain Service Domain Configuration enum for `domain_configuration_type`.
extension type const ActiveDirectoryDomainServiceDomainConfigurationType._(
  TfArg<String> _
) implements TfArg<String> {
  ActiveDirectoryDomainServiceDomainConfigurationType.variable(String name)
    : this._(TfArg.variable(name));
  ActiveDirectoryDomainServiceDomainConfigurationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ActiveDirectoryDomainServiceDomainConfigurationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const fullysynced =
      ActiveDirectoryDomainServiceDomainConfigurationType._(
        TfArgLiteral('FullySynced'),
      );
  static const resourcetrusting =
      ActiveDirectoryDomainServiceDomainConfigurationType._(
        TfArgLiteral('ResourceTrusting'),
      );

  static const List<ActiveDirectoryDomainServiceDomainConfigurationType>
  values = [fullysynced, resourcetrusting];
}

/// Active Directory Domain Service enum for `sku`.
extension type const ActiveDirectoryDomainServiceSku._(TfArg<String> _)
    implements TfArg<String> {
  ActiveDirectoryDomainServiceSku.variable(String name)
    : this._(TfArg.variable(name));
  ActiveDirectoryDomainServiceSku.expression(String template)
    : this._(TfArg.expression(template));
  const ActiveDirectoryDomainServiceSku.arg(TfArg<String> arg) : this._(arg);

  static const standard = ActiveDirectoryDomainServiceSku._(
    TfArgLiteral('Standard'),
  );
  static const enterprise = ActiveDirectoryDomainServiceSku._(
    TfArgLiteral('Enterprise'),
  );
  static const premium = ActiveDirectoryDomainServiceSku._(
    TfArgLiteral('Premium'),
  );

  static const List<ActiveDirectoryDomainServiceSku> values = [
    standard,
    enterprise,
    premium,
  ];
}

/// Typed helper for the `initial_replica_set` block of
/// `azurerm_active_directory_domain_service` (derived from provider schema).
@immutable
final class ActiveDirectoryDomainServiceInitialReplicaSet {
  const ActiveDirectoryDomainServiceInitialReplicaSet({required this.subnetId});

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {'subnet_id': subnetId.toTfJson()};
}

/// Typed helper for the `notifications` block of
/// `azurerm_active_directory_domain_service` (derived from provider schema).
@immutable
final class ActiveDirectoryDomainServiceNotifications {
  const ActiveDirectoryDomainServiceNotifications({
    this.additionalRecipients,
    this.notifyDcAdmins,
    this.notifyGlobalAdmins,
  });

  final TfArg<List<String>>? additionalRecipients;

  final TfArg<bool>? notifyDcAdmins;

  final TfArg<bool>? notifyGlobalAdmins;

  @internal
  Map<String, Object?> encode() => {
    'additional_recipients': ?additionalRecipients?.toTfJson(),
    'notify_dc_admins': ?notifyDcAdmins?.toTfJson(),
    'notify_global_admins': ?notifyGlobalAdmins?.toTfJson(),
  };
}

/// Typed helper for the `secure_ldap` block of
/// `azurerm_active_directory_domain_service` (derived from provider schema).
@immutable
final class ActiveDirectoryDomainServiceSecureLdap {
  const ActiveDirectoryDomainServiceSecureLdap({
    required this.enabled,
    this.externalAccessEnabled,
    required this.pfxCertificate,
    required this.pfxCertificatePassword,
  });

  final TfArg<bool> enabled;

  final TfArg<bool>? externalAccessEnabled;

  final Sensitive<String> pfxCertificate;

  final Sensitive<String> pfxCertificatePassword;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'external_access_enabled': ?externalAccessEnabled?.toTfJson(),
    'pfx_certificate': pfxCertificate.toTfJson(),
    'pfx_certificate_password': pfxCertificatePassword.toTfJson(),
  };
}

/// Typed helper for the `security` block of
/// `azurerm_active_directory_domain_service` (derived from provider schema).
@immutable
final class ActiveDirectoryDomainServiceSecurity {
  const ActiveDirectoryDomainServiceSecurity({
    this.kerberosArmoringEnabled,
    this.kerberosRc4EncryptionEnabled,
    this.ntlmV1Enabled,
    this.syncKerberosPasswords,
    this.syncNtlmPasswords,
    this.syncOnPremPasswords,
    this.tlsV1Enabled,
  });

  final TfArg<bool>? kerberosArmoringEnabled;

  final TfArg<bool>? kerberosRc4EncryptionEnabled;

  final TfArg<bool>? ntlmV1Enabled;

  final TfArg<bool>? syncKerberosPasswords;

  final TfArg<bool>? syncNtlmPasswords;

  final TfArg<bool>? syncOnPremPasswords;

  final TfArg<bool>? tlsV1Enabled;

  @internal
  Map<String, Object?> encode() => {
    'kerberos_armoring_enabled': ?kerberosArmoringEnabled?.toTfJson(),
    'kerberos_rc4_encryption_enabled': ?kerberosRc4EncryptionEnabled
        ?.toTfJson(),
    'ntlm_v1_enabled': ?ntlmV1Enabled?.toTfJson(),
    'sync_kerberos_passwords': ?syncKerberosPasswords?.toTfJson(),
    'sync_ntlm_passwords': ?syncNtlmPasswords?.toTfJson(),
    'sync_on_prem_passwords': ?syncOnPremPasswords?.toTfJson(),
    'tls_v1_enabled': ?tlsV1Enabled?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_active_directory_domain_service`.
final class AzurermActiveDirectoryDomainService extends Resource {
  static const String tfType = 'azurerm_active_directory_domain_service';

  AzurermActiveDirectoryDomainService(
    super.localName, {
    ActiveDirectoryDomainServiceDomainConfigurationType?
    domainConfigurationType,
    required TfArg<String> domainName,
    TfArg<bool>? filteredSyncEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required ActiveDirectoryDomainServiceSku sku,
    TfArg<Map<String, String>>? tags,
    required ActiveDirectoryDomainServiceInitialReplicaSet initialReplicaSet,
    ActiveDirectoryDomainServiceNotifications? notifications,
    ActiveDirectoryDomainServiceSecureLdap? secureLdap,
    ActiveDirectoryDomainServiceSecurity? security,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_configuration_type': ?domainConfigurationType,
           'domain_name': domainName,
           'filtered_sync_enabled': ?filteredSyncEnabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'tags': ?tags,
           'initial_replica_set': TfArg.literal(initialReplicaSet.encode()),
           if (notifications != null)
             'notifications': TfArg.literal(notifications.encode()),
           if (secureLdap != null)
             'secure_ldap': TfArg.literal(secureLdap.encode()),
           if (security != null) 'security': TfArg.literal(security.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermActiveDirectoryDomainServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermActiveDirectoryDomainService>`.
  RefTo<AzurermActiveDirectoryDomainService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deployment_id` attribute.
  TfRef<String> get deploymentId =>
      TfRef.attribute<String>(this, 'deployment_id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `sync_owner` attribute.
  TfRef<String> get syncOwner => TfRef.attribute<String>(this, 'sync_owner');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `domain_configuration_type` attribute.
  TfRef<String> get domainConfigurationType =>
      TfRef.attribute<String>(this, 'domain_configuration_type');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `filtered_sync_enabled` attribute.
  TfRef<bool> get filteredSyncEnabled =>
      TfRef.attribute<bool>(this, 'filtered_sync_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
