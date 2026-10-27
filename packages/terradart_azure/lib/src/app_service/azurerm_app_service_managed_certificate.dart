// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_app_service_managed_certificate`.
const Set<String> _azurermAppServiceManagedCertificateSensitive = <String>{};

/// Factory wrapper for `azurerm_app_service_managed_certificate`.
final class AzurermAppServiceManagedCertificate extends Resource {
  static const String tfType = 'azurerm_app_service_managed_certificate';

  AzurermAppServiceManagedCertificate(
    super.localName, {
    required TfArg<String> customHostnameBindingId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_hostname_binding_id': customHostnameBindingId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAppServiceManagedCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppServiceManagedCertificate>`.
  RefTo<AzurermAppServiceManagedCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `canonical_name` attribute.
  TfRef<String> get canonicalName =>
      TfRef.attribute<String>(this, 'canonical_name');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `host_names` attribute.
  TfRef<List<String>> get hostNames =>
      TfRef.attribute<List<String>>(this, 'host_names');

  /// Reference to `issue_date` attribute.
  TfRef<String> get issueDate => TfRef.attribute<String>(this, 'issue_date');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `subject_name` attribute.
  TfRef<String> get subjectName =>
      TfRef.attribute<String>(this, 'subject_name');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `custom_hostname_binding_id` attribute.
  TfRef<String> get customHostnameBindingId =>
      TfRef.attribute<String>(this, 'custom_hostname_binding_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
