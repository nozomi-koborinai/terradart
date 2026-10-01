// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_servicecatalog_portfolio_status`.
const Set<String> _awsSagemakerServicecatalogPortfolioStatusSensitive =
    <String>{};

/// Sagemaker Servicecatalog Portfolio enum for `status`.
extension type const SagemakerServicecatalogPortfolioStatus._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerServicecatalogPortfolioStatus.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerServicecatalogPortfolioStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerServicecatalogPortfolioStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SagemakerServicecatalogPortfolioStatus._(
    TfArgLiteral('Enabled'),
  );
  static const disabled = SagemakerServicecatalogPortfolioStatus._(
    TfArgLiteral('Disabled'),
  );

  static const List<SagemakerServicecatalogPortfolioStatus> values = [
    enabled,
    disabled,
  ];
}

/// Factory wrapper for `aws_sagemaker_servicecatalog_portfolio_status`.
final class AwsSagemakerServicecatalogPortfolioStatus extends Resource {
  static const String tfType = 'aws_sagemaker_servicecatalog_portfolio_status';

  AwsSagemakerServicecatalogPortfolioStatus(
    super.localName, {
    TfArg<String>? region,
    required SagemakerServicecatalogPortfolioStatus status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'region': ?region, 'status': status},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSagemakerServicecatalogPortfolioStatusSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerServicecatalogPortfolioStatus>`.
  RefTo<AwsSagemakerServicecatalogPortfolioStatus> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
