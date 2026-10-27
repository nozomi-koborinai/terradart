// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_credential_service_principal`.
const Set<String> _azurermDataFactoryCredentialServicePrincipalSensitive =
    <String>{};

/// Typed helper for the `service_principal_key` block of
/// `azurerm_data_factory_credential_service_principal` (derived from provider schema).
@immutable
final class DataFactoryCredentialServicePrincipalKey {
  const DataFactoryCredentialServicePrincipalKey({
    required this.linkedServiceName,
    required this.secretName,
    this.secretVersion,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<String> secretName;

  final TfArg<String>? secretVersion;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'secret_name': secretName.toTfJson(),
    'secret_version': ?secretVersion?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory_credential_service_principal`.
final class AzurermDataFactoryCredentialServicePrincipal extends Resource {
  static const String tfType =
      'azurerm_data_factory_credential_service_principal';

  AzurermDataFactoryCredentialServicePrincipal(
    super.localName, {
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> servicePrincipalId,
    required TfArg<String> tenantId,
    DataFactoryCredentialServicePrincipalKey? servicePrincipalKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'name': name,
           'service_principal_id': servicePrincipalId,
           'tenant_id': tenantId,
           if (servicePrincipalKey != null)
             'service_principal_key': TfArg.literal(
               servicePrincipalKey.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryCredentialServicePrincipalSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryCredentialServicePrincipal>`.
  RefTo<AzurermDataFactoryCredentialServicePrincipal> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `service_principal_id` attribute.
  TfRef<String> get servicePrincipalId =>
      TfRef.attribute<String>(this, 'service_principal_id');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
