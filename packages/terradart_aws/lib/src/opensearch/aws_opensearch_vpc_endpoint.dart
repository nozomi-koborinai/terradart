// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearch_vpc_endpoint`.
const Set<String> _awsOpensearchVpcEndpointSensitive = <String>{};

/// Typed helper for the `vpc_options` block of
/// `aws_opensearch_vpc_endpoint` (derived from provider schema).
@immutable
final class OpensearchVpcEndpointVpcOptions {
  const OpensearchVpcEndpointVpcOptions({
    this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
  };
}

/// Factory wrapper for `aws_opensearch_vpc_endpoint`.
final class AwsOpensearchVpcEndpoint extends Resource {
  static const String tfType = 'aws_opensearch_vpc_endpoint';

  AwsOpensearchVpcEndpoint({
    required super.localName,
    required TfArg<String> domainArn,
    TfArg<String>? region,
    required OpensearchVpcEndpointVpcOptions vpcOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_arn': domainArn,
           if (region != null) 'region': region,
           'vpc_options': TfArg.literal(vpcOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOpensearchVpcEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');
}
