// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_machine_learning_datastore_datalake_gen2`.
const Set<String> _azurermMachineLearningDatastoreDatalakeGen2Sensitive =
    <String>{'client_secret'};

/// Machine Learning Datastore Datalake Gen2 Service Data enum for `service_data_identity`.
extension type const MachineLearningDatastoreDatalakeGen2ServiceDataIdentity._(
  TfArg<String> _
) implements TfArg<String> {
  MachineLearningDatastoreDatalakeGen2ServiceDataIdentity.variable(String name)
    : this._(TfArg.variable(name));
  MachineLearningDatastoreDatalakeGen2ServiceDataIdentity.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MachineLearningDatastoreDatalakeGen2ServiceDataIdentity.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const none = MachineLearningDatastoreDatalakeGen2ServiceDataIdentity._(
    TfArgLiteral('None'),
  );
  static const workspacesystemassignedidentity =
      MachineLearningDatastoreDatalakeGen2ServiceDataIdentity._(
        TfArgLiteral('WorkspaceSystemAssignedIdentity'),
      );
  static const workspaceuserassignedidentity =
      MachineLearningDatastoreDatalakeGen2ServiceDataIdentity._(
        TfArgLiteral('WorkspaceUserAssignedIdentity'),
      );

  static const List<MachineLearningDatastoreDatalakeGen2ServiceDataIdentity>
  values = [
    none,
    workspacesystemassignedidentity,
    workspaceuserassignedidentity,
  ];
}

/// Factory wrapper for `azurerm_machine_learning_datastore_datalake_gen2`.
final class AzurermMachineLearningDatastoreDatalakeGen2 extends Resource {
  static const String tfType =
      'azurerm_machine_learning_datastore_datalake_gen2';

  AzurermMachineLearningDatastoreDatalakeGen2(
    super.localName, {
    TfArg<String>? authorityUrl,
    TfArg<String>? clientId,
    Sensitive<String>? clientSecret,
    TfArg<String>? description,
    required TfArg<String> name,
    MachineLearningDatastoreDatalakeGen2ServiceDataIdentity?
    serviceDataIdentity,
    required TfArg<String> storageContainerId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tenantId,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authority_url': ?authorityUrl,
           'client_id': ?clientId,
           'client_secret': ?clientSecret,
           'description': ?description,
           'name': name,
           'service_data_identity': ?serviceDataIdentity,
           'storage_container_id': storageContainerId,
           'tags': ?tags,
           'tenant_id': ?tenantId,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMachineLearningDatastoreDatalakeGen2Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMachineLearningDatastoreDatalakeGen2>`.
  RefTo<AzurermMachineLearningDatastoreDatalakeGen2> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `authority_url` attribute.
  TfRef<String> get authorityUrl =>
      TfRef.attribute<String>(this, 'authority_url');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `service_data_identity` attribute.
  TfRef<String> get serviceDataIdentity =>
      TfRef.attribute<String>(this, 'service_data_identity');

  /// Reference to `storage_container_id` attribute.
  TfRef<String> get storageContainerId =>
      TfRef.attribute<String>(this, 'storage_container_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
