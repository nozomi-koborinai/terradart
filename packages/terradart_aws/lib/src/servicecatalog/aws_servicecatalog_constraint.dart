// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_constraint`.
const Set<String> _awsServicecatalogConstraintSensitive = <String>{};

/// Servicecatalog Constraint Accept enum for `accept_language`.
extension type const ServicecatalogConstraintAcceptLanguage._(TfArg<String> _)
    implements TfArg<String> {
  ServicecatalogConstraintAcceptLanguage.variable(String name)
    : this._(TfArg.variable(name));
  ServicecatalogConstraintAcceptLanguage.expression(String template)
    : this._(TfArg.expression(template));
  const ServicecatalogConstraintAcceptLanguage.arg(TfArg<String> arg)
    : this._(arg);

  static const en = ServicecatalogConstraintAcceptLanguage._(
    TfArgLiteral('en'),
  );
  static const jp = ServicecatalogConstraintAcceptLanguage._(
    TfArgLiteral('jp'),
  );
  static const zh = ServicecatalogConstraintAcceptLanguage._(
    TfArgLiteral('zh'),
  );

  static const List<ServicecatalogConstraintAcceptLanguage> values = [
    en,
    jp,
    zh,
  ];
}

/// Servicecatalog Constraint enum for `type`.
extension type const ServicecatalogConstraintType._(TfArg<String> _)
    implements TfArg<String> {
  ServicecatalogConstraintType.variable(String name)
    : this._(TfArg.variable(name));
  ServicecatalogConstraintType.expression(String template)
    : this._(TfArg.expression(template));
  const ServicecatalogConstraintType.arg(TfArg<String> arg) : this._(arg);

  static const launch = ServicecatalogConstraintType._(TfArgLiteral('LAUNCH'));
  static const notification = ServicecatalogConstraintType._(
    TfArgLiteral('NOTIFICATION'),
  );
  static const resourceUpdate = ServicecatalogConstraintType._(
    TfArgLiteral('RESOURCE_UPDATE'),
  );
  static const stackset = ServicecatalogConstraintType._(
    TfArgLiteral('STACKSET'),
  );
  static const template = ServicecatalogConstraintType._(
    TfArgLiteral('TEMPLATE'),
  );

  static const List<ServicecatalogConstraintType> values = [
    launch,
    notification,
    resourceUpdate,
    stackset,
    template,
  ];
}

/// Factory wrapper for `aws_servicecatalog_constraint`.
final class AwsServicecatalogConstraint extends Resource {
  static const String tfType = 'aws_servicecatalog_constraint';

  AwsServicecatalogConstraint(
    super.localName, {
    ServicecatalogConstraintAcceptLanguage? acceptLanguage,
    TfArg<String>? description,
    required TfArg<String> parameters,
    required TfArg<String> portfolioId,
    required TfArg<String> productId,
    TfArg<String>? region,
    required ServicecatalogConstraintType type,
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
