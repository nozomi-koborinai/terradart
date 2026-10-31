// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_storage_account`.
const Set<String> _azurermStorageAccountSensitive = <String>{
  'primary_access_key',
  'primary_blob_connection_string',
  'primary_connection_string',
  'secondary_access_key',
  'secondary_blob_connection_string',
  'secondary_connection_string',
};

/// Storage Account Access enum for `access_tier`.
extension type const StorageAccountAccessTier._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountAccessTier.variable(String name) : this._(TfArg.variable(name));
  StorageAccountAccessTier.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountAccessTier.arg(TfArg<String> arg) : this._(arg);

  static const cold = StorageAccountAccessTier._(TfArgLiteral('Cold'));
  static const cool = StorageAccountAccessTier._(TfArgLiteral('Cool'));
  static const hot = StorageAccountAccessTier._(TfArgLiteral('Hot'));
  static const premium = StorageAccountAccessTier._(TfArgLiteral('Premium'));
  static const smart = StorageAccountAccessTier._(TfArgLiteral('Smart'));

  static const List<StorageAccountAccessTier> values = [
    cold,
    cool,
    hot,
    premium,
    smart,
  ];
}

/// Storage Account enum for `account_kind`.
extension type const StorageAccountKind._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountKind.variable(String name) : this._(TfArg.variable(name));
  StorageAccountKind.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountKind.arg(TfArg<String> arg) : this._(arg);

  static const blockblobstorage = StorageAccountKind._(
    TfArgLiteral('BlockBlobStorage'),
  );
  static const filestorage = StorageAccountKind._(TfArgLiteral('FileStorage'));
  static const storagev2 = StorageAccountKind._(TfArgLiteral('StorageV2'));

  static const List<StorageAccountKind> values = [
    blockblobstorage,
    filestorage,
    storagev2,
  ];
}

/// Storage Account Replication enum for `account_replication_type`.
extension type const StorageAccountReplicationType._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountReplicationType.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountReplicationType.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountReplicationType.arg(TfArg<String> arg) : this._(arg);

  static const lrs = StorageAccountReplicationType._(TfArgLiteral('LRS'));
  static const zrs = StorageAccountReplicationType._(TfArgLiteral('ZRS'));
  static const grs = StorageAccountReplicationType._(TfArgLiteral('GRS'));
  static const ragrs = StorageAccountReplicationType._(TfArgLiteral('RAGRS'));
  static const gzrs = StorageAccountReplicationType._(TfArgLiteral('GZRS'));
  static const ragzrs = StorageAccountReplicationType._(TfArgLiteral('RAGZRS'));

  static const List<StorageAccountReplicationType> values = [
    lrs,
    zrs,
    grs,
    ragrs,
    gzrs,
    ragzrs,
  ];
}

/// Storage Account enum for `account_tier`.
extension type const StorageAccountTier._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountTier.variable(String name) : this._(TfArg.variable(name));
  StorageAccountTier.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountTier.arg(TfArg<String> arg) : this._(arg);

  static const premium = StorageAccountTier._(TfArgLiteral('Premium'));
  static const standard = StorageAccountTier._(TfArgLiteral('Standard'));

  static const List<StorageAccountTier> values = [premium, standard];
}

/// Storage Account Allowed Copy enum for `allowed_copy_scope`.
extension type const StorageAccountAllowedCopyScope._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountAllowedCopyScope.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountAllowedCopyScope.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountAllowedCopyScope.arg(TfArg<String> arg) : this._(arg);

  static const aad = StorageAccountAllowedCopyScope._(TfArgLiteral('AAD'));
  static const all = StorageAccountAllowedCopyScope._(TfArgLiteral('All'));
  static const privatelink = StorageAccountAllowedCopyScope._(
    TfArgLiteral('PrivateLink'),
  );

  static const List<StorageAccountAllowedCopyScope> values = [
    aad,
    all,
    privatelink,
  ];
}

/// Storage Account Dns Endpoint enum for `dns_endpoint_type`.
extension type const StorageAccountDnsEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountDnsEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountDnsEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountDnsEndpointType.arg(TfArg<String> arg) : this._(arg);

  static const azurednszone = StorageAccountDnsEndpointType._(
    TfArgLiteral('AzureDnsZone'),
  );
  static const standard = StorageAccountDnsEndpointType._(
    TfArgLiteral('Standard'),
  );

  static const List<StorageAccountDnsEndpointType> values = [
    azurednszone,
    standard,
  ];
}

/// Storage Account Min Tls enum for `min_tls_version`.
extension type const StorageAccountMinTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountMinTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountMinTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountMinTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const tls12 = StorageAccountMinTlsVersion._(TfArgLiteral('TLS1_2'));

  static const List<StorageAccountMinTlsVersion> values = [tls12];
}

/// Storage Account Provisioned Billing Model enum for `provisioned_billing_model_version`.
extension type const StorageAccountProvisionedBillingModelVersion._(
  TfArg<String> _
) implements TfArg<String> {
  StorageAccountProvisionedBillingModelVersion.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountProvisionedBillingModelVersion.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountProvisionedBillingModelVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v2 = StorageAccountProvisionedBillingModelVersion._(
    TfArgLiteral('V2'),
  );

  static const List<StorageAccountProvisionedBillingModelVersion> values = [v2];
}

/// Storage Account Public Network enum for `public_network_access`.
extension type const StorageAccountPublicNetworkAccess._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountPublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountPublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountPublicNetworkAccess.arg(TfArg<String> arg) : this._(arg);

  static const disabled = StorageAccountPublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = StorageAccountPublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );
  static const securedbyperimeter = StorageAccountPublicNetworkAccess._(
    TfArgLiteral('SecuredByPerimeter'),
  );

  static const List<StorageAccountPublicNetworkAccess> values = [
    disabled,
    enabled,
    securedbyperimeter,
  ];
}

