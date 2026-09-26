// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_constraint`.
const Set<String> _awsServicecatalogConstraintSensitive = <String>{};

/// Factory wrapper for `aws_servicecatalog_constraint`.
final class AwsServicecatalogConstraint extends Resource {
  static const String tfType = 'aws_servicecatalog_constraint';

  AwsServicecatalogConstraint({
    required super.localName,
    TfArg<String>? acceptLanguage,
    TfArg<String>? description,
    required TfArg<String> parameters,
    required TfArg<String> portfolioId,
    required TfArg<String> productId,
    TfArg<String>? region,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (acceptLanguage != null) 'accept_language': acceptLanguage,
           if (description != null) 'description': description,
           'parameters': parameters,
           'portfolio_id': portfolioId,
           'product_id': productId,
           if (region != null) 'region': region,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicecatalogConstraintSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
