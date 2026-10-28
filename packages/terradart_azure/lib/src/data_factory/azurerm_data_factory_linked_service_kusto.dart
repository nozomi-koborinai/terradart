// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_kusto`.
const Set<String> _azurermDataFactoryLinkedServiceKustoSensitive = <String>{
  'service_principal_key',
};

/// Exactly one of `service_principal_id`, `use_managed_identity` on `azurerm_data_factory_linked_service_kusto`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.servicePrincipalId(...)`.
sealed class DataFactoryLinkedServiceKustoAuthentication {
  const DataFactoryLinkedServiceKustoAuthentication();

  /// Sets `service_principal_id`.
  const factory DataFactoryLinkedServiceKustoAuthentication.servicePrincipalId(
    TfArg<String> servicePrincipalId,
  ) = DataFactoryLinkedServiceKustoAuthenticationServicePrincipalId;

  /// Sets `use_managed_identity`.
  const factory DataFactoryLinkedServiceKustoAuthentication.useManagedIdentity(
    TfArg<bool> useManagedIdentity,
  ) = DataFactoryLinkedServiceKustoAuthenticationUseManagedIdentity;

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

/// The [DataFactoryLinkedServiceKustoAuthentication.servicePrincipalId] choice: sets `service_principal_id`.
final class DataFactoryLinkedServiceKustoAuthenticationServicePrincipalId
    extends DataFactoryLinkedServiceKustoAuthentication {
  const DataFactoryLinkedServiceKustoAuthenticationServicePrincipalId(
    this.servicePrincipalId,
  );

  final TfArg<String> servicePrincipalId;

  @internal
  @override
  String get blockKey => 'service_principal_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'service_principal_id': servicePrincipalId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'service_principal_id': servicePrincipalId,
  };
}

/// The [DataFactoryLinkedServiceKustoAuthentication.useManagedIdentity] choice: sets `use_managed_identity`.
final class DataFactoryLinkedServiceKustoAuthenticationUseManagedIdentity
    extends DataFactoryLinkedServiceKustoAuthentication {
  const DataFactoryLinkedServiceKustoAuthenticationUseManagedIdentity(
    this.useManagedIdentity,
  );

  final TfArg<bool> useManagedIdentity;

  @internal
  @override
  String get blockKey => 'use_managed_identity';

  @internal
  @override
  Map<String, Object?> encode() => {
    'use_managed_identity': useManagedIdentity.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'use_managed_identity': useManagedIdentity,
  };
}

/// Factory wrapper for `azurerm_data_factory_linked_service_kusto`.
final class AzurermDataFactoryLinkedServiceKusto extends Resource {
  static const String tfType = 'azurerm_data_factory_linked_service_kusto';

  AzurermDataFactoryLinkedServiceKusto(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? integrationRuntimeName,
    required TfArg<String> kustoDatabaseName,
    required TfArg<String> kustoEndpoint,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    required DataFactoryLinkedServiceKustoAuthentication authentication,
    Sensitive<String>? servicePrincipalKey,
    TfArg<String>? tenant,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'integration_runtime_name': ?integrationRuntimeName,
           'kusto_database_name': kustoDatabaseName,
           'kusto_endpoint': kustoEndpoint,
           'name': name,
           'parameters': ?parameters,
           ...authentication.argMap,
           'service_principal_key': ?servicePrincipalKey,
           'tenant': ?tenant,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryLinkedServiceKustoSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryLinkedServiceKusto>`.
  RefTo<AzurermDataFactoryLinkedServiceKusto> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_properties` attribute.
  TfRef<Map<String, String>> get additionalProperties =>
      TfRef.attribute<Map<String, String>>(this, 'additional_properties');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `integration_runtime_name` attribute.
  TfRef<String> get integrationRuntimeName =>
      TfRef.attribute<String>(this, 'integration_runtime_name');

  /// Reference to `kusto_database_name` attribute.
  TfRef<String> get kustoDatabaseName =>
      TfRef.attribute<String>(this, 'kusto_database_name');

  /// Reference to `kusto_endpoint` attribute.
  TfRef<String> get kustoEndpoint =>
      TfRef.attribute<String>(this, 'kusto_endpoint');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `service_principal_id` attribute.
  TfRef<String> get servicePrincipalId =>
      TfRef.attribute<String>(this, 'service_principal_id');

  /// Reference to `service_principal_key` attribute.
  TfRef<String> get servicePrincipalKey =>
      TfRef.attribute<String>(this, 'service_principal_key');

  /// Reference to `tenant` attribute.
  TfRef<String> get tenant => TfRef.attribute<String>(this, 'tenant');

  /// Reference to `use_managed_identity` attribute.
  TfRef<bool> get useManagedIdentity =>
      TfRef.attribute<bool>(this, 'use_managed_identity');
}
