// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_key_vault_managed_hardware_security_module_role_definition`.
const Set<String>
_azurermKeyVaultManagedHardwareSecurityModuleRoleDefinitionSensitive =
    <String>{};

/// Typed helper for the `permission` block of
/// `azurerm_key_vault_managed_hardware_security_module_role_definition` (derived from provider schema).
@immutable
final class KeyVaultManagedHardwareSecurityModuleRoleDefinitionPermission {
  const KeyVaultManagedHardwareSecurityModuleRoleDefinitionPermission({
    this.actions,
    this.dataActions,
    this.notActions,
    this.notDataActions,
  });

  final TfArg<List<String>>? actions;

  final EnumList<
    KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions
  >?
  dataActions;

  final TfArg<List<String>>? notActions;

  final EnumList<
    KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions
  >?
  notDataActions;

  @internal
  Map<String, Object?> encode() => {
    'actions': ?actions?.toTfJson(),
    'data_actions': ?dataActions?.toTfJson(),
    'not_actions': ?notActions?.toTfJson(),
    'not_data_actions': ?notDataActions?.toTfJson(),
  };
}

/// `data_actions` — derived from the provider schema description.
extension type const KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
  TfArg<String> _
) implements TfArg<String> {
  KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions.variable(
    String name,
  ) : this._(TfArg.variable(name));
  KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const microsoftKeyvaultManagedhsmKeysBackupAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/backup/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysCreate =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/create'),
      );
  static const microsoftKeyvaultManagedhsmKeysDecryptAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/decrypt/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysDelete =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/delete'),
      );
  static const microsoftKeyvaultManagedhsmRoleassignmentsDeleteAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/roleAssignments/delete/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmRoledefinitionsDeleteAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/roleDefinitions/delete/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmSecuritydomainDownloadAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/securitydomain/download/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmSecuritydomainDownloadRead =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/securitydomain/download/read',
        ),
      );
  static const microsoftKeyvaultManagedhsmKeysEncryptAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/encrypt/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysExportAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/export/action'),
      );
  static const microsoftKeyvaultManagedhsmRoleassignmentsReadAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/roleAssignments/read/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmKeysImportAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/import/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysDeletedkeysDelete =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/deletedKeys/delete'),
      );
  static const microsoftKeyvaultManagedhsmRngAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/rng/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysDeletedkeysReadAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/keys/deletedKeys/read/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmBackupStatusAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/backup/status/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysReadAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/read/action'),
      );
  static const microsoftKeyvaultManagedhsmRestoreStatusAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/restore/status/action'),
      );
  static const microsoftKeyvaultManagedhsmSecuritydomainUploadRead =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/securitydomain/upload/read',
        ),
      );
  static const microsoftKeyvaultManagedhsmSecuritydomainTransferkeyRead =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/securitydomain/transferkey/read',
        ),
      );
  static const microsoftKeyvaultManagedhsmRoledefinitionsReadAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/roleDefinitions/read/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmKeysDeletedkeysRecoverAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/keys/deletedKeys/recover/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmKeysReleaseAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/release/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysRestoreAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/restore/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysSignAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/sign/action'),
      );
  static const microsoftKeyvaultManagedhsmBackupStartAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/backup/start/action'),
      );
  static const microsoftKeyvaultManagedhsmRestoreStartAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/restore/start/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysUnwrapAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/unwrap/action'),
      );
  static const microsoftKeyvaultManagedhsmSecuritydomainUploadAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/securitydomain/upload/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmKeysVerifyAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/verify/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysWrapAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/wrap/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysWriteAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/write/action'),
      );
  static const microsoftKeyvaultManagedhsmRoleassignmentsWriteAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/roleAssignments/write/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmRoledefinitionsWriteAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/roleDefinitions/write/action',
        ),
      );

  static const List<
    KeyVaultManagedHardwareSecurityModuleRoleDefinitionDataActions
  >
  values = [
    microsoftKeyvaultManagedhsmKeysBackupAction,
    microsoftKeyvaultManagedhsmKeysCreate,
    microsoftKeyvaultManagedhsmKeysDecryptAction,
    microsoftKeyvaultManagedhsmKeysDelete,
    microsoftKeyvaultManagedhsmRoleassignmentsDeleteAction,
    microsoftKeyvaultManagedhsmRoledefinitionsDeleteAction,
    microsoftKeyvaultManagedhsmSecuritydomainDownloadAction,
    microsoftKeyvaultManagedhsmSecuritydomainDownloadRead,
    microsoftKeyvaultManagedhsmKeysEncryptAction,
    microsoftKeyvaultManagedhsmKeysExportAction,
    microsoftKeyvaultManagedhsmRoleassignmentsReadAction,
    microsoftKeyvaultManagedhsmKeysImportAction,
    microsoftKeyvaultManagedhsmKeysDeletedkeysDelete,
    microsoftKeyvaultManagedhsmRngAction,
    microsoftKeyvaultManagedhsmKeysDeletedkeysReadAction,
    microsoftKeyvaultManagedhsmBackupStatusAction,
    microsoftKeyvaultManagedhsmKeysReadAction,
    microsoftKeyvaultManagedhsmRestoreStatusAction,
    microsoftKeyvaultManagedhsmSecuritydomainUploadRead,
    microsoftKeyvaultManagedhsmSecuritydomainTransferkeyRead,
    microsoftKeyvaultManagedhsmRoledefinitionsReadAction,
    microsoftKeyvaultManagedhsmKeysDeletedkeysRecoverAction,
    microsoftKeyvaultManagedhsmKeysReleaseAction,
    microsoftKeyvaultManagedhsmKeysRestoreAction,
    microsoftKeyvaultManagedhsmKeysSignAction,
    microsoftKeyvaultManagedhsmBackupStartAction,
    microsoftKeyvaultManagedhsmRestoreStartAction,
    microsoftKeyvaultManagedhsmKeysUnwrapAction,
    microsoftKeyvaultManagedhsmSecuritydomainUploadAction,
    microsoftKeyvaultManagedhsmKeysVerifyAction,
    microsoftKeyvaultManagedhsmKeysWrapAction,
    microsoftKeyvaultManagedhsmKeysWriteAction,
    microsoftKeyvaultManagedhsmRoleassignmentsWriteAction,
    microsoftKeyvaultManagedhsmRoledefinitionsWriteAction,
  ];
}

