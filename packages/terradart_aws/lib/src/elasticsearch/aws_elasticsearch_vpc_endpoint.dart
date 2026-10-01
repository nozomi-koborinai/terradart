// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_elasticsearch_vpc_endpoint`.
const Set<String> _awsElasticsearchVpcEndpointSensitive = <String>{};

/// Typed helper for the `vpc_options` block of
/// `aws_elasticsearch_vpc_endpoint` (derived from provider schema).
@immutable
final class ElasticsearchVpcEndpointVpcOptions {
  const ElasticsearchVpcEndpointVpcOptions({
    this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_elasticsearch_vpc_endpoint`.
final class AwsElasticsearchVpcEndpoint extends Resource {
  static const String tfType = 'aws_elasticsearch_vpc_endpoint';

  AwsElasticsearchVpcEndpoint(
    super.localName, {
    required TfArg<String> domainArn,
    TfArg<String>? region,
    required ElasticsearchVpcEndpointVpcOptions vpcOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_arn': domainArn,
           'region': ?region,
           'vpc_options': TfArg.literal(vpcOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticsearchVpcEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticsearchVpcEndpoint>`.
  RefTo<AwsElasticsearchVpcEndpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `domain_arn` attribute.
  TfRef<String> get domainArn => TfRef.attribute<String>(this, 'domain_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
