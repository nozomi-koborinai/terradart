// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_static_web_app_custom_domain`.
const Set<String> _azurermStaticWebAppCustomDomainSensitive = <String>{
  'validation_token',
};

/// Static Web App Custom Domain Validation enum for `validation_type`.
extension type const StaticWebAppCustomDomainValidationType._(TfArg<String> _)
    implements TfArg<String> {
  StaticWebAppCustomDomainValidationType.variable(String name)
    : this._(TfArg.variable(name));
  StaticWebAppCustomDomainValidationType.expression(String template)
    : this._(TfArg.expression(template));
  const StaticWebAppCustomDomainValidationType.arg(TfArg<String> arg)
    : this._(arg);

  static const dnsTxtToken = StaticWebAppCustomDomainValidationType._(
    TfArgLiteral('dns-txt-token'),
  );
  static const cnameDelegation = StaticWebAppCustomDomainValidationType._(
    TfArgLiteral('cname-delegation'),
  );

  static const List<StaticWebAppCustomDomainValidationType> values = [
    dnsTxtToken,
    cnameDelegation,
  ];
}

/// Factory wrapper for `azurerm_static_web_app_custom_domain`.
final class AzurermStaticWebAppCustomDomain extends Resource {
  static const String tfType = 'azurerm_static_web_app_custom_domain';

  AzurermStaticWebAppCustomDomain(
    super.localName, {
    required TfArg<String> domainName,
    required TfArg<String> staticWebAppId,
    required StaticWebAppCustomDomainValidationType validationType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'static_web_app_id': staticWebAppId,
           'validation_type': validationType,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStaticWebAppCustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStaticWebAppCustomDomain>`.
  RefTo<AzurermStaticWebAppCustomDomain> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `validation_token` attribute.
  TfRef<String> get validationToken =>
      TfRef.attribute<String>(this, 'validation_token');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `static_web_app_id` attribute.
  TfRef<String> get staticWebAppId =>
      TfRef.attribute<String>(this, 'static_web_app_id');

  /// Reference to `validation_type` attribute.
  TfRef<String> get validationType =>
      TfRef.attribute<String>(this, 'validation_type');
}
