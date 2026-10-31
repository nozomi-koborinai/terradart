// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_logic_app_standard`.
const Set<String> _azurermLogicAppStandardSensitive = <String>{
  'connection_string.value',
  'storage_account_access_key',
};

/// Logic App Standard Client Certificate enum for `client_certificate_mode`.
extension type const LogicAppStandardClientCertificateMode._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppStandardClientCertificateMode.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppStandardClientCertificateMode.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppStandardClientCertificateMode.arg(TfArg<String> arg)
    : this._(arg);

  static const optional = LogicAppStandardClientCertificateMode._(
    TfArgLiteral('Optional'),
  );
  static const optionalinteractiveuser =
      LogicAppStandardClientCertificateMode._(
        TfArgLiteral('OptionalInteractiveUser'),
      );
  static const required = LogicAppStandardClientCertificateMode._(
    TfArgLiteral('Required'),
  );

  static const List<LogicAppStandardClientCertificateMode> values = [
    optional,
    optionalinteractiveuser,
    required,
  ];
}

/// Logic App Standard Public Network enum for `public_network_access`.
extension type const LogicAppStandardPublicNetworkAccess._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppStandardPublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppStandardPublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppStandardPublicNetworkAccess.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = LogicAppStandardPublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );
  static const disabled = LogicAppStandardPublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );

  static const List<LogicAppStandardPublicNetworkAccess> values = [
    enabled,
    disabled,
  ];
}

/// Exactly one of `storage_account_name`, `storage_key_vault_secret_id` on `azurerm_logic_app_standard`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.storageAccountName(...)`.
sealed class LogicAppStandardStorage {
  const LogicAppStandardStorage();

  /// Sets `storage_account_name`.
  const factory LogicAppStandardStorage.storageAccountName(
    RefTo<AzurermStorageAccount> storageAccountName,
  ) = LogicAppStandardStorageAccountName;

  /// Sets `storage_key_vault_secret_id`.
  const factory LogicAppStandardStorage.storageKeyVaultSecretId(
    TfArg<String> storageKeyVaultSecretId,
  ) = LogicAppStandardStorageKeyVaultSecretId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LogicAppStandardStorage.storageAccountName] choice: sets `storage_account_name`.
final class LogicAppStandardStorageAccountName extends LogicAppStandardStorage {
  const LogicAppStandardStorageAccountName(this.storageAccountName);

  final RefTo<AzurermStorageAccount> storageAccountName;

  @internal
  @override
  String get blockKey => 'storage_account_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'storage_account_name': storageAccountName.encodeAs('name').toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'storage_account_name': storageAccountName.encodeAs('name'),
  };
}

/// The [LogicAppStandardStorage.storageKeyVaultSecretId] choice: sets `storage_key_vault_secret_id`.
final class LogicAppStandardStorageKeyVaultSecretId
    extends LogicAppStandardStorage {
  const LogicAppStandardStorageKeyVaultSecretId(this.storageKeyVaultSecretId);

  final TfArg<String> storageKeyVaultSecretId;

  @internal
  @override
  String get blockKey => 'storage_key_vault_secret_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'storage_key_vault_secret_id': storageKeyVaultSecretId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'storage_key_vault_secret_id': storageKeyVaultSecretId,
  };
}

/// Typed helper for the `connection_string` block of
/// `azurerm_logic_app_standard` (derived from provider schema).
@immutable
final class LogicAppStandardConnectionString {
  const LogicAppStandardConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  final TfArg<String> name;

  final LogicAppStandardType type;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const LogicAppStandardType._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppStandardType.variable(String name) : this._(TfArg.variable(name));
  LogicAppStandardType.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppStandardType.arg(TfArg<String> arg) : this._(arg);

