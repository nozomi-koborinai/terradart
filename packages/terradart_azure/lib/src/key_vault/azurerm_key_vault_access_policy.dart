// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_access_policy`.
const Set<String> _azurermKeyVaultAccessPolicySensitive = <String>{};

/// Key Vault Access Policy Certificate enum for `certificate_permissions`.
extension type const KeyVaultAccessPolicyCertificatePermissions._(
  TfArg<String> _
) implements TfArg<String> {
  KeyVaultAccessPolicyCertificatePermissions.variable(String name)
    : this._(TfArg.variable(name));
  KeyVaultAccessPolicyCertificatePermissions.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultAccessPolicyCertificatePermissions.arg(TfArg<String> arg)
    : this._(arg);

  static const get = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('Get'),
  );
  static const list = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('List'),
  );
  static const update = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('Update'),
  );
  static const create = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('Create'),
  );
  static const import = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('Import'),
  );
  static const delete = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('Delete'),
  );
  static const recover = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('Recover'),
  );
  static const backup = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('Backup'),
  );
  static const restore = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('Restore'),
  );
  static const managecontacts = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('ManageContacts'),
  );
  static const manageissuers = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('ManageIssuers'),
  );
  static const getissuers = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('GetIssuers'),
  );
  static const listissuers = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('ListIssuers'),
  );
  static const setissuers = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('SetIssuers'),
  );
  static const deleteissuers = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('DeleteIssuers'),
  );
  static const purge = KeyVaultAccessPolicyCertificatePermissions._(
    TfArgLiteral('Purge'),
  );

  static const List<KeyVaultAccessPolicyCertificatePermissions> values = [
    get,
    list,
    update,
    create,
    import,
    delete,
    recover,
    backup,
    restore,
    managecontacts,
    manageissuers,
    getissuers,
    listissuers,
    setissuers,
    deleteissuers,
    purge,
  ];
}

/// Key Vault Access Policy Key enum for `key_permissions`.
extension type const KeyVaultAccessPolicyKeyPermissions._(TfArg<String> _)
    implements TfArg<String> {
  KeyVaultAccessPolicyKeyPermissions.variable(String name)
    : this._(TfArg.variable(name));
  KeyVaultAccessPolicyKeyPermissions.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultAccessPolicyKeyPermissions.arg(TfArg<String> arg) : this._(arg);

  static const get = KeyVaultAccessPolicyKeyPermissions._(TfArgLiteral('Get'));
  static const list = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('List'),
  );
  static const update = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Update'),
  );
  static const create = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Create'),
  );
  static const import = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Import'),
  );
  static const delete = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Delete'),
  );
  static const recover = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Recover'),
  );
  static const backup = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Backup'),
  );
  static const restore = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Restore'),
  );
  static const decrypt = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Decrypt'),
  );
  static const encrypt = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Encrypt'),
  );
  static const unwrapkey = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('UnwrapKey'),
  );
  static const wrapkey = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('WrapKey'),
  );
  static const verify = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Verify'),
  );
  static const sign = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Sign'),
  );
  static const purge = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Purge'),
  );
  static const release = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Release'),
  );
  static const rotate = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('Rotate'),
  );
  static const getrotationpolicy = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('GetRotationPolicy'),
  );
  static const setrotationpolicy = KeyVaultAccessPolicyKeyPermissions._(
    TfArgLiteral('SetRotationPolicy'),
  );

  static const List<KeyVaultAccessPolicyKeyPermissions> values = [
    get,
    list,
    update,
    create,
    import,
    delete,
    recover,
    backup,
    restore,
    decrypt,
    encrypt,
    unwrapkey,
    wrapkey,
    verify,
    sign,
    purge,
    release,
    rotate,
    getrotationpolicy,
    setrotationpolicy,
  ];
}

/// Key Vault Access Policy Secret enum for `secret_permissions`.
extension type const KeyVaultAccessPolicySecretPermissions._(TfArg<String> _)
    implements TfArg<String> {
  KeyVaultAccessPolicySecretPermissions.variable(String name)
    : this._(TfArg.variable(name));
  KeyVaultAccessPolicySecretPermissions.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultAccessPolicySecretPermissions.arg(TfArg<String> arg)
    : this._(arg);

  static const get = KeyVaultAccessPolicySecretPermissions._(
    TfArgLiteral('Get'),
  );
  static const list = KeyVaultAccessPolicySecretPermissions._(
    TfArgLiteral('List'),
  );
  static const set = KeyVaultAccessPolicySecretPermissions._(
    TfArgLiteral('Set'),
  );
  static const delete = KeyVaultAccessPolicySecretPermissions._(
    TfArgLiteral('Delete'),
  );
  static const recover = KeyVaultAccessPolicySecretPermissions._(
    TfArgLiteral('Recover'),
  );
  static const backup = KeyVaultAccessPolicySecretPermissions._(
    TfArgLiteral('Backup'),
  );
  static const restore = KeyVaultAccessPolicySecretPermissions._(
    TfArgLiteral('Restore'),
  );
  static const purge = KeyVaultAccessPolicySecretPermissions._(
    TfArgLiteral('Purge'),
  );

  static const List<KeyVaultAccessPolicySecretPermissions> values = [
    get,
    list,
    set,
    delete,
    recover,
    backup,
    restore,
    purge,
  ];
}

