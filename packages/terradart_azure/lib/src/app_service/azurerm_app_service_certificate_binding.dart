// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_app_service_certificate_binding`.
const Set<String> _azurermAppServiceCertificateBindingSensitive = <String>{};

/// App Service Certificate Binding Ssl enum for `ssl_state`.
extension type const AppServiceCertificateBindingSslState._(TfArg<String> _)
    implements TfArg<String> {
  AppServiceCertificateBindingSslState.variable(String name)
    : this._(TfArg.variable(name));
  AppServiceCertificateBindingSslState.expression(String template)
    : this._(TfArg.expression(template));
  const AppServiceCertificateBindingSslState.arg(TfArg<String> arg)
    : this._(arg);

  static const ipbasedenabled = AppServiceCertificateBindingSslState._(
    TfArgLiteral('IpBasedEnabled'),
  );
  static const snienabled = AppServiceCertificateBindingSslState._(
    TfArgLiteral('SniEnabled'),
  );

  static const List<AppServiceCertificateBindingSslState> values = [
    ipbasedenabled,
    snienabled,
  ];
}

/// Factory wrapper for `azurerm_app_service_certificate_binding`.
final class AzurermAppServiceCertificateBinding extends Resource {
  static const String tfType = 'azurerm_app_service_certificate_binding';

  AzurermAppServiceCertificateBinding(
    super.localName, {
    required TfArg<String> certificateId,
    required TfArg<String> hostnameBindingId,
    required AppServiceCertificateBindingSslState sslState,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_id': certificateId,
           'hostname_binding_id': hostnameBindingId,
           'ssl_state': sslState,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAppServiceCertificateBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppServiceCertificateBinding>`.
  RefTo<AzurermAppServiceCertificateBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_service_name` attribute.
  TfRef<String> get appServiceName =>
      TfRef.attribute<String>(this, 'app_service_name');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `certificate_id` attribute.
  TfRef<String> get certificateId =>
      TfRef.attribute<String>(this, 'certificate_id');

  /// Reference to `hostname_binding_id` attribute.
  TfRef<String> get hostnameBindingId =>
      TfRef.attribute<String>(this, 'hostname_binding_id');

  /// Reference to `ssl_state` attribute.
  TfRef<String> get sslState => TfRef.attribute<String>(this, 'ssl_state');
}
