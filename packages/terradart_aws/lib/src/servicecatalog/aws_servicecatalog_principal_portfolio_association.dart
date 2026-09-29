// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_principal_portfolio_association`.
const Set<String> _awsServicecatalogPrincipalPortfolioAssociationSensitive =
    <String>{};

/// Servicecatalog Principal Portfolio Association Accept enum for `accept_language`.
enum ServicecatalogPrincipalPortfolioAssociationAcceptLanguage
    implements TerraformEnum {
  en('en'),
  jp('jp'),
  zh('zh');

  const ServicecatalogPrincipalPortfolioAssociationAcceptLanguage(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Servicecatalog Principal Portfolio Association Principal enum for `principal_type`.
enum ServicecatalogPrincipalPortfolioAssociationPrincipalType
    implements TerraformEnum {
  iam('IAM'),
  iamPattern('IAM_PATTERN');

  const ServicecatalogPrincipalPortfolioAssociationPrincipalType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_servicecatalog_principal_portfolio_association`.
final class AwsServicecatalogPrincipalPortfolioAssociation extends Resource {
  static const String tfType =
      'aws_servicecatalog_principal_portfolio_association';

  AwsServicecatalogPrincipalPortfolioAssociation({
    required super.localName,
    TfArg<ServicecatalogPrincipalPortfolioAssociationAcceptLanguage>?
    acceptLanguage,
    required TfArg<String> portfolioId,
    required TfArg<String> principalArn,
    TfArg<ServicecatalogPrincipalPortfolioAssociationPrincipalType>?
    principalType,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicecatalogPrincipalPortfolioAssociation>`.
  RefTo<AwsServicecatalogPrincipalPortfolioAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
