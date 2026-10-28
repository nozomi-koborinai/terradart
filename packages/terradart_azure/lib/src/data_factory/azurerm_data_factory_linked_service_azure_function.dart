// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_azure_function`.
const Set<String> _azurermDataFactoryLinkedServiceAzureFunctionSensitive =
    <String>{'key'};

/// Exactly one of `key`, `key_vault_key` on `azurerm_data_factory_linked_service_azure_function`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.key(...)`.
sealed class DataFactoryLinkedServiceAzureFunctionKey {
  const DataFactoryLinkedServiceAzureFunctionKey();

  /// Sets `key`.
  const factory DataFactoryLinkedServiceAzureFunctionKey.key(
    Sensitive<String> key,
  ) = DataFactoryLinkedServiceAzureFunctionKeyChoice;

  /// Sets `key_vault_key`.
  const factory DataFactoryLinkedServiceAzureFunctionKey.keyVaultKey(
    DataFactoryLinkedServiceAzureFunctionKeyVaultKey keyVaultKey,
  ) = DataFactoryLinkedServiceAzureFunctionKeyVaultKeyChoice;

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

/// The [DataFactoryLinkedServiceAzureFunctionKey.key] choice: sets `key`.
final class DataFactoryLinkedServiceAzureFunctionKeyChoice
    extends DataFactoryLinkedServiceAzureFunctionKey {
  const DataFactoryLinkedServiceAzureFunctionKeyChoice(this.key);

  final Sensitive<String> key;

  @internal
  @override
  String get blockKey => 'key';

  @internal
  @override
  Map<String, Object?> encode() => {'key': key.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'key': key};
}

/// The [DataFactoryLinkedServiceAzureFunctionKey.keyVaultKey] choice: sets `key_vault_key`.
final class DataFactoryLinkedServiceAzureFunctionKeyVaultKeyChoice
    extends DataFactoryLinkedServiceAzureFunctionKey {
  const DataFactoryLinkedServiceAzureFunctionKeyVaultKeyChoice(
    this.keyVaultKey,
  );

  final DataFactoryLinkedServiceAzureFunctionKeyVaultKey keyVaultKey;

  @internal
  @override
  String get blockKey => 'key_vault_key';

  @internal
  @override
  Map<String, Object?> encode() => {'key_vault_key': keyVaultKey.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'key_vault_key': TfArg.literal(keyVaultKey.encode()),
  };
}

/// Typed helper for the `key_vault_key` block of
/// `azurerm_data_factory_linked_service_azure_function` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceAzureFunctionKeyVaultKey {
  const DataFactoryLinkedServiceAzureFunctionKeyVaultKey({
    required this.linkedServiceName,
    required this.secretName,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<String> secretName;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'secret_name': secretName.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory_linked_service_azure_function`.
final class AzurermDataFactoryLinkedServiceAzureFunction extends Resource {
  static const String tfType =
      'azurerm_data_factory_linked_service_azure_function';

  AzurermDataFactoryLinkedServiceAzureFunction(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? integrationRuntimeName,
    required DataFactoryLinkedServiceAzureFunctionKey key,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    required TfArg<String> url,
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
           ...key.argMap,
           'name': name,
           'parameters': ?parameters,
           'url': url,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryLinkedServiceAzureFunctionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryLinkedServiceAzureFunction>`.
  RefTo<AzurermDataFactoryLinkedServiceAzureFunction> get ref => RefTo.of(this);

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

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