/// Storage Account Queue Encryption Key enum for `queue_encryption_key_type`.
extension type const StorageAccountQueueEncryptionKeyType._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountQueueEncryptionKeyType.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountQueueEncryptionKeyType.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountQueueEncryptionKeyType.arg(TfArg<String> arg)
    : this._(arg);

  static const account = StorageAccountQueueEncryptionKeyType._(
    TfArgLiteral('Account'),
  );
  static const service = StorageAccountQueueEncryptionKeyType._(
    TfArgLiteral('Service'),
  );

  static const List<StorageAccountQueueEncryptionKeyType> values = [
    account,
    service,
  ];
}

/// Storage Account Table Encryption Key enum for `table_encryption_key_type`.
extension type const StorageAccountTableEncryptionKeyType._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountTableEncryptionKeyType.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountTableEncryptionKeyType.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountTableEncryptionKeyType.arg(TfArg<String> arg)
    : this._(arg);

  static const account = StorageAccountTableEncryptionKeyType._(
    TfArgLiteral('Account'),
  );
  static const service = StorageAccountTableEncryptionKeyType._(
    TfArgLiteral('Service'),
  );

  static const List<StorageAccountTableEncryptionKeyType> values = [
    account,
    service,
  ];
}

/// Typed helper for the `azure_files_authentication` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountAzureFilesAuthentication {
  const StorageAccountAzureFilesAuthentication({
    this.defaultShareLevelPermission,
    required this.directoryType,
    this.activeDirectory,
  });

  final StorageAccountDefaultShareLevelPermission? defaultShareLevelPermission;

  final StorageAccountDirectoryType directoryType;

  final StorageAccountActiveDirectory? activeDirectory;

  @internal
  Map<String, Object?> encode() => {
    'default_share_level_permission': ?defaultShareLevelPermission?.toTfJson(),
    'directory_type': directoryType.toTfJson(),
    'active_directory': ?activeDirectory?.encode(),
  };
}

/// `default_share_level_permission` — derived from the provider schema description.
extension type const StorageAccountDefaultShareLevelPermission._(
  TfArg<String> _
) implements TfArg<String> {
  StorageAccountDefaultShareLevelPermission.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountDefaultShareLevelPermission.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountDefaultShareLevelPermission.arg(TfArg<String> arg)
    : this._(arg);

  static const none = StorageAccountDefaultShareLevelPermission._(
    TfArgLiteral('None'),
  );
  static const storagefiledatasmbsharecontributor =
      StorageAccountDefaultShareLevelPermission._(
        TfArgLiteral('StorageFileDataSmbShareContributor'),
      );
  static const storagefiledatasmbshareelevatedcontributor =
      StorageAccountDefaultShareLevelPermission._(
        TfArgLiteral('StorageFileDataSmbShareElevatedContributor'),
      );
  static const storagefiledatasmbsharereader =
      StorageAccountDefaultShareLevelPermission._(
        TfArgLiteral('StorageFileDataSmbShareReader'),
      );

  static const List<StorageAccountDefaultShareLevelPermission> values = [
    none,
    storagefiledatasmbsharecontributor,
    storagefiledatasmbshareelevatedcontributor,
    storagefiledatasmbsharereader,
  ];
}

/// `directory_type` — derived from the provider schema description.
extension type const StorageAccountDirectoryType._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountDirectoryType.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountDirectoryType.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountDirectoryType.arg(TfArg<String> arg) : this._(arg);

  static const aadds = StorageAccountDirectoryType._(TfArgLiteral('AADDS'));
  static const aadkerb = StorageAccountDirectoryType._(TfArgLiteral('AADKERB'));
  static const ad = StorageAccountDirectoryType._(TfArgLiteral('AD'));

  static const List<StorageAccountDirectoryType> values = [aadds, aadkerb, ad];
}

/// Typed helper for the `azure_files_authentication.active_directory` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountActiveDirectory {
  const StorageAccountActiveDirectory({
    required this.domainGuid,
    required this.domainName,
    this.domainSid,
    this.forestName,
    this.netbiosDomainName,
    this.storageSid,
  });

  final TfArg<String> domainGuid;

  final TfArg<String> domainName;

  final TfArg<String>? domainSid;

  final TfArg<String>? forestName;

  final TfArg<String>? netbiosDomainName;

  final TfArg<String>? storageSid;

  @internal
  Map<String, Object?> encode() => {
    'domain_guid': domainGuid.toTfJson(),
    'domain_name': domainName.toTfJson(),
    'domain_sid': ?domainSid?.toTfJson(),
    'forest_name': ?forestName?.toTfJson(),
    'netbios_domain_name': ?netbiosDomainName?.toTfJson(),
    'storage_sid': ?storageSid?.toTfJson(),
  };
}

/// Typed helper for the `blob_properties` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountBlobProperties {
  const StorageAccountBlobProperties({
    this.changeFeedEnabled,
    this.changeFeedRetentionInDays,
    this.defaultServiceVersion,
    this.lastAccessTimeEnabled,
    this.versioningEnabled,
    this.containerDeleteRetentionPolicy,
    this.corsRule,
    this.deleteRetentionPolicy,
    this.restorePolicy,
  });

  final TfArg<bool>? changeFeedEnabled;

  final TfArg<num>? changeFeedRetentionInDays;

  final TfArg<String>? defaultServiceVersion;

  final TfArg<bool>? lastAccessTimeEnabled;

  final TfArg<bool>? versioningEnabled;

  final StorageAccountContainerDeleteRetentionPolicy?
  containerDeleteRetentionPolicy;

  final List<StorageAccountCorsRule>? corsRule;

  final StorageAccountDeleteRetentionPolicy? deleteRetentionPolicy;

  final StorageAccountRestorePolicy? restorePolicy;

  @internal
  Map<String, Object?> encode() => {
    'change_feed_enabled': ?changeFeedEnabled?.toTfJson(),
    'change_feed_retention_in_days': ?changeFeedRetentionInDays?.toTfJson(),
    'default_service_version': ?defaultServiceVersion?.toTfJson(),
    'last_access_time_enabled': ?lastAccessTimeEnabled?.toTfJson(),
    'versioning_enabled': ?versioningEnabled?.toTfJson(),
    'container_delete_retention_policy': ?containerDeleteRetentionPolicy
        ?.encode(),
    if (corsRule != null) 'cors_rule': [for (final e in corsRule!) e.encode()],
    'delete_retention_policy': ?deleteRetentionPolicy?.encode(),
    'restore_policy': ?restorePolicy?.encode(),
  };
}

