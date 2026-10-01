// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_product_portfolio_association`.
const Set<String> _awsServicecatalogProductPortfolioAssociationSensitive =
    <String>{};

/// Servicecatalog Product Portfolio Association Accept enum for `accept_language`.
extension type const ServicecatalogProductPortfolioAssociationAcceptLanguage._(
  TfArg<String> _
) implements TfArg<String> {
  ServicecatalogProductPortfolioAssociationAcceptLanguage.variable(String name)
    : this._(TfArg.variable(name));
  ServicecatalogProductPortfolioAssociationAcceptLanguage.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ServicecatalogProductPortfolioAssociationAcceptLanguage.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const en = ServicecatalogProductPortfolioAssociationAcceptLanguage._(
    TfArgLiteral('en'),
  );
  static const jp = ServicecatalogProductPortfolioAssociationAcceptLanguage._(
    TfArgLiteral('jp'),
  );
  static const zh = ServicecatalogProductPortfolioAssociationAcceptLanguage._(
    TfArgLiteral('zh'),
  );

  static const List<ServicecatalogProductPortfolioAssociationAcceptLanguage>
  values = [en, jp, zh];
}

/// Factory wrapper for `aws_servicecatalog_product_portfolio_association`.
final class AwsServicecatalogProductPortfolioAssociation extends Resource {
  static const String tfType =
      'aws_servicecatalog_product_portfolio_association';

  AwsServicecatalogProductPortfolioAssociation(
    super.localName, {
    ServicecatalogProductPortfolioAssociationAcceptLanguage? acceptLanguage,
    required TfArg<String> portfolioId,
    required TfArg<String> productId,
    TfArg<String>? region,
    TfArg<String>? sourcePortfolioId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accept_language': ?acceptLanguage,
           'portfolio_id': portfolioId,
           'product_id': productId,
           'region': ?region,
           'source_portfolio_id': ?sourcePortfolioId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogProductPortfolioAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicecatalogProductPortfolioAssociation>`.
  RefTo<AwsServicecatalogProductPortfolioAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accept_language` attribute.
  TfRef<String> get acceptLanguage =>
      TfRef.attribute<String>(this, 'accept_language');

  /// Reference to `portfolio_id` attribute.
  TfRef<String> get portfolioId =>
      TfRef.attribute<String>(this, 'portfolio_id');

  /// Reference to `product_id` attribute.
  TfRef<String> get productId => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_portfolio_id` attribute.
  TfRef<String> get sourcePortfolioId =>
      TfRef.attribute<String>(this, 'source_portfolio_id');
}
