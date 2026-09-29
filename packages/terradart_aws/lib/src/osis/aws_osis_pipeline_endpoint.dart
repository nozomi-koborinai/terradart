// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_osis_pipeline_endpoint`.
const Set<String> _awsOsisPipelineEndpointSensitive = <String>{};

/// Typed helper for the `vpc_options` block of
/// `aws_osis_pipeline_endpoint` (derived from provider schema).
@immutable
final class OsisPipelineEndpointVpcOptions {
  const OsisPipelineEndpointVpcOptions({
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

/// Factory wrapper for `aws_osis_pipeline_endpoint`.
final class AwsOsisPipelineEndpoint extends Resource {
  static const String tfType = 'aws_osis_pipeline_endpoint';

  AwsOsisPipelineEndpoint({
    required super.localName,
    required TfArg<String> pipelineArn,
    TfArg<String>? region,
    List<OsisPipelineEndpointVpcOptions>? vpcOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'pipeline_arn': pipelineArn,
           'region': ?region,
           if (vpcOptions != null)
             'vpc_options': TfArg.literal([
               for (final e in vpcOptions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOsisPipelineEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOsisPipelineEndpoint>`.
  RefTo<AwsOsisPipelineEndpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
