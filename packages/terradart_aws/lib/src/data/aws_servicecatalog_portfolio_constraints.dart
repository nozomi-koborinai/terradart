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
           if (acceptLanguage != null) 'accept_language': acceptLanguage,
           'portfolio_id': portfolioId,
           if (productId != null) 'product_id': productId,
           if (region != null) 'region': region,
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
}
