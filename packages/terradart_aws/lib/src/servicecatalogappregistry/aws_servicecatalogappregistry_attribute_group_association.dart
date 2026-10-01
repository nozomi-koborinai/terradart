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

  AwsServicecatalogappregistryAttributeGroupAssociation(
    super.localName, {
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogappregistryAttributeGroupAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicecatalogappregistryAttributeGroupAssociation>`.
  RefTo<AwsServicecatalogappregistryAttributeGroupAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `attribute_group_id` attribute.
  TfRef<String> get attributeGroupId =>
      TfRef.attribute<String>(this, 'attribute_group_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
