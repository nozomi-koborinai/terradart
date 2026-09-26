// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambdacore_network_connector`.
const Set<String> _awsLambdacoreNetworkConnectorSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_lambdacore_network_connector` (derived from provider schema).
@immutable
final class LambdacoreNetworkConnectorConfiguration {
  const LambdacoreNetworkConnectorConfiguration({this.vpcEgressConfiguration});

  final List<LambdacoreNetworkConnectorConfigurationVpcEgressConfiguration>?
  vpcEgressConfiguration;

  Map<String, Object?> encode() => {
    if (vpcEgressConfiguration != null)
      'vpc_egress_configuration': [
        for (final e in vpcEgressConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration.vpc_egress_configuration` block of
/// `aws_lambdacore_network_connector` (derived from provider schema).
@immutable
final class LambdacoreNetworkConnectorConfigurationVpcEgressConfiguration {
  const LambdacoreNetworkConnectorConfigurationVpcEgressConfiguration({
    required this.associatedComputeResourceTypes,
    this.networkProtocol,
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<Object?>> associatedComputeResourceTypes;

  final TfArg<String>? networkProtocol;

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'associated_compute_resource_types': associatedComputeResourceTypes
        .toTfJson(),
    if (networkProtocol != null)
      'network_protocol': networkProtocol!.toTfJson(),
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
  };
}

/// Factory wrapper for `aws_lambdacore_network_connector`.
final class AwsLambdacoreNetworkConnector extends Resource {
  static const String tfType = 'aws_lambdacore_network_connector';

  AwsLambdacoreNetworkConnector({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> operatorRole,
    TfArg<String>? region,
    List<LambdacoreNetworkConnectorConfiguration>? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'operator_role': operatorRole,
           if (region != null) 'region': region,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdacoreNetworkConnectorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
