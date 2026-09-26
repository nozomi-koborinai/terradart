// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_serverless_cluster`.
const Set<String> _awsMskServerlessClusterSensitive = <String>{};

/// Typed helper for the `client_authentication` block of
/// `aws_msk_serverless_cluster` (derived from provider schema).
@immutable
final class MskServerlessClusterClientAuthentication {
  const MskServerlessClusterClientAuthentication({required this.sasl});

  final MskServerlessClusterClientAuthenticationSasl sasl;

  Map<String, Object?> encode() => {'sasl': sasl.encode()};
}

/// Typed helper for the `client_authentication.sasl` block of
/// `aws_msk_serverless_cluster` (derived from provider schema).
@immutable
final class MskServerlessClusterClientAuthenticationSasl {
  const MskServerlessClusterClientAuthenticationSasl({required this.iam});

  final MskServerlessClusterClientAuthenticationSaslIam iam;

  Map<String, Object?> encode() => {'iam': iam.encode()};
}

/// Typed helper for the `client_authentication.sasl.iam` block of
/// `aws_msk_serverless_cluster` (derived from provider schema).
@immutable
final class MskServerlessClusterClientAuthenticationSaslIam {
  const MskServerlessClusterClientAuthenticationSaslIam({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `vpc_config` block of
/// `aws_msk_serverless_cluster` (derived from provider schema).
@immutable
final class MskServerlessClusterVpcConfig {
  const MskServerlessClusterVpcConfig({
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

/// Factory wrapper for `aws_msk_serverless_cluster`.
final class AwsMskServerlessCluster extends Resource {
  static const String tfType = 'aws_msk_serverless_cluster';

  AwsMskServerlessCluster({
    required super.localName,
    required TfArg<String> clusterName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required MskServerlessClusterClientAuthentication clientAuthentication,
    required List<MskServerlessClusterVpcConfig> vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'client_authentication': TfArg.literal(
             clientAuthentication.encode(),
           ),
           'vpc_config': TfArg.literal([for (final e in vpcConfig) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskServerlessClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `bootstrap_brokers_sasl_iam` attribute.
  TfRef<String> get bootstrapBrokersSaslIam =>
      TfRef.attribute<String>(this, 'bootstrap_brokers_sasl_iam');

  /// Reference to `cluster_uuid` attribute.
  TfRef<String> get clusterUuid =>
      TfRef.attribute<String>(this, 'cluster_uuid');
}
