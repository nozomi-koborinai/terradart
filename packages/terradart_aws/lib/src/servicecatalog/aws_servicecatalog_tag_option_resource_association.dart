// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_tag_option_resource_association`.
const Set<String> _awsServicecatalogTagOptionResourceAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_servicecatalog_tag_option_resource_association`.
final class AwsServicecatalogTagOptionResourceAssociation extends Resource {
  static const String tfType =
      'aws_servicecatalog_tag_option_resource_association';

  AwsServicecatalogTagOptionResourceAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    required TfArg<String> tagOptionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'resource_id': resourceId,
           'tag_option_id': tagOptionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogTagOptionResourceAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `resource_created_time` attribute.
  TfRef<String> get resourceCreatedTime =>
      TfRef.attribute<String>(this, 'resource_created_time');

  /// Reference to `resource_description` attribute.
  TfRef<String> get resourceDescription =>
      TfRef.attribute<String>(this, 'resource_description');

  /// Reference to `resource_name` attribute.
  TfRef<String> get resourceName =>
      TfRef.attribute<String>(this, 'resource_name');
}
