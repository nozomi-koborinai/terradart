// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../servicecatalogappregistry/aws_servicecatalogappregistry_attribute_group.dart';

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
         argMap: {'arn': ?arn, 'name': ?name, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogappregistryAttributeGroupSensitive;

  /// A reference to the `aws_servicecatalogappregistry_attribute_group` this data source reads, for
  /// arguments typed `RefTo<AwsServicecatalogappregistryAttributeGroup>`.
  RefTo<AwsServicecatalogappregistryAttributeGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