/// Typed helper for the `blob_properties.container_delete_retention_policy` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountContainerDeleteRetentionPolicy {
  const StorageAccountContainerDeleteRetentionPolicy({this.days});

  final TfArg<num>? days;

  @internal
  Map<String, Object?> encode() => {'days': ?days?.toTfJson()};
}

/// Typed helper for the `blob_properties.cors_rule` block of
/// `azurerm_storage_account` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class StorageAccountCorsRule {
  const StorageAccountCorsRule({
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    required this.exposedHeaders,
    required this.maxAgeInSeconds,
  });

  final TfArg<List<String>> allowedHeaders;

  final EnumList<StorageAccountAllowedMethods> allowedMethods;

  final TfArg<List<String>> allowedOrigins;

  final TfArg<List<String>> exposedHeaders;

  final TfArg<num> maxAgeInSeconds;

  @internal
  Map<String, Object?> encode() => {
    'allowed_headers': allowedHeaders.toTfJson(),
    'allowed_methods': allowedMethods.toTfJson(),
    'allowed_origins': allowedOrigins.toTfJson(),
    'exposed_headers': exposedHeaders.toTfJson(),
    'max_age_in_seconds': maxAgeInSeconds.toTfJson(),
  };
}

/// `allowed_methods` — derived from the provider schema description.
extension type const StorageAccountAllowedMethods._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountAllowedMethods.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountAllowedMethods.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountAllowedMethods.arg(TfArg<String> arg) : this._(arg);

  static const delete = StorageAccountAllowedMethods._(TfArgLiteral('DELETE'));
  static const get = StorageAccountAllowedMethods._(TfArgLiteral('GET'));
  static const head = StorageAccountAllowedMethods._(TfArgLiteral('HEAD'));
  static const merge = StorageAccountAllowedMethods._(TfArgLiteral('MERGE'));
  static const post = StorageAccountAllowedMethods._(TfArgLiteral('POST'));
  static const options = StorageAccountAllowedMethods._(
    TfArgLiteral('OPTIONS'),
  );
  static const put = StorageAccountAllowedMethods._(TfArgLiteral('PUT'));

  static const List<StorageAccountAllowedMethods> values = [
    delete,
    get,
    head,
    merge,
    post,
    options,
    put,
  ];
}

/// Typed helper for the `blob_properties.delete_retention_policy` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountDeleteRetentionPolicy {
  const StorageAccountDeleteRetentionPolicy({
    this.days,
    this.permanentDeleteEnabled,
  });

  final TfArg<num>? days;

  final TfArg<bool>? permanentDeleteEnabled;

  @internal
  Map<String, Object?> encode() => {
    'days': ?days?.toTfJson(),
    'permanent_delete_enabled': ?permanentDeleteEnabled?.toTfJson(),
  };
}

/// Typed helper for the `blob_properties.restore_policy` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountRestorePolicy {
  const StorageAccountRestorePolicy({required this.days});

  final TfArg<num> days;

  @internal
  Map<String, Object?> encode() => {'days': days.toTfJson()};
}

/// Typed helper for the `custom_domain` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountCustomDomain {
  const StorageAccountCustomDomain({required this.name, this.useSubdomain});

  final TfArg<String> name;

  final TfArg<bool>? useSubdomain;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'use_subdomain': ?useSubdomain?.toTfJson(),
  };
}

/// Typed helper for the `customer_managed_key` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountCustomerManagedKey {
  const StorageAccountCustomerManagedKey({
    required this.keyVaultKeyId,
    required this.userAssignedIdentityId,
  });

  final TfArg<String> keyVaultKeyId;

  final TfArg<String> userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_key_id': keyVaultKeyId.toTfJson(),
    'user_assigned_identity_id': userAssignedIdentityId.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountIdentity {
  const StorageAccountIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `immutability_policy` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountImmutabilityPolicy {
  const StorageAccountImmutabilityPolicy({
    required this.allowProtectedAppendWrites,
    required this.periodSinceCreationInDays,
    required this.state,
  });

  final TfArg<bool> allowProtectedAppendWrites;

  final TfArg<num> periodSinceCreationInDays;

  final StorageAccountState state;

  @internal
  Map<String, Object?> encode() => {
    'allow_protected_append_writes': allowProtectedAppendWrites.toTfJson(),
    'period_since_creation_in_days': periodSinceCreationInDays.toTfJson(),
    'state': state.toTfJson(),
  };
}

/// `state` — derived from the provider schema description.
extension type const StorageAccountState._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountState.variable(String name) : this._(TfArg.variable(name));
  StorageAccountState.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountState.arg(TfArg<String> arg) : this._(arg);

  static const disabled = StorageAccountState._(TfArgLiteral('Disabled'));
  static const locked = StorageAccountState._(TfArgLiteral('Locked'));
  static const unlocked = StorageAccountState._(TfArgLiteral('Unlocked'));

  static const List<StorageAccountState> values = [disabled, locked, unlocked];
}

/// Typed helper for the `network_rules` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountNetworkRules {
  const StorageAccountNetworkRules({
    this.bypass,
    required this.defaultAction,
    this.ipRules,
    this.virtualNetworkSubnetIds,
    this.privateLinkAccess,
  });

  final EnumList<StorageAccountBypass>? bypass;

  final StorageAccountDefaultAction defaultAction;

  final TfArg<List<String>>? ipRules;

  final TfArg<List<String>>? virtualNetworkSubnetIds;

  final List<StorageAccountPrivateLinkAccess>? privateLinkAccess;

  @internal
  Map<String, Object?> encode() => {
    'bypass': ?bypass?.toTfJson(),
    'default_action': defaultAction.toTfJson(),
    'ip_rules': ?ipRules?.toTfJson(),
    'virtual_network_subnet_ids': ?virtualNetworkSubnetIds?.toTfJson(),
    if (privateLinkAccess != null)
      'private_link_access': [for (final e in privateLinkAccess!) e.encode()],
  };
}

