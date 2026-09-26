// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_neptunegraph_private_graph_endpoint`.
const Set<String> _awsNeptunegraphPrivateGraphEndpointSensitive = <String>{};

/// Factory wrapper for `aws_neptunegraph_private_graph_endpoint`.
final class AwsNeptunegraphPrivateGraphEndpoint extends Resource {
  static const String tfType = 'aws_neptunegraph_private_graph_endpoint';

  AwsNeptunegraphPrivateGraphEndpoint({
    required super.localName,
    required TfArg<String> graphIdentifier,
    TfArg<String>? region,
    TfArg<List<String>>? subnetIds,
    required TfArg<String> vpcId,
    TfArg<List<String>>? vpcSecurityGroupIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'graph_identifier': graphIdentifier,
           if (region != null) 'region': region,
           if (subnetIds != null) 'subnet_ids': subnetIds,
           'vpc_id': vpcId,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNeptunegraphPrivateGraphEndpointSensitive;

  /// Reference to `private_graph_endpoint_identifier` attribute.
  TfRef<String> get privateGraphEndpointIdentifier =>
      TfRef.attribute<String>(this, 'private_graph_endpoint_identifier');

  /// Reference to `vpc_endpoint_id` attribute.
  TfRef<String> get vpcEndpointId =>
      TfRef.attribute<String>(this, 'vpc_endpoint_id');
}
