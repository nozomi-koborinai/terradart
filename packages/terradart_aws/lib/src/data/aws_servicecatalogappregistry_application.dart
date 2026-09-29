// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../servicecatalogappregistry/aws_servicecatalogappregistry_application.dart';

/// Sensitive field paths for `aws_servicecatalogappregistry_application`.
const Set<String> _awsServicecatalogappregistryApplicationSensitive =
    <String>{};

/// Factory wrapper for `aws_servicecatalogappregistry_application`.
final class DataAwsServicecatalogappregistryApplication extends Data {
  static const String tfType = 'aws_servicecatalogappregistry_application';

  DataAwsServicecatalogappregistryApplication({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogappregistryApplicationSensitive;

  /// A reference to the `aws_servicecatalogappregistry_application` this data source reads, for
  /// arguments typed `RefTo<AwsServicecatalogappregistryApplication>`.
  RefTo<AwsServicecatalogappregistryApplication> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_tag` attribute.
  TfRef<Map<String, String>> get applicationTag =>
      TfRef.attribute<Map<String, String>>(this, 'application_tag');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
