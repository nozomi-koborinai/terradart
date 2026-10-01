// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_principal_portfolio_association`.
const Set<String> _awsServicecatalogPrincipalPortfolioAssociationSensitive =
    <String>{};

/// Servicecatalog Principal Portfolio Association Accept enum for `accept_language`.
extension type const ServicecatalogPrincipalPortfolioAssociationAcceptLanguage._(
  TfArg<String> _
) implements TfArg<String> {
  ServicecatalogPrincipalPortfolioAssociationAcceptLanguage.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ServicecatalogPrincipalPortfolioAssociationAcceptLanguage.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ServicecatalogPrincipalPortfolioAssociationAcceptLanguage.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const en = ServicecatalogPrincipalPortfolioAssociationAcceptLanguage._(
    TfArgLiteral('en'),
  );
  static const jp = ServicecatalogPrincipalPortfolioAssociationAcceptLanguage._(
    TfArgLiteral('jp'),
  );
  static const zh = ServicecatalogPrincipalPortfolioAssociationAcceptLanguage._(
    TfArgLiteral('zh'),
  );

  static const List<ServicecatalogPrincipalPortfolioAssociationAcceptLanguage>
  values = [en, jp, zh];
}

/// Servicecatalog Principal Portfolio Association Principal enum for `principal_type`.
extension type const ServicecatalogPrincipalPortfolioAssociationPrincipalType._(
  TfArg<String> _
) implements TfArg<String> {
  ServicecatalogPrincipalPortfolioAssociationPrincipalType.variable(String name)
    : this._(TfArg.variable(name));
  ServicecatalogPrincipalPortfolioAssociationPrincipalType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ServicecatalogPrincipalPortfolioAssociationPrincipalType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const iam = ServicecatalogPrincipalPortfolioAssociationPrincipalType._(
    TfArgLiteral('IAM'),
  );
  static const iamPattern =
      ServicecatalogPrincipalPortfolioAssociationPrincipalType._(
        TfArgLiteral('IAM_PATTERN'),
      );

  static const List<ServicecatalogPrincipalPortfolioAssociationPrincipalType>
  values = [iam, iamPattern];
}

/// Factory wrapper for `aws_servicecatalog_principal_portfolio_association`.
final class AwsServicecatalogPrincipalPortfolioAssociation extends Resource {
  static const String tfType =
      'aws_servicecatalog_principal_portfolio_association';

  AwsServicecatalogPrincipalPortfolioAssociation(
    super.localName, {
    ServicecatalogPrincipalPortfolioAssociationAcceptLanguage? acceptLanguage,
    required TfArg<String> portfolioId,
    required TfArg<String> principalArn,
    ServicecatalogPrincipalPortfolioAssociationPrincipalType? principalType,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accept_language': ?acceptLanguage,
           'portfolio_id': portfolioId,
           'principal_arn': principalArn,
           'principal_type': ?principalType,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogPrincipalPortfolioAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicecatalogPrincipalPortfolioAssociation>`.
  RefTo<AwsServicecatalogPrincipalPortfolioAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accept_language` attribute.
  TfRef<String> get acceptLanguage =>
      TfRef.attribute<String>(this, 'accept_language');

  /// Reference to `portfolio_id` attribute.
  TfRef<String> get portfolioId =>
      TfRef.attribute<String>(this, 'portfolio_id');

  /// Reference to `principal_arn` attribute.
  TfRef<String> get principalArn =>
      TfRef.attribute<String>(this, 'principal_arn');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalType =>
      TfRef.attribute<String>(this, 'principal_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
