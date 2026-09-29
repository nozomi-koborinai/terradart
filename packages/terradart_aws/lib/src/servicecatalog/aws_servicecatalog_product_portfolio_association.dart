// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_product_portfolio_association`.
const Set<String> _awsServicecatalogProductPortfolioAssociationSensitive =
    <String>{};

/// Servicecatalog Product Portfolio Association Accept enum for `accept_language`.
enum ServicecatalogProductPortfolioAssociationAcceptLanguage
    implements TerraformEnum {
  en('en'),
  jp('jp'),
  zh('zh');

  const ServicecatalogProductPortfolioAssociationAcceptLanguage(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_servicecatalog_product_portfolio_association`.
final class AwsServicecatalogProductPortfolioAssociation extends Resource {
  static const String tfType =
      'aws_servicecatalog_product_portfolio_association';

  AwsServicecatalogProductPortfolioAssociation({
    required super.localName,
    TfArg<ServicecatalogProductPortfolioAssociationAcceptLanguage>?
    acceptLanguage,
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
           if (acceptLanguage != null) 'accept_language': acceptLanguage,
           'portfolio_id': portfolioId,
           'product_id': productId,
           if (region != null) 'region': region,
           if (sourcePortfolioId != null)
             'source_portfolio_id': sourcePortfolioId,
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
}