/// Key Vault Access Policy Storage enum for `storage_permissions`.
extension type const KeyVaultAccessPolicyStoragePermissions._(TfArg<String> _)
    implements TfArg<String> {
  KeyVaultAccessPolicyStoragePermissions.variable(String name)
    : this._(TfArg.variable(name));
  KeyVaultAccessPolicyStoragePermissions.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultAccessPolicyStoragePermissions.arg(TfArg<String> arg)
    : this._(arg);

  static const backup = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('Backup'),
  );
  static const delete = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('Delete'),
  );
  static const deletesas = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('DeleteSAS'),
  );
  static const get = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('Get'),
  );
  static const getsas = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('GetSAS'),
  );
  static const list = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('List'),
  );
  static const listsas = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('ListSAS'),
  );
  static const purge = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('Purge'),
  );
  static const recover = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('Recover'),
  );
  static const regeneratekey = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('RegenerateKey'),
  );
  static const restore = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('Restore'),
  );
  static const set = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('Set'),
  );
  static const setsas = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('SetSAS'),
  );
  static const update = KeyVaultAccessPolicyStoragePermissions._(
    TfArgLiteral('Update'),
  );

  static const List<KeyVaultAccessPolicyStoragePermissions> values = [
    backup,
    delete,
    deletesas,
    get,
    getsas,
    list,
    listsas,
    purge,
    recover,
    regeneratekey,
    restore,
    set,
    setsas,
    update,
  ];
}

/// Factory wrapper for `azurerm_key_vault_access_policy`.
final class AzurermKeyVaultAccessPolicy extends Resource {
  static const String tfType = 'azurerm_key_vault_access_policy';

  AzurermKeyVaultAccessPolicy(
    super.localName, {
    TfArg<String>? applicationId,
    List<KeyVaultAccessPolicyCertificatePermissions>? certificatePermissions,
    List<KeyVaultAccessPolicyKeyPermissions>? keyPermissions,
    required RefTo<AzurermKeyVault> keyVaultId,
    required TfArg<String> objectId,
    List<KeyVaultAccessPolicySecretPermissions>? secretPermissions,
    List<KeyVaultAccessPolicyStoragePermissions>? storagePermissions,
    required TfArg<String> tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': ?applicationId,
           if (certificatePermissions != null)
             'certificate_permissions': TfArg.literal([
               for (final e in certificatePermissions) e.toTfJson(),
             ]),
           if (keyPermissions != null)
             'key_permissions': TfArg.literal([
               for (final e in keyPermissions) e.toTfJson(),
             ]),
           'key_vault_id': keyVaultId.encodeAs('id'),
           'object_id': objectId,
           if (secretPermissions != null)
             'secret_permissions': TfArg.literal([
               for (final e in secretPermissions) e.toTfJson(),
             ]),
           if (storagePermissions != null)
             'storage_permissions': TfArg.literal([
               for (final e in storagePermissions) e.toTfJson(),
             ]),
           'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultAccessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultAccessPolicy>`.
  RefTo<AzurermKeyVaultAccessPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `certificate_permissions` attribute.
  TfRef<List<String>> get certificatePermissions =>
      TfRef.attribute<List<String>>(this, 'certificate_permissions');

  /// Reference to `key_permissions` attribute.
  TfRef<List<String>> get keyPermissions =>
      TfRef.attribute<List<String>>(this, 'key_permissions');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `object_id` attribute.
  TfRef<String> get objectId => TfRef.attribute<String>(this, 'object_id');

  /// Reference to `secret_permissions` attribute.
  TfRef<List<String>> get secretPermissions =>
      TfRef.attribute<List<String>>(this, 'secret_permissions');

  /// Reference to `storage_permissions` attribute.
  TfRef<List<String>> get storagePermissions =>
      TfRef.attribute<List<String>>(this, 'storage_permissions');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
