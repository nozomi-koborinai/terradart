// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_container_app_environment_managed_certificate`.
const Set<String> _azurermContainerAppEnvironmentManagedCertificateSensitive =
    <String>{};

/// Factory wrapper for `azurerm_container_app_environment_managed_certificate`.
final class AzurermContainerAppEnvironmentManagedCertificate extends Resource {
  static const String tfType =
      'azurerm_container_app_environment_managed_certificate';

  AzurermContainerAppEnvironmentManagedCertificate(
    super.localName, {
    required TfArg<String> containerAppEnvironmentId,
    TfArg<String>? domainControlValidation,
    required TfArg<String> name,
    required TfArg<String> subjectName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_app_environment_id': containerAppEnvironmentId,
           'domain_control_validation': ?domainControlValidation,
           'name': name,
           'subject_name': subjectName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerAppEnvironmentManagedCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerAppEnvironmentManagedCertificate>`.
  RefTo<AzurermContainerAppEnvironmentManagedCertificate> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `validation_token` attribute.
  TfRef<String> get validationToken =>
      TfRef.attribute<String>(this, 'validation_token');

  /// Reference to `container_app_environment_id` attribute.
  TfRef<String> get containerAppEnvironmentId =>
      TfRef.attribute<String>(this, 'container_app_environment_id');

  /// Reference to `domain_control_validation` attribute.
  TfRef<String> get domainControlValidation =>
      TfRef.attribute<String>(this, 'domain_control_validation');

  /// Reference to `subject_name` attribute.
  TfRef<String> get subjectName =>
      TfRef.attribute<String>(this, 'subject_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
