// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_proxy_endpoint`.
const Set<String> _awsDbProxyEndpointSensitive = <String>{};

/// Factory wrapper for `aws_db_proxy_endpoint`.
final class AwsDbProxyEndpoint extends Resource {
  static const String tfType = 'aws_db_proxy_endpoint';

  AwsDbProxyEndpoint({
    required super.localName,
    required TfArg<String> dbProxyEndpointName,
    required TfArg<String> dbProxyName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? targetRole,
    TfArg<List<String>>? vpcSecurityGroupIds,
    required TfArg<List<String>> vpcSubnetIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'db_proxy_endpoint_name': dbProxyEndpointName,
           'db_proxy_name': dbProxyName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (targetRole != null) 'target_role': targetRole,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
           'vpc_subnet_ids': vpcSubnetIds,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbProxyEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
