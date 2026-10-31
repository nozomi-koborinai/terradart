// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mssql_server`.
const Set<String> _azurermMssqlServerSensitive = <String>{
  'administrator_login_password',
  'administrator_login_password_wo',
};

/// Mssql Server Connection enum for `connection_policy`.
extension type const MssqlServerConnectionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  MssqlServerConnectionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  MssqlServerConnectionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlServerConnectionPolicy.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = MssqlServerConnectionPolicy._(
    TfArgLiteral('Default'),
  );
  static const proxy = MssqlServerConnectionPolicy._(TfArgLiteral('Proxy'));
  static const redirect = MssqlServerConnectionPolicy._(
    TfArgLiteral('Redirect'),
  );

  static const List<MssqlServerConnectionPolicy> values = [
    defaultCase,
    proxy,
    redirect,
  ];
}

/// Mssql Server Minimum Tls enum for `minimum_tls_version`.
extension type const MssqlServerMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  MssqlServerMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  MssqlServerMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlServerMinimumTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p2 = MssqlServerMinimumTlsVersion._(TfArgLiteral('1.2'));

  static const List<MssqlServerMinimumTlsVersion> values = [v1p2];
}

/// Mssql Server enum for `version`.
extension type const MssqlServerVersion._(TfArg<String> _)
    implements TfArg<String> {
  MssqlServerVersion.variable(String name) : this._(TfArg.variable(name));
  MssqlServerVersion.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlServerVersion.arg(TfArg<String> arg) : this._(arg);

  static const v2p0 = MssqlServerVersion._(TfArgLiteral('2.0'));
  static const v12p0 = MssqlServerVersion._(TfArgLiteral('12.0'));

  static const List<MssqlServerVersion> values = [v2p0, v12p0];
}

/// At most one of `administrator_login_password`, `administrator_login_password_wo` on `azurerm_mssql_server`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.administratorLoginPassword(...)`.
sealed class MssqlServerAdministratorLoginPassword {
  const MssqlServerAdministratorLoginPassword();

  /// Sets `administrator_login_password`.
  const factory MssqlServerAdministratorLoginPassword.administratorLoginPassword(
    Sensitive<String> administratorLoginPassword,
  ) = MssqlServerAdministratorLoginPasswordChoice;

  /// Sets `administrator_login_password_wo`.
  const factory MssqlServerAdministratorLoginPassword.administratorLoginPasswordWo(
    Sensitive<String> administratorLoginPasswordWo,
  ) = MssqlServerAdministratorLoginPasswordWo;

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

/// The [MssqlServerAdministratorLoginPassword.administratorLoginPassword] choice: sets `administrator_login_password`.
final class MssqlServerAdministratorLoginPasswordChoice
    extends MssqlServerAdministratorLoginPassword {
  const MssqlServerAdministratorLoginPasswordChoice(
    this.administratorLoginPassword,
  );

  final Sensitive<String> administratorLoginPassword;

  @internal
  @override
  String get blockKey => 'administrator_login_password';

  @internal
  @override
  Map<String, Object?> encode() => {
    'administrator_login_password': administratorLoginPassword.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'administrator_login_password': administratorLoginPassword,
  };
}

/// The [MssqlServerAdministratorLoginPassword.administratorLoginPasswordWo] choice: sets `administrator_login_password_wo`.
final class MssqlServerAdministratorLoginPasswordWo
    extends MssqlServerAdministratorLoginPassword {
  const MssqlServerAdministratorLoginPasswordWo(
    this.administratorLoginPasswordWo,
  );

  final Sensitive<String> administratorLoginPasswordWo;

  @internal
  @override
  String get blockKey => 'administrator_login_password_wo';

  @internal
  @override
  Map<String, Object?> encode() => {
    'administrator_login_password_wo': administratorLoginPasswordWo.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'administrator_login_password_wo': administratorLoginPasswordWo,
  };
}

/// Typed helper for the `azuread_administrator` block of
/// `azurerm_mssql_server` (derived from provider schema).
@immutable
final class MssqlServerAzureadAdministrator {
  const MssqlServerAzureadAdministrator({
    this.azureadAuthenticationOnly,
    required this.loginUsername,
    required this.objectId,
    this.tenantId,
  });

  final TfArg<bool>? azureadAuthenticationOnly;

  final TfArg<String> loginUsername;

  final TfArg<String> objectId;

  final TfArg<String>? tenantId;

