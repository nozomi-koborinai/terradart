// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_machine_learning_datastore_fileshare`.
const Set<String> _azurermMachineLearningDatastoreFileshareSensitive = <String>{
  'account_key',
  'shared_access_signature',
};

/// Machine Learning Datastore Fileshare Service Data enum for `service_data_identity`.
extension type const MachineLearningDatastoreFileshareServiceDataIdentity._(
  TfArg<String> _
) implements TfArg<String> {
  MachineLearningDatastoreFileshareServiceDataIdentity.variable(String name)
    : this._(TfArg.variable(name));
  MachineLearningDatastoreFileshareServiceDataIdentity.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MachineLearningDatastoreFileshareServiceDataIdentity.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const none = MachineLearningDatastoreFileshareServiceDataIdentity._(
    TfArgLiteral('None'),
  );
  static const workspacesystemassignedidentity =
      MachineLearningDatastoreFileshareServiceDataIdentity._(
        TfArgLiteral('WorkspaceSystemAssignedIdentity'),
      );
  static const workspaceuserassignedidentity =
      MachineLearningDatastoreFileshareServiceDataIdentity._(
        TfArgLiteral('WorkspaceUserAssignedIdentity'),
      );

  static const List<MachineLearningDatastoreFileshareServiceDataIdentity>
  values = [
    none,
    workspacesystemassignedidentity,
    workspaceuserassignedidentity,
  ];
}

/// Exactly one of `account_key`, `shared_access_signature` on `azurerm_machine_learning_datastore_fileshare`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.accountKey(...)`.
sealed class MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignature {
  const MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignature();

  /// Sets `account_key`.
  const factory MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignature.accountKey(
    Sensitive<String> accountKey,
  ) = MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignatureAccountKey;

  /// Sets `shared_access_signature`.
  const factory MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignature.sharedAccessSignature(
    Sensitive<String> sharedAccessSignature,
  ) = MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignatureChoice;

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

/// The [MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignature.accountKey] choice: sets `account_key`.
final class MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignatureAccountKey
    extends MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignature {
  const MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignatureAccountKey(
    this.accountKey,
  );

  final Sensitive<String> accountKey;

  @internal
  @override
  String get blockKey => 'account_key';

  @internal
  @override
  Map<String, Object?> encode() => {'account_key': accountKey.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'account_key': accountKey};
}

/// The [MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignature.sharedAccessSignature] choice: sets `shared_access_signature`.
final class MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignatureChoice
    extends MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignature {
  const MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignatureChoice(
    this.sharedAccessSignature,
  );

  final Sensitive<String> sharedAccessSignature;

  @internal
  @override
  String get blockKey => 'shared_access_signature';

  @internal
  @override
  Map<String, Object?> encode() => {
    'shared_access_signature': sharedAccessSignature.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'shared_access_signature': sharedAccessSignature,
  };
}

/// Factory wrapper for `azurerm_machine_learning_datastore_fileshare`.
final class AzurermMachineLearningDatastoreFileshare extends Resource {
  static const String tfType = 'azurerm_machine_learning_datastore_fileshare';

  AzurermMachineLearningDatastoreFileshare(
    super.localName, {
    required MachineLearningDatastoreFileshareAccountKeyOrSharedAccessSignature
    accountKeyOrSharedAccessSignature,
    TfArg<String>? description,
    required TfArg<String> name,
    MachineLearningDatastoreFileshareServiceDataIdentity? serviceDataIdentity,
    required TfArg<String> storageFileshareId,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...accountKeyOrSharedAccessSignature.argMap,
           'description': ?description,
           'name': name,
           'service_data_identity': ?serviceDataIdentity,
           'storage_fileshare_id': storageFileshareId,
           'tags': ?tags,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMachineLearningDatastoreFileshareSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMachineLearningDatastoreFileshare>`.
  RefTo<AzurermMachineLearningDatastoreFileshare> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `account_key` attribute.
  TfRef<String> get accountKey => TfRef.attribute<String>(this, 'account_key');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `service_data_identity` attribute.
  TfRef<String> get serviceDataIdentity =>
      TfRef.attribute<String>(this, 'service_data_identity');

  /// Reference to `shared_access_signature` attribute.
  TfRef<String> get sharedAccessSignature =>
      TfRef.attribute<String>(this, 'shared_access_signature');

  /// Reference to `storage_fileshare_id` attribute.
  TfRef<String> get storageFileshareId =>
      TfRef.attribute<String>(this, 'storage_fileshare_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
