// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_access_policy`.
const Set<String> _azurermKeyVaultAccessPolicySensitive = <String>{};

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
    TfArg<List<String>>? certificatePermissions,
    TfArg<List<String>>? keyPermissions,
    required RefTo<AzurermKeyVault> keyVaultId,
    required TfArg<String> objectId,
    TfArg<List<String>>? secretPermissions,
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
           'certificate_permissions': ?certificatePermissions,
           'key_permissions': ?keyPermissions,
           'key_vault_id': keyVaultId.encodeAs('id'),
           'object_id': objectId,
           'secret_permissions': ?secretPermissions,
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