/// `bypass` — derived from the provider schema description.
extension type const StorageAccountBypass._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountBypass.variable(String name) : this._(TfArg.variable(name));
  StorageAccountBypass.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountBypass.arg(TfArg<String> arg) : this._(arg);

  static const azureservices = StorageAccountBypass._(
    TfArgLiteral('AzureServices'),
  );
  static const logging = StorageAccountBypass._(TfArgLiteral('Logging'));
  static const metrics = StorageAccountBypass._(TfArgLiteral('Metrics'));
  static const none = StorageAccountBypass._(TfArgLiteral('None'));

  static const List<StorageAccountBypass> values = [
    azureservices,
    logging,
    metrics,
    none,
  ];
}

/// `default_action` — derived from the provider schema description.
extension type const StorageAccountDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountDefaultAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = StorageAccountDefaultAction._(TfArgLiteral('Allow'));
  static const deny = StorageAccountDefaultAction._(TfArgLiteral('Deny'));

  static const List<StorageAccountDefaultAction> values = [allow, deny];
}

/// Typed helper for the `network_rules.private_link_access` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountPrivateLinkAccess {
  const StorageAccountPrivateLinkAccess({
    required this.endpointResourceId,
    this.endpointTenantId,
  });

  final TfArg<String> endpointResourceId;

  final TfArg<String>? endpointTenantId;

  @internal
  Map<String, Object?> encode() => {
    'endpoint_resource_id': endpointResourceId.toTfJson(),
    'endpoint_tenant_id': ?endpointTenantId?.toTfJson(),
  };
}

/// Typed helper for the `routing` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountRouting {
  const StorageAccountRouting({
    this.choice,
    this.publishInternetEndpoints,
    this.publishMicrosoftEndpoints,
  });

  final StorageAccountChoice? choice;

  final TfArg<bool>? publishInternetEndpoints;

  final TfArg<bool>? publishMicrosoftEndpoints;

  @internal
  Map<String, Object?> encode() => {
    'choice': ?choice?.toTfJson(),
    'publish_internet_endpoints': ?publishInternetEndpoints?.toTfJson(),
    'publish_microsoft_endpoints': ?publishMicrosoftEndpoints?.toTfJson(),
  };
}

/// `choice` — derived from the provider schema description.
extension type const StorageAccountChoice._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountChoice.variable(String name) : this._(TfArg.variable(name));
  StorageAccountChoice.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountChoice.arg(TfArg<String> arg) : this._(arg);

  static const internetrouting = StorageAccountChoice._(
    TfArgLiteral('InternetRouting'),
  );
  static const microsoftrouting = StorageAccountChoice._(
    TfArgLiteral('MicrosoftRouting'),
  );

  static const List<StorageAccountChoice> values = [
    internetrouting,
    microsoftrouting,
  ];
}

/// Typed helper for the `sas_policy` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountSasPolicy {
  const StorageAccountSasPolicy({
    this.expirationAction,
    required this.expirationPeriod,
  });

  final StorageAccountExpirationAction? expirationAction;

  final TfArg<String> expirationPeriod;

  @internal
  Map<String, Object?> encode() => {
    'expiration_action': ?expirationAction?.toTfJson(),
    'expiration_period': expirationPeriod.toTfJson(),
  };
}

/// `expiration_action` — derived from the provider schema description.
extension type const StorageAccountExpirationAction._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountExpirationAction.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountExpirationAction.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountExpirationAction.arg(TfArg<String> arg) : this._(arg);

  static const block = StorageAccountExpirationAction._(TfArgLiteral('Block'));
  static const log = StorageAccountExpirationAction._(TfArgLiteral('Log'));

  static const List<StorageAccountExpirationAction> values = [block, log];
}

/// Typed helper for the `share_properties` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountShareProperties {
  const StorageAccountShareProperties({
    this.corsRule,
    this.retentionPolicy,
    this.smb,
  });

  final List<StorageAccountCorsRule>? corsRule;

  final StorageAccountRetentionPolicy? retentionPolicy;

  final StorageAccountSmb? smb;

  @internal
  Map<String, Object?> encode() => {
    if (corsRule != null) 'cors_rule': [for (final e in corsRule!) e.encode()],
    'retention_policy': ?retentionPolicy?.encode(),
    'smb': ?smb?.encode(),
  };
}

/// Typed helper for the `share_properties.retention_policy` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountRetentionPolicy {
  const StorageAccountRetentionPolicy({this.days});

  final TfArg<num>? days;

  @internal
  Map<String, Object?> encode() => {'days': ?days?.toTfJson()};
}

/// Typed helper for the `share_properties.smb` block of
/// `azurerm_storage_account` (derived from provider schema).
@immutable
final class StorageAccountSmb {
  const StorageAccountSmb({
    this.authenticationTypes,
    this.channelEncryptionType,
    this.kerberosTicketEncryptionType,
    this.multichannelEnabled,
    this.versions,
  });

  final EnumList<StorageAccountAuthenticationTypes>? authenticationTypes;

  final EnumList<StorageAccountChannelEncryptionType>? channelEncryptionType;

  final EnumList<StorageAccountKerberosTicketEncryptionType>?
  kerberosTicketEncryptionType;

  final TfArg<bool>? multichannelEnabled;

  final EnumList<StorageAccountVersions>? versions;

  @internal
  Map<String, Object?> encode() => {
    'authentication_types': ?authenticationTypes?.toTfJson(),
    'channel_encryption_type': ?channelEncryptionType?.toTfJson(),
    'kerberos_ticket_encryption_type': ?kerberosTicketEncryptionType
        ?.toTfJson(),
    'multichannel_enabled': ?multichannelEnabled?.toTfJson(),
    'versions': ?versions?.toTfJson(),
  };
}

/// `authentication_types` — derived from the provider schema description.
extension type const StorageAccountAuthenticationTypes._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountAuthenticationTypes.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountAuthenticationTypes.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountAuthenticationTypes.arg(TfArg<String> arg) : this._(arg);

  static const kerberos = StorageAccountAuthenticationTypes._(
    TfArgLiteral('Kerberos'),
  );
  static const ntlmv2 = StorageAccountAuthenticationTypes._(
    TfArgLiteral('NTLMv2'),
  );

  static const List<StorageAccountAuthenticationTypes> values = [
    kerberos,
    ntlmv2,
  ];
}

