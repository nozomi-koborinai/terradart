// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_constraint`.
const Set<String> _awsServicecatalogConstraintSensitive = <String>{};

/// Servicecatalog Constraint Accept enum for `accept_language`.
enum ServicecatalogConstraintAcceptLanguage implements TerraformEnum {
  en('en'),
  jp('jp'),
  zh('zh');

  const ServicecatalogConstraintAcceptLanguage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Servicecatalog Constraint enum for `type`.
enum ServicecatalogConstraintType implements TerraformEnum {
  launch('LAUNCH'),
  notification('NOTIFICATION'),
  resourceUpdate('RESOURCE_UPDATE'),
  stackset('STACKSET'),
  template('TEMPLATE');

  const ServicecatalogConstraintType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_servicecatalog_constraint`.
final class AwsServicecatalogConstraint extends Resource {
  static const String tfType = 'aws_servicecatalog_constraint';

  AwsServicecatalogConstraint(
    super.localName, {
    TfArg<ServicecatalogConstraintAcceptLanguage>? acceptLanguage,
    TfArg<String>? description,
    required TfArg<String> parameters,
    required TfArg<String> portfolioId,
    required TfArg<String> productId,
    TfArg<String>? region,
    required TfArg<ServicecatalogConstraintType> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accept_language': ?acceptLanguage,
           'description': ?description,
           'parameters': parameters,
           'portfolio_id': portfolioId,
           'product_id': productId,
           'region': ?region,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicecatalogConstraintSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicecatalogConstraint>`.
  RefTo<AwsServicecatalogConstraint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `accept_language` attribute.
  TfRef<String> get acceptLanguage =>
      TfRef.attribute<String>(this, 'accept_language');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `parameters` attribute.
  TfRef<String> get parameters => TfRef.attribute<String>(this, 'parameters');

  /// Reference to `portfolio_id` attribute.
  TfRef<String> get portfolioId =>
      TfRef.attribute<String>(this, 'portfolio_id');

  /// Reference to `product_id` attribute.
  TfRef<String> get productId => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
