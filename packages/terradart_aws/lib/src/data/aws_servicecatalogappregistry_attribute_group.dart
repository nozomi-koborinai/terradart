// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalogappregistry_attribute_group`.
const Set<String> _awsServicecatalogappregistryAttributeGroupSensitive =
    <String>{};

/// Factory wrapper for `aws_servicecatalogappregistry_attribute_group`.
final class DataAwsServicecatalogappregistryAttributeGroup extends Data {
  static const String tfType = 'aws_servicecatalogappregistry_attribute_group';

  DataAwsServicecatalogappregistryAttributeGroup({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogappregistryAttributeGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attributes` attribute.
  TfRef<String> get attributes => TfRef.attribute<String>(this, 'attributes');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