/// `channel_encryption_type` — derived from the provider schema description.
extension type const StorageAccountChannelEncryptionType._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountChannelEncryptionType.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountChannelEncryptionType.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountChannelEncryptionType.arg(TfArg<String> arg)
    : this._(arg);

  static const aes128Ccm = StorageAccountChannelEncryptionType._(
    TfArgLiteral('AES-128-CCM'),
  );
  static const aes128Gcm = StorageAccountChannelEncryptionType._(
    TfArgLiteral('AES-128-GCM'),
  );
  static const aes256Gcm = StorageAccountChannelEncryptionType._(
    TfArgLiteral('AES-256-GCM'),
  );

  static const List<StorageAccountChannelEncryptionType> values = [
    aes128Ccm,
    aes128Gcm,
    aes256Gcm,
  ];
}

/// `kerberos_ticket_encryption_type` — derived from the provider schema description.
extension type const StorageAccountKerberosTicketEncryptionType._(
  TfArg<String> _
) implements TfArg<String> {
  StorageAccountKerberosTicketEncryptionType.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountKerberosTicketEncryptionType.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountKerberosTicketEncryptionType.arg(TfArg<String> arg)
    : this._(arg);

  static const aes256 = StorageAccountKerberosTicketEncryptionType._(
    TfArgLiteral('AES-256'),
  );
  static const rc4Hmac = StorageAccountKerberosTicketEncryptionType._(
    TfArgLiteral('RC4-HMAC'),
  );

  static const List<StorageAccountKerberosTicketEncryptionType> values = [
    aes256,
    rc4Hmac,
  ];
}

/// `versions` — derived from the provider schema description.
extension type const StorageAccountVersions._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountVersions.variable(String name) : this._(TfArg.variable(name));
  StorageAccountVersions.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountVersions.arg(TfArg<String> arg) : this._(arg);

  static const smb2p1 = StorageAccountVersions._(TfArgLiteral('SMB2.1'));
  static const smb3p0 = StorageAccountVersions._(TfArgLiteral('SMB3.0'));
  static const smb3p1p1 = StorageAccountVersions._(TfArgLiteral('SMB3.1.1'));

  static const List<StorageAccountVersions> values = [smb2p1, smb3p0, smb3p1p1];
}

/// Factory wrapper for `azurerm_storage_account`.
final class AzurermStorageAccount extends Resource {
  static const String tfType = 'azurerm_storage_account';