/// `not_data_actions` — derived from the provider schema description.
extension type const KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
  TfArg<String> _
) implements TfArg<String> {
  KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions.variable(
    String name,
  ) : this._(TfArg.variable(name));
  KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const microsoftKeyvaultManagedhsmKeysBackupAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/backup/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysCreate =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/create'),
      );
  static const microsoftKeyvaultManagedhsmKeysDecryptAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/decrypt/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysDelete =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/delete'),
      );
  static const microsoftKeyvaultManagedhsmRoleassignmentsDeleteAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/roleAssignments/delete/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmRoledefinitionsDeleteAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/roleDefinitions/delete/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmSecuritydomainDownloadAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/securitydomain/download/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmSecuritydomainDownloadRead =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/securitydomain/download/read',
        ),
      );
  static const microsoftKeyvaultManagedhsmKeysEncryptAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/encrypt/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysExportAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/export/action'),
      );
  static const microsoftKeyvaultManagedhsmRoleassignmentsReadAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/roleAssignments/read/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmKeysImportAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/import/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysDeletedkeysDelete =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/deletedKeys/delete'),
      );
  static const microsoftKeyvaultManagedhsmRngAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/rng/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysDeletedkeysReadAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/keys/deletedKeys/read/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmBackupStatusAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/backup/status/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysReadAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/read/action'),
      );
  static const microsoftKeyvaultManagedhsmRestoreStatusAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/restore/status/action'),
      );
  static const microsoftKeyvaultManagedhsmSecuritydomainUploadRead =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/securitydomain/upload/read',
        ),
      );
  static const microsoftKeyvaultManagedhsmSecuritydomainTransferkeyRead =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/securitydomain/transferkey/read',
        ),
      );
  static const microsoftKeyvaultManagedhsmRoledefinitionsReadAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/roleDefinitions/read/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmKeysDeletedkeysRecoverAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/keys/deletedKeys/recover/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmKeysReleaseAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/release/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysRestoreAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/restore/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysSignAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/sign/action'),
      );
  static const microsoftKeyvaultManagedhsmBackupStartAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/backup/start/action'),
      );
  static const microsoftKeyvaultManagedhsmRestoreStartAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/restore/start/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysUnwrapAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/unwrap/action'),
      );
  static const microsoftKeyvaultManagedhsmSecuritydomainUploadAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/securitydomain/upload/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmKeysVerifyAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/verify/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysWrapAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/wrap/action'),
      );
  static const microsoftKeyvaultManagedhsmKeysWriteAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral('Microsoft.KeyVault/managedHsm/keys/write/action'),
      );
  static const microsoftKeyvaultManagedhsmRoleassignmentsWriteAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/roleAssignments/write/action',
        ),
      );
  static const microsoftKeyvaultManagedhsmRoledefinitionsWriteAction =
      KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions._(
        TfArgLiteral(
          'Microsoft.KeyVault/managedHsm/roleDefinitions/write/action',
        ),
      );

  static const List<
    KeyVaultManagedHardwareSecurityModuleRoleDefinitionNotDataActions
  >
  values = [
    microsoftKeyvaultManagedhsmKeysBackupAction,
    microsoftKeyvaultManagedhsmKeysCreate,
    microsoftKeyvaultManagedhsmKeysDecryptAction,
    microsoftKeyvaultManagedhsmKeysDelete,
    microsoftKeyvaultManagedhsmRoleassignmentsDeleteAction,
    microsoftKeyvaultManagedhsmRoledefinitionsDeleteAction,
    microsoftKeyvaultManagedhsmSecuritydomainDownloadAction,
    microsoftKeyvaultManagedhsmSecuritydomainDownloadRead,
    microsoftKeyvaultManagedhsmKeysEncryptAction,
    microsoftKeyvaultManagedhsmKeysExportAction,
    microsoftKeyvaultManagedhsmRoleassignmentsReadAction,
    microsoftKeyvaultManagedhsmKeysImportAction,
    microsoftKeyvaultManagedhsmKeysDeletedkeysDelete,
    microsoftKeyvaultManagedhsmRngAction,
    microsoftKeyvaultManagedhsmKeysDeletedkeysReadAction,
    microsoftKeyvaultManagedhsmBackupStatusAction,
    microsoftKeyvaultManagedhsmKeysReadAction,
    microsoftKeyvaultManagedhsmRestoreStatusAction,
    microsoftKeyvaultManagedhsmSecuritydomainUploadRead,
    microsoftKeyvaultManagedhsmSecuritydomainTransferkeyRead,
    microsoftKeyvaultManagedhsmRoledefinitionsReadAction,
    microsoftKeyvaultManagedhsmKeysDeletedkeysRecoverAction,
    microsoftKeyvaultManagedhsmKeysReleaseAction,
    microsoftKeyvaultManagedhsmKeysRestoreAction,
    microsoftKeyvaultManagedhsmKeysSignAction,
    microsoftKeyvaultManagedhsmBackupStartAction,
    microsoftKeyvaultManagedhsmRestoreStartAction,
    microsoftKeyvaultManagedhsmKeysUnwrapAction,
    microsoftKeyvaultManagedhsmSecuritydomainUploadAction,
    microsoftKeyvaultManagedhsmKeysVerifyAction,
    microsoftKeyvaultManagedhsmKeysWrapAction,
    microsoftKeyvaultManagedhsmKeysWriteAction,
    microsoftKeyvaultManagedhsmRoleassignmentsWriteAction,
    microsoftKeyvaultManagedhsmRoledefinitionsWriteAction,
  ];
}

/// Factory wrapper for `azurerm_key_vault_managed_hardware_security_module_role_definition`.
final class AzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition
    extends Resource {
  static const String tfType =
      'azurerm_key_vault_managed_hardware_security_module_role_definition';

  AzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> managedHsmId,
    required TfArg<String> name,
    TfArg<String>? roleName,
    List<KeyVaultManagedHardwareSecurityModuleRoleDefinitionPermission>?
    permission,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'managed_hsm_id': managedHsmId,
           'name': name,
           'role_name': ?roleName,
           if (permission != null)
             'permission': TfArg.literal([
               for (final e in permission) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKeyVaultManagedHardwareSecurityModuleRoleDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition>`.
  RefTo<AzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_manager_id` attribute.
  TfRef<String> get resourceManagerId =>
      TfRef.attribute<String>(this, 'resource_manager_id');

  /// Reference to `role_type` attribute.
  TfRef<String> get roleType => TfRef.attribute<String>(this, 'role_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `managed_hsm_id` attribute.
  TfRef<String> get managedHsmId =>
      TfRef.attribute<String>(this, 'managed_hsm_id');

  /// Reference to `role_name` attribute.
  TfRef<String> get roleName => TfRef.attribute<String>(this, 'role_name');
}
