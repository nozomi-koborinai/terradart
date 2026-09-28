// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_portfolio_share`.
const Set<String> _awsServicecatalogPortfolioShareSensitive = <String>{};

/// Servicecatalog Portfolio Share Accept enum for `accept_language`.
enum ServicecatalogPortfolioShareAcceptLanguage implements TerraformEnum {
  en('en'),
  jp('jp'),
  zh('zh');

  const ServicecatalogPortfolioShareAcceptLanguage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Servicecatalog Portfolio Share enum for `type`.
enum ServicecatalogPortfolioShareType implements TerraformEnum {
  account('ACCOUNT'),
  organization('ORGANIZATION'),
  organizationalUnit('ORGANIZATIONAL_UNIT'),
  organizationMemberAccount('ORGANIZATION_MEMBER_ACCOUNT');

  const ServicecatalogPortfolioShareType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_servicecatalog_portfolio_share`.
final class AwsServicecatalogPortfolioShare extends Resource {
  static const String tfType = 'aws_servicecatalog_portfolio_share';

  AwsServicecatalogPortfolioShare({
    required super.localName,
    TfArg<ServicecatalogPortfolioShareAcceptLanguage>? acceptLanguage,
    required TfArg<String> portfolioId,
    required TfArg<String> principalId,
    TfArg<String>? region,
    TfArg<bool>? sharePrincipals,
    TfArg<bool>? shareTagOptions,
    required TfArg<ServicecatalogPortfolioShareType> type,
    TfArg<bool>? waitForAcceptance,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (acceptLanguage != null) 'accept_language': acceptLanguage,
           'portfolio_id': portfolioId,
           'principal_id': principalId,
           if (region != null) 'region': region,
           if (sharePrincipals != null) 'share_principals': sharePrincipals,
           if (shareTagOptions != null) 'share_tag_options': shareTagOptions,
           'type': type,
           if (waitForAcceptance != null)
             'wait_for_acceptance': waitForAcceptance,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicecatalogPortfolioShareSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accepted` attribute.
  TfRef<bool> get accepted => TfRef.attribute<bool>(this, 'accepted');
}
