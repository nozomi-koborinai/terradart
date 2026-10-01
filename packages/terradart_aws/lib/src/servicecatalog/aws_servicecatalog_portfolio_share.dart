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

  AwsServicecatalogPortfolioShare(
    super.localName, {
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
           'accept_language': ?acceptLanguage,
           'portfolio_id': portfolioId,
           'principal_id': principalId,
           'region': ?region,
           'share_principals': ?sharePrincipals,
           'share_tag_options': ?shareTagOptions,
           'type': type,
           'wait_for_acceptance': ?waitForAcceptance,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicecatalogPortfolioShareSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicecatalogPortfolioShare>`.
  RefTo<AwsServicecatalogPortfolioShare> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accepted` attribute.
  TfRef<bool> get accepted => TfRef.attribute<bool>(this, 'accepted');

  /// Reference to `accept_language` attribute.
  TfRef<String> get acceptLanguage =>
      TfRef.attribute<String>(this, 'accept_language');

  /// Reference to `portfolio_id` attribute.
  TfRef<String> get portfolioId =>
      TfRef.attribute<String>(this, 'portfolio_id');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `share_principals` attribute.
  TfRef<bool> get sharePrincipals =>
      TfRef.attribute<bool>(this, 'share_principals');

  /// Reference to `share_tag_options` attribute.
  TfRef<bool> get shareTagOptions =>
      TfRef.attribute<bool>(this, 'share_tag_options');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `wait_for_acceptance` attribute.
  TfRef<bool> get waitForAcceptance =>
      TfRef.attribute<bool>(this, 'wait_for_acceptance');
}
