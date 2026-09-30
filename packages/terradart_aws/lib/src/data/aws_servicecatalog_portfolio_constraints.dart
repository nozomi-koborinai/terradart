// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_portfolio_constraints`.
const Set<String> _awsServicecatalogPortfolioConstraintsSensitive = <String>{};

/// Factory wrapper for `aws_servicecatalog_portfolio_constraints`.
final class DataAwsServicecatalogPortfolioConstraints extends Data {
  static const String tfType = 'aws_servicecatalog_portfolio_constraints';

  DataAwsServicecatalogPortfolioConstraints({
    required super.localName,
    TfArg<String>? acceptLanguage,
    required TfArg<String> portfolioId,
    TfArg<String>? productId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accept_language': ?acceptLanguage,
           'portfolio_id': portfolioId,
           'product_id': ?productId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogPortfolioConstraintsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `details` attribute.
  TfRef<List<Map<String, Object?>>> get details =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'details');

  /// Reference to `accept_language` attribute.
  TfRef<String> get acceptLanguageRef =>
      TfRef.attribute<String>(this, 'accept_language');

  /// Reference to `portfolio_id` attribute.
  TfRef<String> get portfolioIdRef =>
      TfRef.attribute<String>(this, 'portfolio_id');

  /// Reference to `product_id` attribute.
  TfRef<String> get productIdRef => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