  AzurermStorageAccount(
    super.localName, {
    StorageAccountAccessTier? accessTier,
    StorageAccountKind? accountKind,
    required StorageAccountReplicationType accountReplicationType,
    required StorageAccountTier accountTier,
    TfArg<bool>? allowNestedItemsToBePublic,
    StorageAccountAllowedCopyScope? allowedCopyScope,
    TfArg<bool>? crossTenantReplicationEnabled,
    TfArg<bool>? defaultToOauthAuthentication,
    StorageAccountDnsEndpointType? dnsEndpointType,
    TfArg<String>? edgeZone,
    TfArg<bool>? httpsTrafficOnlyEnabled,
    TfArg<bool>? infrastructureEncryptionEnabled,
    TfArg<bool>? isHnsEnabled,
    TfArg<bool>? largeFileShareEnabled,
    TfArg<bool>? localUserEnabled,
    required TfArg<String> location,
    StorageAccountMinTlsVersion? minTlsVersion,
    required TfArg<String> name,
    TfArg<bool>? nfsv3Enabled,
    StorageAccountProvisionedBillingModelVersion?
    provisionedBillingModelVersion,
    StorageAccountPublicNetworkAccess? publicNetworkAccess,
    TfArg<bool>? publicNetworkAccessEnabled,
    StorageAccountQueueEncryptionKeyType? queueEncryptionKeyType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? sftpEnabled,
    TfArg<bool>? sharedAccessKeyEnabled,
    StorageAccountTableEncryptionKeyType? tableEncryptionKeyType,
    TfArg<Map<String, String>>? tags,
    StorageAccountAzureFilesAuthentication? azureFilesAuthentication,
    StorageAccountBlobProperties? blobProperties,
    StorageAccountCustomDomain? customDomain,
    StorageAccountCustomerManagedKey? customerManagedKey,
    StorageAccountIdentity? identity,
    StorageAccountImmutabilityPolicy? immutabilityPolicy,
    StorageAccountNetworkRules? networkRules,
    StorageAccountRouting? routing,
    StorageAccountSasPolicy? sasPolicy,
    StorageAccountShareProperties? shareProperties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_tier': ?accessTier,
           'account_kind': ?accountKind,
           'account_replication_type': accountReplicationType,
           'account_tier': accountTier,
           'allow_nested_items_to_be_public': ?allowNestedItemsToBePublic,
           'allowed_copy_scope': ?allowedCopyScope,
           'cross_tenant_replication_enabled': ?crossTenantReplicationEnabled,
           'default_to_oauth_authentication': ?defaultToOauthAuthentication,
           'dns_endpoint_type': ?dnsEndpointType,
           'edge_zone': ?edgeZone,
           'https_traffic_only_enabled': ?httpsTrafficOnlyEnabled,
           'infrastructure_encryption_enabled':
               ?infrastructureEncryptionEnabled,
           'is_hns_enabled': ?isHnsEnabled,
           'large_file_share_enabled': ?largeFileShareEnabled,
           'local_user_enabled': ?localUserEnabled,
           'location': location,
           'min_tls_version': ?minTlsVersion,
           'name': name,
           'nfsv3_enabled': ?nfsv3Enabled,
           'provisioned_billing_model_version': ?provisionedBillingModelVersion,
           'public_network_access': ?publicNetworkAccess,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'queue_encryption_key_type': ?queueEncryptionKeyType,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sftp_enabled': ?sftpEnabled,
           'shared_access_key_enabled': ?sharedAccessKeyEnabled,
           'table_encryption_key_type': ?tableEncryptionKeyType,
           'tags': ?tags,
           if (azureFilesAuthentication != null)
             'azure_files_authentication': TfArg.literal(
               azureFilesAuthentication.encode(),
             ),
           if (blobProperties != null)
             'blob_properties': TfArg.literal(blobProperties.encode()),
           if (customDomain != null)
             'custom_domain': TfArg.literal(customDomain.encode()),
           if (customerManagedKey != null)
             'customer_managed_key': TfArg.literal(customerManagedKey.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (immutabilityPolicy != null)
             'immutability_policy': TfArg.literal(immutabilityPolicy.encode()),
           if (networkRules != null)
             'network_rules': TfArg.literal(networkRules.encode()),
           if (routing != null) 'routing': TfArg.literal(routing.encode()),
           if (sasPolicy != null)
             'sas_policy': TfArg.literal(sasPolicy.encode()),
           if (shareProperties != null)
             'share_properties': TfArg.literal(shareProperties.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageAccount>`.
  RefTo<AzurermStorageAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_replication_type_migrating_to` attribute.
  TfRef<String> get accountReplicationTypeMigratingTo =>
      TfRef.attribute<String>(this, 'account_replication_type_migrating_to');

  /// Reference to `account_replication_type_migration_in_progress` attribute.
  TfRef<bool> get accountReplicationTypeMigrationInProgress =>
      TfRef.attribute<bool>(
        this,
        'account_replication_type_migration_in_progress',
      );

  /// Reference to `primary_access_key` attribute.
  TfRef<String> get primaryAccessKey =>
      TfRef.attribute<String>(this, 'primary_access_key');

  /// Reference to `primary_blob_connection_string` attribute.
  TfRef<String> get primaryBlobConnectionString =>
      TfRef.attribute<String>(this, 'primary_blob_connection_string');

  /// Reference to `primary_blob_endpoint` attribute.
  TfRef<String> get primaryBlobEndpoint =>
      TfRef.attribute<String>(this, 'primary_blob_endpoint');

  /// Reference to `primary_blob_host` attribute.
  TfRef<String> get primaryBlobHost =>
      TfRef.attribute<String>(this, 'primary_blob_host');

  /// Reference to `primary_blob_internet_endpoint` attribute.
  TfRef<String> get primaryBlobInternetEndpoint =>
      TfRef.attribute<String>(this, 'primary_blob_internet_endpoint');

  /// Reference to `primary_blob_internet_host` attribute.
  TfRef<String> get primaryBlobInternetHost =>
      TfRef.attribute<String>(this, 'primary_blob_internet_host');

  /// Reference to `primary_blob_microsoft_endpoint` attribute.
  TfRef<String> get primaryBlobMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'primary_blob_microsoft_endpoint');

  /// Reference to `primary_blob_microsoft_host` attribute.
  TfRef<String> get primaryBlobMicrosoftHost =>
      TfRef.attribute<String>(this, 'primary_blob_microsoft_host');

  /// Reference to `primary_connection_string` attribute.
  TfRef<String> get primaryConnectionString =>
      TfRef.attribute<String>(this, 'primary_connection_string');

  /// Reference to `primary_dfs_endpoint` attribute.
  TfRef<String> get primaryDfsEndpoint =>
      TfRef.attribute<String>(this, 'primary_dfs_endpoint');

  /// Reference to `primary_dfs_host` attribute.
  TfRef<String> get primaryDfsHost =>
      TfRef.attribute<String>(this, 'primary_dfs_host');

  /// Reference to `primary_dfs_internet_endpoint` attribute.
  TfRef<String> get primaryDfsInternetEndpoint =>
      TfRef.attribute<String>(this, 'primary_dfs_internet_endpoint');

  /// Reference to `primary_dfs_internet_host` attribute.
  TfRef<String> get primaryDfsInternetHost =>
      TfRef.attribute<String>(this, 'primary_dfs_internet_host');

  /// Reference to `primary_dfs_microsoft_endpoint` attribute.
  TfRef<String> get primaryDfsMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'primary_dfs_microsoft_endpoint');

  /// Reference to `primary_dfs_microsoft_host` attribute.
  TfRef<String> get primaryDfsMicrosoftHost =>
      TfRef.attribute<String>(this, 'primary_dfs_microsoft_host');

  /// Reference to `primary_file_endpoint` attribute.
  TfRef<String> get primaryFileEndpoint =>
      TfRef.attribute<String>(this, 'primary_file_endpoint');

  /// Reference to `primary_file_host` attribute.
  TfRef<String> get primaryFileHost =>
      TfRef.attribute<String>(this, 'primary_file_host');

  /// Reference to `primary_file_internet_endpoint` attribute.
  TfRef<String> get primaryFileInternetEndpoint =>
      TfRef.attribute<String>(this, 'primary_file_internet_endpoint');

  /// Reference to `primary_file_internet_host` attribute.
  TfRef<String> get primaryFileInternetHost =>
      TfRef.attribute<String>(this, 'primary_file_internet_host');

  /// Reference to `primary_file_microsoft_endpoint` attribute.
  TfRef<String> get primaryFileMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'primary_file_microsoft_endpoint');

  /// Reference to `primary_file_microsoft_host` attribute.
  TfRef<String> get primaryFileMicrosoftHost =>
      TfRef.attribute<String>(this, 'primary_file_microsoft_host');

  /// Reference to `primary_location` attribute.
  TfRef<String> get primaryLocation =>
      TfRef.attribute<String>(this, 'primary_location');

  /// Reference to `primary_queue_endpoint` attribute.
  TfRef<String> get primaryQueueEndpoint =>
      TfRef.attribute<String>(this, 'primary_queue_endpoint');

  /// Reference to `primary_queue_host` attribute.
  TfRef<String> get primaryQueueHost =>
      TfRef.attribute<String>(this, 'primary_queue_host');

  /// Reference to `primary_queue_microsoft_endpoint` attribute.
  TfRef<String> get primaryQueueMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'primary_queue_microsoft_endpoint');

  /// Reference to `primary_queue_microsoft_host` attribute.
  TfRef<String> get primaryQueueMicrosoftHost =>
      TfRef.attribute<String>(this, 'primary_queue_microsoft_host');

