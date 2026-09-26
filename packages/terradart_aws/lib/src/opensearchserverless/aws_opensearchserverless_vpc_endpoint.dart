// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_vpc_endpoint`.
const Set<String> _awsOpensearchserverlessVpcEndpointSensitive = <String>{};

/// Factory wrapper for `aws_opensearchserverless_vpc_endpoint`.
final class AwsOpensearchserverlessVpcEndpoint extends Resource {
  static const String tfType = 'aws_opensearchserverless_vpc_endpoint';

  AwsOpensearchserverlessVpcEndpoint({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupIds,
    required TfArg<List<String>> subnetIds,
    required TfArg<String> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           'subnet_ids': subnetIds,
           'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchserverlessVpcEndpointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
