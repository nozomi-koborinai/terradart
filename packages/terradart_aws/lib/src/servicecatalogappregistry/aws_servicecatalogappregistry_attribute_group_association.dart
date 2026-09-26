// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalogappregistry_attribute_group_association`.
const Set<String>
_awsServicecatalogappregistryAttributeGroupAssociationSensitive = <String>{};

/// Factory wrapper for `aws_servicecatalogappregistry_attribute_group_association`.
final class AwsServicecatalogappregistryAttributeGroupAssociation
    extends Resource {
  static const String tfType =
      'aws_servicecatalogappregistry_attribute_group_association';

  AwsServicecatalogappregistryAttributeGroupAssociation({
    required super.localName,
    required TfArg<String> applicationId,
    required TfArg<String> attributeGroupId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'attribute_group_id': attributeGroupId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogappregistryAttributeGroupAssociationSensitive;
}
