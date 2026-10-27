// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_credential_user_managed_identity`.
const Set<String> _azurermDataFactoryCredentialUserManagedIdentitySensitive =
    <String>{};

/// Factory wrapper for `azurerm_data_factory_credential_user_managed_identity`.
final class AzurermDataFactoryCredentialUserManagedIdentity extends Resource {
  static const String tfType =
      'azurerm_data_factory_credential_user_managed_identity';

  AzurermDataFactoryCredentialUserManagedIdentity(
    super.localName, {
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    required TfArg<String> identityId,
    required TfArg<String> name,
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
           'identity_id': identityId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryCredentialUserManagedIdentitySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryCredentialUserManagedIdentity>`.
  RefTo<AzurermDataFactoryCredentialUserManagedIdentity> get ref =>
      RefTo.of(this);

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

  /// Reference to `identity_id` attribute.
  TfRef<String> get identityId => TfRef.attribute<String>(this, 'identity_id');
}
