// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_principal_portfolio_association`.
const Set<String> _awsServicecatalogPrincipalPortfolioAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_servicecatalog_principal_portfolio_association`.
final class AwsServicecatalogPrincipalPortfolioAssociation extends Resource {
  static const String tfType =
      'aws_servicecatalog_principal_portfolio_association';

  AwsServicecatalogPrincipalPortfolioAssociation({
    required super.localName,
    TfArg<String>? acceptLanguage,
    required TfArg<String> portfolioId,
    required TfArg<String> principalArn,
    TfArg<String>? principalType,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (acceptLanguage != null) 'accept_language': acceptLanguage,
           'portfolio_id': portfolioId,
           'principal_arn': principalArn,
           if (principalType != null) 'principal_type': principalType,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogPrincipalPortfolioAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
