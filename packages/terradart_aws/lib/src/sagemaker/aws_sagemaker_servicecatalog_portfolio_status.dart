// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_servicecatalog_portfolio_status`.
const Set<String> _awsSagemakerServicecatalogPortfolioStatusSensitive =
    <String>{};

/// Factory wrapper for `aws_sagemaker_servicecatalog_portfolio_status`.
final class AwsSagemakerServicecatalogPortfolioStatus extends Resource {
  static const String tfType = 'aws_sagemaker_servicecatalog_portfolio_status';

  AwsSagemakerServicecatalogPortfolioStatus({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region, 'status': status},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSagemakerServicecatalogPortfolioStatusSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
