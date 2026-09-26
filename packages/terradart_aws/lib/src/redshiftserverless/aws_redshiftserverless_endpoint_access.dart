// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshiftserverless_endpoint_access`.
const Set<String> _awsRedshiftserverlessEndpointAccessSensitive = <String>{};

/// Factory wrapper for `aws_redshiftserverless_endpoint_access`.
final class AwsRedshiftserverlessEndpointAccess extends Resource {
  static const String tfType = 'aws_redshiftserverless_endpoint_access';

  AwsRedshiftserverlessEndpointAccess({
    required super.localName,
    required TfArg<String> endpointName,
    TfArg<String>? ownerAccount,
    TfArg<String>? region,
    required TfArg<List<String>> subnetIds,
    TfArg<List<String>>? vpcSecurityGroupIds,
    required TfArg<String> workgroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_name': endpointName,
           if (ownerAccount != null) 'owner_account': ownerAccount,
           if (region != null) 'region': region,
           'subnet_ids': subnetIds,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
           'workgroup_name': workgroupName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRedshiftserverlessEndpointAccessSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `vpc_endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get vpcEndpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vpc_endpoint');
}
