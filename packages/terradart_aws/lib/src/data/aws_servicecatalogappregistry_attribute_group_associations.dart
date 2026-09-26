// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalogappregistry_attribute_group_associations`.
const Set<String>
_awsServicecatalogappregistryAttributeGroupAssociationsSensitive = <String>{};

/// Factory wrapper for `aws_servicecatalogappregistry_attribute_group_associations`.
final class DataAwsServicecatalogappregistryAttributeGroupAssociations
    extends Data {
  static const String tfType =
      'aws_servicecatalogappregistry_attribute_group_associations';

  DataAwsServicecatalogappregistryAttributeGroupAssociations({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogappregistryAttributeGroupAssociationsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attribute_group_ids` attribute.
  TfRef<List<String>> get attributeGroupIds =>
      TfRef.attribute<List<String>>(this, 'attribute_group_ids');
}