  static const apihub = LogicAppStandardType._(TfArgLiteral('ApiHub'));
  static const custom = LogicAppStandardType._(TfArgLiteral('Custom'));
  static const docdb = LogicAppStandardType._(TfArgLiteral('DocDb'));
  static const eventhub = LogicAppStandardType._(TfArgLiteral('EventHub'));
  static const mysql = LogicAppStandardType._(TfArgLiteral('MySql'));
  static const notificationhub = LogicAppStandardType._(
    TfArgLiteral('NotificationHub'),
  );
  static const postgresql = LogicAppStandardType._(TfArgLiteral('PostgreSQL'));
  static const rediscache = LogicAppStandardType._(TfArgLiteral('RedisCache'));
  static const sqlazure = LogicAppStandardType._(TfArgLiteral('SQLAzure'));
  static const sqlserver = LogicAppStandardType._(TfArgLiteral('SQLServer'));
  static const servicebus = LogicAppStandardType._(TfArgLiteral('ServiceBus'));

  static const List<LogicAppStandardType> values = [
    apihub,
    custom,
    docdb,
    eventhub,
    mysql,
    notificationhub,
    postgresql,
    rediscache,
    sqlazure,
    sqlserver,
    servicebus,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_logic_app_standard` (derived from provider schema).
@immutable
final class LogicAppStandardIdentity {
  const LogicAppStandardIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `site_config` block of
/// `azurerm_logic_app_standard` (derived from provider schema).
@immutable
final class LogicAppStandardSiteConfig {
  const LogicAppStandardSiteConfig({
    this.alwaysOn,
    this.appScaleLimit,
    this.dotnetFrameworkVersion,
    this.elasticInstanceMinimum,
    this.ftpsState,
    this.healthCheckPath,
    this.http2Enabled,
    this.ipRestrictionDefaultAction,
    this.linuxFxVersion,
    this.minTlsVersion,
    this.preWarmedInstanceCount,
    this.runtimeScaleMonitoringEnabled,
    this.scmIpRestrictionDefaultAction,
    this.scmMinTlsVersion,
    this.scmType,
    this.scmUseMainIpRestriction,
    this.use32BitWorkerProcess,
    this.vnetRouteAllEnabled,
    this.websocketsEnabled,
    this.cors,
    this.ipRestriction,
    this.scmIpRestriction,
  });

  final TfArg<bool>? alwaysOn;

  final TfArg<num>? appScaleLimit;

  final LogicAppStandardDotnetFrameworkVersion? dotnetFrameworkVersion;

  final TfArg<num>? elasticInstanceMinimum;

  final LogicAppStandardFtpsState? ftpsState;

  final TfArg<String>? healthCheckPath;

  final TfArg<bool>? http2Enabled;

  final LogicAppStandardIpRestrictionDefaultAction? ipRestrictionDefaultAction;

  final TfArg<String>? linuxFxVersion;

  final LogicAppStandardMinTlsVersion? minTlsVersion;

  final TfArg<num>? preWarmedInstanceCount;

  final TfArg<bool>? runtimeScaleMonitoringEnabled;

  final LogicAppStandardScmIpRestrictionDefaultAction?
  scmIpRestrictionDefaultAction;

  final LogicAppStandardScmMinTlsVersion? scmMinTlsVersion;

  final LogicAppStandardScmType? scmType;

  final TfArg<bool>? scmUseMainIpRestriction;

  final TfArg<bool>? use32BitWorkerProcess;

  final TfArg<bool>? vnetRouteAllEnabled;

  final TfArg<bool>? websocketsEnabled;

  final LogicAppStandardCors? cors;

  final List<LogicAppStandardIpRestriction>? ipRestriction;

  final List<LogicAppStandardScmIpRestriction>? scmIpRestriction;

  @internal
  Map<String, Object?> encode() => {
    'always_on': ?alwaysOn?.toTfJson(),
    'app_scale_limit': ?appScaleLimit?.toTfJson(),
    'dotnet_framework_version': ?dotnetFrameworkVersion?.toTfJson(),
    'elastic_instance_minimum': ?elasticInstanceMinimum?.toTfJson(),
    'ftps_state': ?ftpsState?.toTfJson(),
    'health_check_path': ?healthCheckPath?.toTfJson(),
    'http2_enabled': ?http2Enabled?.toTfJson(),
    'ip_restriction_default_action': ?ipRestrictionDefaultAction?.toTfJson(),
    'linux_fx_version': ?linuxFxVersion?.toTfJson(),
    'min_tls_version': ?minTlsVersion?.toTfJson(),
    'pre_warmed_instance_count': ?preWarmedInstanceCount?.toTfJson(),
    'runtime_scale_monitoring_enabled': ?runtimeScaleMonitoringEnabled
        ?.toTfJson(),
    'scm_ip_restriction_default_action': ?scmIpRestrictionDefaultAction
        ?.toTfJson(),
    'scm_min_tls_version': ?scmMinTlsVersion?.toTfJson(),
    'scm_type': ?scmType?.toTfJson(),
    'scm_use_main_ip_restriction': ?scmUseMainIpRestriction?.toTfJson(),
    'use_32_bit_worker_process': ?use32BitWorkerProcess?.toTfJson(),
    'vnet_route_all_enabled': ?vnetRouteAllEnabled?.toTfJson(),
    'websockets_enabled': ?websocketsEnabled?.toTfJson(),
    'cors': ?cors?.encode(),
    if (ipRestriction != null)
      'ip_restriction': [for (final e in ipRestriction!) e.encode()],
    if (scmIpRestriction != null)
      'scm_ip_restriction': [for (final e in scmIpRestriction!) e.encode()],
  };
}

/// `dotnet_framework_version` — derived from the provider schema description.
extension type const LogicAppStandardDotnetFrameworkVersion._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppStandardDotnetFrameworkVersion.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppStandardDotnetFrameworkVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppStandardDotnetFrameworkVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v4p0 = LogicAppStandardDotnetFrameworkVersion._(
    TfArgLiteral('v4.0'),
  );
  static const v5p0 = LogicAppStandardDotnetFrameworkVersion._(
    TfArgLiteral('v5.0'),
  );
  static const v6p0 = LogicAppStandardDotnetFrameworkVersion._(
    TfArgLiteral('v6.0'),
  );
  static const v8p0 = LogicAppStandardDotnetFrameworkVersion._(
    TfArgLiteral('v8.0'),
  );
  static const v10p0 = LogicAppStandardDotnetFrameworkVersion._(
    TfArgLiteral('v10.0'),
  );

  static const List<LogicAppStandardDotnetFrameworkVersion> values = [
    v4p0,
    v5p0,
    v6p0,
    v8p0,
    v10p0,
  ];
}

/// `ftps_state` — derived from the provider schema description.
extension type const LogicAppStandardFtpsState._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppStandardFtpsState.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppStandardFtpsState.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppStandardFtpsState.arg(TfArg<String> arg) : this._(arg);

  static const allallowed = LogicAppStandardFtpsState._(
    TfArgLiteral('AllAllowed'),
  );
  static const disabled = LogicAppStandardFtpsState._(TfArgLiteral('Disabled'));
  static const ftpsonly = LogicAppStandardFtpsState._(TfArgLiteral('FtpsOnly'));

  static const List<LogicAppStandardFtpsState> values = [
    allallowed,
    disabled,
    ftpsonly,
  ];
}

/// `ip_restriction_default_action` — derived from the provider schema description.
extension type const LogicAppStandardIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  LogicAppStandardIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppStandardIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppStandardIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = LogicAppStandardIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = LogicAppStandardIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<LogicAppStandardIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `min_tls_version` — derived from the provider schema description.
extension type const LogicAppStandardMinTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppStandardMinTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppStandardMinTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppStandardMinTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p2 = LogicAppStandardMinTlsVersion._(TfArgLiteral('1.2'));
  static const v1p3 = LogicAppStandardMinTlsVersion._(TfArgLiteral('1.3'));

  static const List<LogicAppStandardMinTlsVersion> values = [v1p2, v1p3];
}

/// `scm_ip_restriction_default_action` — derived from the provider schema description.
extension type const LogicAppStandardScmIpRestrictionDefaultAction._(
  TfArg<String> _
) implements TfArg<String> {
  LogicAppStandardScmIpRestrictionDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppStandardScmIpRestrictionDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppStandardScmIpRestrictionDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = LogicAppStandardScmIpRestrictionDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = LogicAppStandardScmIpRestrictionDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<LogicAppStandardScmIpRestrictionDefaultAction> values = [
    allow,
    deny,
  ];
}

/// `scm_min_tls_version` — derived from the provider schema description.
extension type const LogicAppStandardScmMinTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppStandardScmMinTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppStandardScmMinTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppStandardScmMinTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p2 = LogicAppStandardScmMinTlsVersion._(TfArgLiteral('1.2'));
  static const v1p3 = LogicAppStandardScmMinTlsVersion._(TfArgLiteral('1.3'));

  static const List<LogicAppStandardScmMinTlsVersion> values = [v1p2, v1p3];
}

/// `scm_type` — derived from the provider schema description.
extension type const LogicAppStandardScmType._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppStandardScmType.variable(String name) : this._(TfArg.variable(name));
  LogicAppStandardScmType.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppStandardScmType.arg(TfArg<String> arg) : this._(arg);

  static const bitbucketgit = LogicAppStandardScmType._(
    TfArgLiteral('BitbucketGit'),
  );
  static const bitbuckethg = LogicAppStandardScmType._(
    TfArgLiteral('BitbucketHg'),
  );
  static const codeplexgit = LogicAppStandardScmType._(
    TfArgLiteral('CodePlexGit'),
  );
  static const codeplexhg = LogicAppStandardScmType._(
    TfArgLiteral('CodePlexHg'),
  );
  static const dropbox = LogicAppStandardScmType._(TfArgLiteral('Dropbox'));
  static const externalgit = LogicAppStandardScmType._(
    TfArgLiteral('ExternalGit'),
  );
  static const externalhg = LogicAppStandardScmType._(
    TfArgLiteral('ExternalHg'),
  );
  static const github = LogicAppStandardScmType._(TfArgLiteral('GitHub'));
  static const localgit = LogicAppStandardScmType._(TfArgLiteral('LocalGit'));
  static const none = LogicAppStandardScmType._(TfArgLiteral('None'));
  static const onedrive = LogicAppStandardScmType._(TfArgLiteral('OneDrive'));
  static const tfs = LogicAppStandardScmType._(TfArgLiteral('Tfs'));
  static const vso = LogicAppStandardScmType._(TfArgLiteral('VSO'));
  static const vstsrm = LogicAppStandardScmType._(TfArgLiteral('VSTSRM'));

  static const List<LogicAppStandardScmType> values = [
    bitbucketgit,
    bitbuckethg,
    codeplexgit,
    codeplexhg,
    dropbox,
    externalgit,
    externalhg,
    github,
    localgit,
    none,
    onedrive,
    tfs,
    vso,
    vstsrm,
  ];
}

/// Typed helper for the `site_config.cors` block of
/// `azurerm_logic_app_standard` (derived from provider schema).
@immutable
final class LogicAppStandardCors {
  const LogicAppStandardCors({this.allowedOrigins, this.supportCredentials});

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<bool>? supportCredentials;

  @internal
  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'support_credentials': ?supportCredentials?.toTfJson(),
  };
}

/// Typed helper for the `site_config.ip_restriction` block of
/// `azurerm_logic_app_standard` (derived from provider schema).
@immutable
final class LogicAppStandardIpRestriction {
  const LogicAppStandardIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final LogicAppStandardAction? action;

  final TfArg<String>? description;

  final TfArg<List<Object?>>? headers;

  final TfArg<String>? ipAddress;

  final TfArg<String>? name;

  final TfArg<num>? priority;

  final TfArg<String>? serviceTag;

  final TfArg<String>? virtualNetworkSubnetId;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'description': ?description?.toTfJson(),
    'headers': ?headers?.toTfJson(),
    'ip_address': ?ipAddress?.toTfJson(),
    'name': ?name?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'service_tag': ?serviceTag?.toTfJson(),
    'virtual_network_subnet_id': ?virtualNetworkSubnetId?.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const LogicAppStandardAction._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppStandardAction.variable(String name) : this._(TfArg.variable(name));
  LogicAppStandardAction.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppStandardAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = LogicAppStandardAction._(TfArgLiteral('Allow'));
  static const deny = LogicAppStandardAction._(TfArgLiteral('Deny'));

  static const List<LogicAppStandardAction> values = [allow, deny];
}

/// Typed helper for the `site_config.scm_ip_restriction` block of
/// `azurerm_logic_app_standard` (derived from provider schema).
@immutable
final class LogicAppStandardScmIpRestriction {
  const LogicAppStandardScmIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  final LogicAppStandardAction? action;

  final TfArg<String>? description;

  final TfArg<List<Object?>>? headers;

  final TfArg<String>? ipAddress;

  final TfArg<String>? name;

  final TfArg<num>? priority;

  final TfArg<String>? serviceTag;

  final TfArg<String>? virtualNetworkSubnetId;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'description': ?description?.toTfJson(),
    'headers': ?headers?.toTfJson(),
    'ip_address': ?ipAddress?.toTfJson(),
    'name': ?name?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'service_tag': ?serviceTag?.toTfJson(),
    'virtual_network_subnet_id': ?virtualNetworkSubnetId?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_logic_app_standard`.
final class AzurermLogicAppStandard extends Resource {
  static const String tfType = 'azurerm_logic_app_standard';

  AzurermLogicAppStandard(
    super.localName, {
    required TfArg<String> appServicePlanId,
    TfArg<Map<String, String>>? appSettings,
    TfArg<String>? bundleVersion,
    TfArg<bool>? clientAffinityEnabled,
    LogicAppStandardClientCertificateMode? clientCertificateMode,
    TfArg<bool>? enabled,
    TfArg<bool>? ftpPublishBasicAuthenticationEnabled,
    TfArg<bool>? httpsOnly,
    TfArg<String>? keyVaultReferenceIdentityId,
    required TfArg<String> location,
    required TfArg<String> name,
    LogicAppStandardPublicNetworkAccess? publicNetworkAccess,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? scmPublishBasicAuthenticationEnabled,
    Sensitive<String>? storageAccountAccessKey,
    required LogicAppStandardStorage storage,
    TfArg<String>? storageAccountShareName,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? useExtensionBundle,
    TfArg<String>? version,
    TfArg<String>? virtualNetworkSubnetId,
    TfArg<bool>? vnetContentShareEnabled,
    List<LogicAppStandardConnectionString>? connectionString,
    LogicAppStandardIdentity? identity,
    LogicAppStandardSiteConfig? siteConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_service_plan_id': appServicePlanId,
           'app_settings': ?appSettings,
           'bundle_version': ?bundleVersion,
           'client_affinity_enabled': ?clientAffinityEnabled,
           'client_certificate_mode': ?clientCertificateMode,
           'enabled': ?enabled,
           'ftp_publish_basic_authentication_enabled':
               ?ftpPublishBasicAuthenticationEnabled,
           'https_only': ?httpsOnly,
           'key_vault_reference_identity_id': ?keyVaultReferenceIdentityId,
           'location': location,
           'name': name,
           'public_network_access': ?publicNetworkAccess,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scm_publish_basic_authentication_enabled':
               ?scmPublishBasicAuthenticationEnabled,
           'storage_account_access_key': ?storageAccountAccessKey,
           ...storage.argMap,
           'storage_account_share_name': ?storageAccountShareName,
           'tags': ?tags,
           'use_extension_bundle': ?useExtensionBundle,
           'version': ?version,
           'virtual_network_subnet_id': ?virtualNetworkSubnetId,
           'vnet_content_share_enabled': ?vnetContentShareEnabled,
           if (connectionString != null)
             'connection_string': TfArg.literal([
               for (final e in connectionString) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (siteConfig != null)
             'site_config': TfArg.literal(siteConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLogicAppStandardSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppStandard>`.
  RefTo<AzurermLogicAppStandard> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_domain_verification_id` attribute.
  TfRef<String> get customDomainVerificationId =>
      TfRef.attribute<String>(this, 'custom_domain_verification_id');

  /// Reference to `default_hostname` attribute.
  TfRef<String> get defaultHostname =>
      TfRef.attribute<String>(this, 'default_hostname');

  /// Reference to `outbound_ip_addresses` attribute.
  TfRef<String> get outboundIpAddresses =>
      TfRef.attribute<String>(this, 'outbound_ip_addresses');

  /// Reference to `possible_outbound_ip_addresses` attribute.
  TfRef<String> get possibleOutboundIpAddresses =>
      TfRef.attribute<String>(this, 'possible_outbound_ip_addresses');

  /// Reference to `site_credential` attribute.
  TfRef<List<Map<String, Object?>>> get siteCredential =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'site_credential');

  /// Reference to `app_service_plan_id` attribute.
  TfRef<String> get appServicePlanId =>
      TfRef.attribute<String>(this, 'app_service_plan_id');

  /// Reference to `app_settings` attribute.
  TfRef<Map<String, String>> get appSettings =>
      TfRef.attribute<Map<String, String>>(this, 'app_settings');

  /// Reference to `bundle_version` attribute.
  TfRef<String> get bundleVersion =>
      TfRef.attribute<String>(this, 'bundle_version');

  /// Reference to `client_affinity_enabled` attribute.
  TfRef<bool> get clientAffinityEnabled =>
      TfRef.attribute<bool>(this, 'client_affinity_enabled');

  /// Reference to `client_certificate_mode` attribute.
  TfRef<String> get clientCertificateMode =>
      TfRef.attribute<String>(this, 'client_certificate_mode');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `ftp_publish_basic_authentication_enabled` attribute.
  TfRef<bool> get ftpPublishBasicAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'ftp_publish_basic_authentication_enabled');

  /// Reference to `https_only` attribute.
  TfRef<bool> get httpsOnly => TfRef.attribute<bool>(this, 'https_only');

  /// Reference to `key_vault_reference_identity_id` attribute.
  TfRef<String> get keyVaultReferenceIdentityId =>
      TfRef.attribute<String>(this, 'key_vault_reference_identity_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scm_publish_basic_authentication_enabled` attribute.
  TfRef<bool> get scmPublishBasicAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'scm_publish_basic_authentication_enabled');

  /// Reference to `storage_account_access_key` attribute.
  TfRef<String> get storageAccountAccessKey =>
      TfRef.attribute<String>(this, 'storage_account_access_key');

  /// Reference to `storage_account_name` attribute.
  TfRef<String> get storageAccountName =>
      TfRef.attribute<String>(this, 'storage_account_name');

  /// Reference to `storage_account_share_name` attribute.
  TfRef<String> get storageAccountShareName =>
      TfRef.attribute<String>(this, 'storage_account_share_name');

  /// Reference to `storage_key_vault_secret_id` attribute.
  TfRef<String> get storageKeyVaultSecretId =>
      TfRef.attribute<String>(this, 'storage_key_vault_secret_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `use_extension_bundle` attribute.
  TfRef<bool> get useExtensionBundle =>
      TfRef.attribute<bool>(this, 'use_extension_bundle');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `virtual_network_subnet_id` attribute.
  TfRef<String> get virtualNetworkSubnetId =>
      TfRef.attribute<String>(this, 'virtual_network_subnet_id');

  /// Reference to `vnet_content_share_enabled` attribute.
  TfRef<bool> get vnetContentShareEnabled =>
      TfRef.attribute<bool>(this, 'vnet_content_share_enabled');
}
