// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../servicecatalog/aws_servicecatalog_portfolio.dart';

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
           'accept_language': ?acceptLanguage,
           'id': id,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicecatalogPortfolioSensitive;

  /// A reference to the `aws_servicecatalog_portfolio` this data source reads, for
  /// arguments typed `RefTo<AwsServicecatalogPortfolio>`.
  RefTo<AwsServicecatalogPortfolio> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `accept_language` attribute.
  TfRef<String> get acceptLanguageRef =>
      TfRef.attribute<String>(this, 'accept_language');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
