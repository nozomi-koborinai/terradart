// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_domain_name_access_association`.
const Set<String> _awsApiGatewayDomainNameAccessAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_api_gateway_domain_name_access_association`.
final class AwsApiGatewayDomainNameAccessAssociation extends Resource {
  static const String tfType = 'aws_api_gateway_domain_name_access_association';

  AwsApiGatewayDomainNameAccessAssociation({
    required super.localName,
    required TfArg<String> accessAssociationSource,
    required TfArg<String> accessAssociationSourceType,
    required TfArg<String> domainNameArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_association_source': accessAssociationSource,
           'access_association_source_type': accessAssociationSourceType,
           'domain_name_arn': domainNameArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApiGatewayDomainNameAccessAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