  /// Reference to `primary_table_endpoint` attribute.
  TfRef<String> get primaryTableEndpoint =>
      TfRef.attribute<String>(this, 'primary_table_endpoint');

  /// Reference to `primary_table_host` attribute.
  TfRef<String> get primaryTableHost =>
      TfRef.attribute<String>(this, 'primary_table_host');

  /// Reference to `primary_table_microsoft_endpoint` attribute.
  TfRef<String> get primaryTableMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'primary_table_microsoft_endpoint');

  /// Reference to `primary_table_microsoft_host` attribute.
  TfRef<String> get primaryTableMicrosoftHost =>
      TfRef.attribute<String>(this, 'primary_table_microsoft_host');

  /// Reference to `primary_web_endpoint` attribute.
  TfRef<String> get primaryWebEndpoint =>
      TfRef.attribute<String>(this, 'primary_web_endpoint');

  /// Reference to `primary_web_host` attribute.
  TfRef<String> get primaryWebHost =>
      TfRef.attribute<String>(this, 'primary_web_host');

  /// Reference to `primary_web_internet_endpoint` attribute.
  TfRef<String> get primaryWebInternetEndpoint =>
      TfRef.attribute<String>(this, 'primary_web_internet_endpoint');

  /// Reference to `primary_web_internet_host` attribute.
  TfRef<String> get primaryWebInternetHost =>
      TfRef.attribute<String>(this, 'primary_web_internet_host');

  /// Reference to `primary_web_microsoft_endpoint` attribute.
  TfRef<String> get primaryWebMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'primary_web_microsoft_endpoint');

  /// Reference to `primary_web_microsoft_host` attribute.
  TfRef<String> get primaryWebMicrosoftHost =>
      TfRef.attribute<String>(this, 'primary_web_microsoft_host');

  /// Reference to `secondary_access_key` attribute.
  TfRef<String> get secondaryAccessKey =>
      TfRef.attribute<String>(this, 'secondary_access_key');

  /// Reference to `secondary_blob_connection_string` attribute.
  TfRef<String> get secondaryBlobConnectionString =>
      TfRef.attribute<String>(this, 'secondary_blob_connection_string');

  /// Reference to `secondary_blob_endpoint` attribute.
  TfRef<String> get secondaryBlobEndpoint =>
      TfRef.attribute<String>(this, 'secondary_blob_endpoint');

  /// Reference to `secondary_blob_host` attribute.
  TfRef<String> get secondaryBlobHost =>
      TfRef.attribute<String>(this, 'secondary_blob_host');

  /// Reference to `secondary_blob_internet_endpoint` attribute.
  TfRef<String> get secondaryBlobInternetEndpoint =>
      TfRef.attribute<String>(this, 'secondary_blob_internet_endpoint');

  /// Reference to `secondary_blob_internet_host` attribute.
  TfRef<String> get secondaryBlobInternetHost =>
      TfRef.attribute<String>(this, 'secondary_blob_internet_host');

  /// Reference to `secondary_blob_microsoft_endpoint` attribute.
  TfRef<String> get secondaryBlobMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'secondary_blob_microsoft_endpoint');

  /// Reference to `secondary_blob_microsoft_host` attribute.
  TfRef<String> get secondaryBlobMicrosoftHost =>
      TfRef.attribute<String>(this, 'secondary_blob_microsoft_host');

  /// Reference to `secondary_connection_string` attribute.
  TfRef<String> get secondaryConnectionString =>
      TfRef.attribute<String>(this, 'secondary_connection_string');

  /// Reference to `secondary_dfs_endpoint` attribute.
  TfRef<String> get secondaryDfsEndpoint =>
      TfRef.attribute<String>(this, 'secondary_dfs_endpoint');

  /// Reference to `secondary_dfs_host` attribute.
  TfRef<String> get secondaryDfsHost =>
      TfRef.attribute<String>(this, 'secondary_dfs_host');

  /// Reference to `secondary_dfs_internet_endpoint` attribute.
  TfRef<String> get secondaryDfsInternetEndpoint =>
      TfRef.attribute<String>(this, 'secondary_dfs_internet_endpoint');

  /// Reference to `secondary_dfs_internet_host` attribute.
  TfRef<String> get secondaryDfsInternetHost =>
      TfRef.attribute<String>(this, 'secondary_dfs_internet_host');

  /// Reference to `secondary_dfs_microsoft_endpoint` attribute.
  TfRef<String> get secondaryDfsMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'secondary_dfs_microsoft_endpoint');

  /// Reference to `secondary_dfs_microsoft_host` attribute.
  TfRef<String> get secondaryDfsMicrosoftHost =>
      TfRef.attribute<String>(this, 'secondary_dfs_microsoft_host');

  /// Reference to `secondary_file_endpoint` attribute.
  TfRef<String> get secondaryFileEndpoint =>
      TfRef.attribute<String>(this, 'secondary_file_endpoint');

  /// Reference to `secondary_file_host` attribute.
  TfRef<String> get secondaryFileHost =>
      TfRef.attribute<String>(this, 'secondary_file_host');

  /// Reference to `secondary_file_internet_endpoint` attribute.
  TfRef<String> get secondaryFileInternetEndpoint =>
      TfRef.attribute<String>(this, 'secondary_file_internet_endpoint');

  /// Reference to `secondary_file_internet_host` attribute.
  TfRef<String> get secondaryFileInternetHost =>
      TfRef.attribute<String>(this, 'secondary_file_internet_host');

  /// Reference to `secondary_file_microsoft_endpoint` attribute.
  TfRef<String> get secondaryFileMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'secondary_file_microsoft_endpoint');

  /// Reference to `secondary_file_microsoft_host` attribute.
  TfRef<String> get secondaryFileMicrosoftHost =>
      TfRef.attribute<String>(this, 'secondary_file_microsoft_host');

  /// Reference to `secondary_location` attribute.
  TfRef<String> get secondaryLocation =>
      TfRef.attribute<String>(this, 'secondary_location');

  /// Reference to `secondary_queue_endpoint` attribute.
  TfRef<String> get secondaryQueueEndpoint =>
      TfRef.attribute<String>(this, 'secondary_queue_endpoint');

  /// Reference to `secondary_queue_host` attribute.
  TfRef<String> get secondaryQueueHost =>
      TfRef.attribute<String>(this, 'secondary_queue_host');

  /// Reference to `secondary_queue_microsoft_endpoint` attribute.
  TfRef<String> get secondaryQueueMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'secondary_queue_microsoft_endpoint');

  /// Reference to `secondary_queue_microsoft_host` attribute.
  TfRef<String> get secondaryQueueMicrosoftHost =>
      TfRef.attribute<String>(this, 'secondary_queue_microsoft_host');

  /// Reference to `secondary_table_endpoint` attribute.
  TfRef<String> get secondaryTableEndpoint =>
      TfRef.attribute<String>(this, 'secondary_table_endpoint');

  /// Reference to `secondary_table_host` attribute.
  TfRef<String> get secondaryTableHost =>
      TfRef.attribute<String>(this, 'secondary_table_host');

  /// Reference to `secondary_table_microsoft_endpoint` attribute.
  TfRef<String> get secondaryTableMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'secondary_table_microsoft_endpoint');

  /// Reference to `secondary_table_microsoft_host` attribute.
  TfRef<String> get secondaryTableMicrosoftHost =>
      TfRef.attribute<String>(this, 'secondary_table_microsoft_host');

  /// Reference to `secondary_web_endpoint` attribute.
  TfRef<String> get secondaryWebEndpoint =>
      TfRef.attribute<String>(this, 'secondary_web_endpoint');

  /// Reference to `secondary_web_host` attribute.
  TfRef<String> get secondaryWebHost =>
      TfRef.attribute<String>(this, 'secondary_web_host');

  /// Reference to `secondary_web_internet_endpoint` attribute.
  TfRef<String> get secondaryWebInternetEndpoint =>
      TfRef.attribute<String>(this, 'secondary_web_internet_endpoint');

  /// Reference to `secondary_web_internet_host` attribute.
  TfRef<String> get secondaryWebInternetHost =>
      TfRef.attribute<String>(this, 'secondary_web_internet_host');

  /// Reference to `secondary_web_microsoft_endpoint` attribute.
  TfRef<String> get secondaryWebMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'secondary_web_microsoft_endpoint');

  /// Reference to `secondary_web_microsoft_host` attribute.
  TfRef<String> get secondaryWebMicrosoftHost =>
      TfRef.attribute<String>(this, 'secondary_web_microsoft_host');

  /// Reference to `access_tier` attribute.
  TfRef<String> get accessTier => TfRef.attribute<String>(this, 'access_tier');

  /// Reference to `account_kind` attribute.
  TfRef<String> get accountKind =>
      TfRef.attribute<String>(this, 'account_kind');

  /// Reference to `account_replication_type` attribute.
  TfRef<String> get accountReplicationType =>
      TfRef.attribute<String>(this, 'account_replication_type');

  /// Reference to `account_tier` attribute.
  TfRef<String> get accountTier =>
      TfRef.attribute<String>(this, 'account_tier');

  /// Reference to `allow_nested_items_to_be_public` attribute.
  TfRef<bool> get allowNestedItemsToBePublic =>
      TfRef.attribute<bool>(this, 'allow_nested_items_to_be_public');

  /// Reference to `allowed_copy_scope` attribute.
  TfRef<String> get allowedCopyScope =>
      TfRef.attribute<String>(this, 'allowed_copy_scope');

  /// Reference to `cross_tenant_replication_enabled` attribute.
  TfRef<bool> get crossTenantReplicationEnabled =>
      TfRef.attribute<bool>(this, 'cross_tenant_replication_enabled');

  /// Reference to `default_to_oauth_authentication` attribute.
  TfRef<bool> get defaultToOauthAuthentication =>
      TfRef.attribute<bool>(this, 'default_to_oauth_authentication');

  /// Reference to `dns_endpoint_type` attribute.
  TfRef<String> get dnsEndpointType =>
      TfRef.attribute<String>(this, 'dns_endpoint_type');

  /// Reference to `edge_zone` attribute.
  TfRef<String> get edgeZone => TfRef.attribute<String>(this, 'edge_zone');

  /// Reference to `https_traffic_only_enabled` attribute.
  TfRef<bool> get httpsTrafficOnlyEnabled =>
      TfRef.attribute<bool>(this, 'https_traffic_only_enabled');

  /// Reference to `infrastructure_encryption_enabled` attribute.
  TfRef<bool> get infrastructureEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'infrastructure_encryption_enabled');

  /// Reference to `is_hns_enabled` attribute.
  TfRef<bool> get isHnsEnabled => TfRef.attribute<bool>(this, 'is_hns_enabled');

  /// Reference to `large_file_share_enabled` attribute.
  TfRef<bool> get largeFileShareEnabled =>
      TfRef.attribute<bool>(this, 'large_file_share_enabled');

  /// Reference to `local_user_enabled` attribute.
  TfRef<bool> get localUserEnabled =>
      TfRef.attribute<bool>(this, 'local_user_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `min_tls_version` attribute.
  TfRef<String> get minTlsVersion =>
      TfRef.attribute<String>(this, 'min_tls_version');

  /// Reference to `nfsv3_enabled` attribute.
  TfRef<bool> get nfsv3Enabled => TfRef.attribute<bool>(this, 'nfsv3_enabled');

  /// Reference to `provisioned_billing_model_version` attribute.
  TfRef<String> get provisionedBillingModelVersion =>
      TfRef.attribute<String>(this, 'provisioned_billing_model_version');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `queue_encryption_key_type` attribute.
  TfRef<String> get queueEncryptionKeyType =>
      TfRef.attribute<String>(this, 'queue_encryption_key_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sftp_enabled` attribute.
  TfRef<bool> get sftpEnabled => TfRef.attribute<bool>(this, 'sftp_enabled');

  /// Reference to `shared_access_key_enabled` attribute.
  TfRef<bool> get sharedAccessKeyEnabled =>
      TfRef.attribute<bool>(this, 'shared_access_key_enabled');

  /// Reference to `table_encryption_key_type` attribute.
  TfRef<String> get tableEncryptionKeyType =>
      TfRef.attribute<String>(this, 'table_encryption_key_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
