// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_federated_identity_credential`.
const Set<String> _azurermFederatedIdentityCredentialSensitive = <String>{};

/// Factory wrapper for `azurerm_federated_identity_credential`.
final class AzurermFederatedIdentityCredential extends Resource {
  static const String tfType = 'azurerm_federated_identity_credential';

  AzurermFederatedIdentityCredential(
    super.localName, {
    required TfArg<List<String>> audience,
    required TfArg<String> issuer,
    required TfArg<String> name,
    required TfArg<String> subject,
    required TfArg<String> userAssignedIdentityId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'audience': audience,
           'issuer': issuer,
           'name': name,
           'subject': subject,
           'user_assigned_identity_id': userAssignedIdentityId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermFederatedIdentityCredentialSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFederatedIdentityCredential>`.
  RefTo<AzurermFederatedIdentityCredential> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `audience` attribute.
  TfRef<List<String>> get audience =>
      TfRef.attribute<List<String>>(this, 'audience');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `subject` attribute.
  TfRef<String> get subject => TfRef.attribute<String>(this, 'subject');

  /// Reference to `user_assigned_identity_id` attribute.
  TfRef<String> get userAssignedIdentityId =>
      TfRef.attribute<String>(this, 'user_assigned_identity_id');
}
