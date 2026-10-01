// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_domain_name_access_association`.
const Set<String> _awsApiGatewayDomainNameAccessAssociationSensitive =
    <String>{};

/// Api Gateway Domain Name Access Association Source enum for `access_association_source_type`.
enum ApiGatewayDomainNameAccessAssociationSourceType implements TerraformEnum {
  vpce('VPCE');

  const ApiGatewayDomainNameAccessAssociationSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_api_gateway_domain_name_access_association`.
final class AwsApiGatewayDomainNameAccessAssociation extends Resource {
  static const String tfType = 'aws_api_gateway_domain_name_access_association';

  AwsApiGatewayDomainNameAccessAssociation(
    super.localName, {
    required TfArg<String> accessAssociationSource,
    required TfArg<ApiGatewayDomainNameAccessAssociationSourceType>
    accessAssociationSourceType,
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
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApiGatewayDomainNameAccessAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayDomainNameAccessAssociation>`.
  RefTo<AwsApiGatewayDomainNameAccessAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `access_association_source` attribute.
  TfRef<String> get accessAssociationSource =>
      TfRef.attribute<String>(this, 'access_association_source');

  /// Reference to `access_association_source_type` attribute.
  TfRef<String> get accessAssociationSourceType =>
      TfRef.attribute<String>(this, 'access_association_source_type');

  /// Reference to `domain_name_arn` attribute.
  TfRef<String> get domainNameArn =>
      TfRef.attribute<String>(this, 'domain_name_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
