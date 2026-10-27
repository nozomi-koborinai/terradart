// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_machine_learning_datastore_blobstorage`.
const Set<String> _azurermMachineLearningDatastoreBlobstorageSensitive =
    <String>{'account_key', 'shared_access_signature'};

/// Machine Learning Datastore Blobstorage Service Data Auth enum for `service_data_auth_identity`.
extension type const MachineLearningDatastoreBlobstorageServiceDataAuthIdentity._(
  TfArg<String> _
) implements TfArg<String> {
  MachineLearningDatastoreBlobstorageServiceDataAuthIdentity.variable(
    String name,
  ) : this._(TfArg.variable(name));
  MachineLearningDatastoreBlobstorageServiceDataAuthIdentity.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MachineLearningDatastoreBlobstorageServiceDataAuthIdentity.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const none =
      MachineLearningDatastoreBlobstorageServiceDataAuthIdentity._(
        TfArgLiteral('None'),
      );
  static const workspacesystemassignedidentity =
      MachineLearningDatastoreBlobstorageServiceDataAuthIdentity._(
        TfArgLiteral('WorkspaceSystemAssignedIdentity'),
      );
  static const workspaceuserassignedidentity =
      MachineLearningDatastoreBlobstorageServiceDataAuthIdentity._(
        TfArgLiteral('WorkspaceUserAssignedIdentity'),
      );

  static const List<MachineLearningDatastoreBlobstorageServiceDataAuthIdentity>
  values = [
    none,
    workspacesystemassignedidentity,
    workspaceuserassignedidentity,
  ];
}

/// Factory wrapper for `azurerm_machine_learning_datastore_blobstorage`.
final class AzurermMachineLearningDatastoreBlobstorage extends Resource {
  static const String tfType = 'azurerm_machine_learning_datastore_blobstorage';

  AzurermMachineLearningDatastoreBlobstorage(
    super.localName, {
    Sensitive<String>? accountKey,
    TfArg<String>? description,
    TfArg<bool>? isDefault,
    required TfArg<String> name,
    MachineLearningDatastoreBlobstorageServiceDataAuthIdentity?
    serviceDataAuthIdentity,
    Sensitive<String>? sharedAccessSignature,
    required TfArg<String> storageContainerId,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_key': ?accountKey,
           'description': ?description,
           'is_default': ?isDefault,
           'name': name,
           'service_data_auth_identity': ?serviceDataAuthIdentity,
           'shared_access_signature': ?sharedAccessSignature,
           'storage_container_id': storageContainerId,
           'tags': ?tags,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMachineLearningDatastoreBlobstorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMachineLearningDatastoreBlobstorage>`.
  RefTo<AzurermMachineLearningDatastoreBlobstorage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_key` attribute.
  TfRef<String> get accountKey => TfRef.attribute<String>(this, 'account_key');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `service_data_auth_identity` attribute.
  TfRef<String> get serviceDataAuthIdentity =>
      TfRef.attribute<String>(this, 'service_data_auth_identity');

  /// Reference to `shared_access_signature` attribute.
  TfRef<String> get sharedAccessSignature =>
      TfRef.attribute<String>(this, 'shared_access_signature');

  /// Reference to `storage_container_id` attribute.
  TfRef<String> get storageContainerId =>
      TfRef.attribute<String>(this, 'storage_container_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
