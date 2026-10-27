// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../container_app/azurerm_container_app_environment_certificate.dart';

/// Sensitive field paths for `azurerm_container_app_environment_certificate`.
const Set<String> _azurermContainerAppEnvironmentCertificateSensitive =
    <String>{};

/// Factory wrapper for `azurerm_container_app_environment_certificate`.
final class DataAzurermContainerAppEnvironmentCertificate extends Data {
  static const String tfType = 'azurerm_container_app_environment_certificate';

  DataAzurermContainerAppEnvironmentCertificate(
    super.localName, {
    required TfArg<String> containerAppEnvironmentId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_app_environment_id': containerAppEnvironmentId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerAppEnvironmentCertificateSensitive;

  /// A reference to the `azurerm_container_app_environment_certificate` this data source reads, for
  /// arguments typed `RefTo<AzurermContainerAppEnvironmentCertificate>`.
  RefTo<AzurermContainerAppEnvironmentCertificate> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `issue_date` attribute.
  TfRef<String> get issueDate => TfRef.attribute<String>(this, 'issue_date');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `subject_name` attribute.
  TfRef<String> get subjectName =>
      TfRef.attribute<String>(this, 'subject_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `container_app_environment_id` attribute.
  TfRef<String> get containerAppEnvironmentId =>
      TfRef.attribute<String>(this, 'container_app_environment_id');
}
