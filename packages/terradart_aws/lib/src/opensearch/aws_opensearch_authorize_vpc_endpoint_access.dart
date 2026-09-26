// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearch_authorize_vpc_endpoint_access`.
const Set<String> _awsOpensearchAuthorizeVpcEndpointAccessSensitive =
    <String>{};

/// Factory wrapper for `aws_opensearch_authorize_vpc_endpoint_access`.
final class AwsOpensearchAuthorizeVpcEndpointAccess extends Resource {
  static const String tfType = 'aws_opensearch_authorize_vpc_endpoint_access';

  AwsOpensearchAuthorizeVpcEndpointAccess({
    required super.localName,
    required TfArg<String> account,
    required TfArg<String> domainName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account': account,
           'domain_name': domainName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchAuthorizeVpcEndpointAccessSensitive;

  /// Reference to `authorized_principal` attribute.
  TfRef<List<Map<String, Object?>>> get authorizedPrincipal =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'authorized_principal');
}
