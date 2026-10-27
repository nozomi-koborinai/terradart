// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_container_app_custom_domain`.
const Set<String> _azurermContainerAppCustomDomainSensitive = <String>{};

/// Container App Custom Domain Certificate Binding enum for `certificate_binding_type`.
extension type const ContainerAppCustomDomainCertificateBindingType._(
  TfArg<String> _
) implements TfArg<String> {
  ContainerAppCustomDomainCertificateBindingType.variable(String name)
    : this._(TfArg.variable(name));
  ContainerAppCustomDomainCertificateBindingType.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAppCustomDomainCertificateBindingType.arg(TfArg<String> arg)
    : this._(arg);

  static const auto = ContainerAppCustomDomainCertificateBindingType._(
    TfArgLiteral('Auto'),
  );
  static const disabled = ContainerAppCustomDomainCertificateBindingType._(
    TfArgLiteral('Disabled'),
  );
  static const snienabled = ContainerAppCustomDomainCertificateBindingType._(
    TfArgLiteral('SniEnabled'),
  );

  static const List<ContainerAppCustomDomainCertificateBindingType> values = [
    auto,
    disabled,
    snienabled,
  ];
}

/// Factory wrapper for `azurerm_container_app_custom_domain`.
final class AzurermContainerAppCustomDomain extends Resource {
  static const String tfType = 'azurerm_container_app_custom_domain';

  AzurermContainerAppCustomDomain(
    super.localName, {
    ContainerAppCustomDomainCertificateBindingType? certificateBindingType,
    TfArg<String>? containerAppEnvironmentCertificateId,
    required TfArg<String> containerAppId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_binding_type': ?certificateBindingType,
           'container_app_environment_certificate_id':
               ?containerAppEnvironmentCertificateId,
           'container_app_id': containerAppId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerAppCustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerAppCustomDomain>`.
  RefTo<AzurermContainerAppCustomDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `container_app_environment_managed_certificate_id` attribute.
  TfRef<String> get containerAppEnvironmentManagedCertificateId =>
      TfRef.attribute<String>(
        this,
        'container_app_environment_managed_certificate_id',
      );

  /// Reference to `certificate_binding_type` attribute.
  TfRef<String> get certificateBindingType =>
      TfRef.attribute<String>(this, 'certificate_binding_type');

  /// Reference to `container_app_environment_certificate_id` attribute.
  TfRef<String> get containerAppEnvironmentCertificateId =>
      TfRef.attribute<String>(this, 'container_app_environment_certificate_id');

  /// Reference to `container_app_id` attribute.
  TfRef<String> get containerAppId =>
      TfRef.attribute<String>(this, 'container_app_id');
}
