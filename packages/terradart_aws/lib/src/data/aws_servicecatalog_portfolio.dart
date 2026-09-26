// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_portfolio`.
const Set<String> _awsServicecatalogPortfolioSensitive = <String>{};

/// Factory wrapper for `aws_servicecatalog_portfolio`.
final class DataAwsServicecatalogPortfolio extends Data {
  static const String tfType = 'aws_servicecatalog_portfolio';

  DataAwsServicecatalogPortfolio({
    required super.localName,
    TfArg<String>? acceptLanguage,
    required TfArg<String> id,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (acceptLanguage != null) 'accept_language': acceptLanguage,
           'id': id,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicecatalogPortfolioSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerName =>
      TfRef.attribute<String>(this, 'provider_name');
}