  @internal
  Map<String, Object?> encode() => {
    'azuread_authentication_only': ?azureadAuthenticationOnly?.toTfJson(),
    'login_username': loginUsername.toTfJson(),
    'object_id': objectId.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_mssql_server` (derived from provider schema).
@immutable
final class MssqlServerIdentity {
  const MssqlServerIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_mssql_server`.
final class AzurermMssqlServer extends Resource {
  static const String tfType = 'azurerm_mssql_server';

  AzurermMssqlServer(
    super.localName, {
    TfArg<String>? administratorLogin,
    MssqlServerAdministratorLoginPassword? administratorLoginPassword,
    TfArg<num>? administratorLoginPasswordWoVersion,
    MssqlServerConnectionPolicy? connectionPolicy,
    TfArg<bool>? expressVulnerabilityAssessmentEnabled,
    required TfArg<String> location,
    MssqlServerMinimumTlsVersion? minimumTlsVersion,
    required TfArg<String> name,
    TfArg<bool>? outboundNetworkRestrictionEnabled,
    TfArg<String>? primaryUserAssignedIdentityId,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? transparentDataEncryptionKeyVaultKeyId,
    required MssqlServerVersion version,
    MssqlServerAzureadAdministrator? azureadAdministrator,
    MssqlServerIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'administrator_login': ?administratorLogin,
           ...?administratorLoginPassword?.argMap,
           'administrator_login_password_wo_version':
               ?administratorLoginPasswordWoVersion,
           'connection_policy': ?connectionPolicy,
           'express_vulnerability_assessment_enabled':
               ?expressVulnerabilityAssessmentEnabled,
           'location': location,
           'minimum_tls_version': ?minimumTlsVersion,
           'name': name,
           'outbound_network_restriction_enabled':
               ?outboundNetworkRestrictionEnabled,
           'primary_user_assigned_identity_id': ?primaryUserAssignedIdentityId,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'transparent_data_encryption_key_vault_key_id':
               ?transparentDataEncryptionKeyVaultKeyId,
           'version': version,
           if (azureadAdministrator != null)
             'azuread_administrator': TfArg.literal(
               azureadAdministrator.encode(),
             ),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlServer>`.
  RefTo<AzurermMssqlServer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fully_qualified_domain_name` attribute.
  TfRef<String> get fullyQualifiedDomainName =>
      TfRef.attribute<String>(this, 'fully_qualified_domain_name');

  /// Reference to `restorable_dropped_database_ids` attribute.
  TfRef<List<String>> get restorableDroppedDatabaseIds =>
      TfRef.attribute<List<String>>(this, 'restorable_dropped_database_ids');

  /// Reference to `administrator_login` attribute.
  TfRef<String> get administratorLogin =>
      TfRef.attribute<String>(this, 'administrator_login');

  /// Reference to `administrator_login_password` attribute.
  TfRef<String> get administratorLoginPassword =>
      TfRef.attribute<String>(this, 'administrator_login_password');

  /// Reference to `administrator_login_password_wo_version` attribute.
  TfRef<num> get administratorLoginPasswordWoVersion =>
      TfRef.attribute<num>(this, 'administrator_login_password_wo_version');

  /// Reference to `connection_policy` attribute.
  TfRef<String> get connectionPolicy =>
      TfRef.attribute<String>(this, 'connection_policy');

  /// Reference to `express_vulnerability_assessment_enabled` attribute.
  TfRef<bool> get expressVulnerabilityAssessmentEnabled =>
      TfRef.attribute<bool>(this, 'express_vulnerability_assessment_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `minimum_tls_version` attribute.
  TfRef<String> get minimumTlsVersion =>
      TfRef.attribute<String>(this, 'minimum_tls_version');

  /// Reference to `outbound_network_restriction_enabled` attribute.
  TfRef<bool> get outboundNetworkRestrictionEnabled =>
      TfRef.attribute<bool>(this, 'outbound_network_restriction_enabled');

  /// Reference to `primary_user_assigned_identity_id` attribute.
  TfRef<String> get primaryUserAssignedIdentityId =>
      TfRef.attribute<String>(this, 'primary_user_assigned_identity_id');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transparent_data_encryption_key_vault_key_id` attribute.
  TfRef<String> get transparentDataEncryptionKeyVaultKeyId =>
      TfRef.attribute<String>(
        this,
        'transparent_data_encryption_key_vault_key_id',
      );

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
