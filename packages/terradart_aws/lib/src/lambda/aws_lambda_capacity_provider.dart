// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_capacity_provider`.
const Set<String> _awsLambdaCapacityProviderSensitive = <String>{};

/// Typed helper for the `permissions_config` block of
/// `aws_lambda_capacity_provider` (derived from provider schema).
@immutable
final class LambdaCapacityProviderPermissionsConfig {
  const LambdaCapacityProviderPermissionsConfig({
    required this.capacityProviderOperatorRoleArn,
  });

  final TfArg<String> capacityProviderOperatorRoleArn;

  Map<String, Object?> encode() => {
    'capacity_provider_operator_role_arn': capacityProviderOperatorRoleArn
        .toTfJson(),
  };
}

/// Typed helper for the `vpc_config` block of
/// `aws_lambda_capacity_provider` (derived from provider schema).
@immutable
final class LambdaCapacityProviderVpcConfig {
  const LambdaCapacityProviderVpcConfig({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
  };
}

/// Factory wrapper for `aws_lambda_capacity_provider`.
final class AwsLambdaCapacityProvider extends Resource {
  static const String tfType = 'aws_lambda_capacity_provider';

  AwsLambdaCapacityProvider({
    required super.localName,
    TfArg<List<Map<String, Object?>>>? capacityProviderScalingConfig,
    TfArg<List<Map<String, Object?>>>? instanceRequirements,
    TfArg<String>? kmsKeyArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<LambdaCapacityProviderPermissionsConfig>? permissionsConfig,
    List<LambdaCapacityProviderVpcConfig>? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (capacityProviderScalingConfig != null)
             'capacity_provider_scaling_config': capacityProviderScalingConfig,
           if (instanceRequirements != null)
             'instance_requirements': instanceRequirements,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (permissionsConfig != null)
             'permissions_config': TfArg.literal([
               for (final e in permissionsConfig) e.encode(),
             ]),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal([
               for (final e in vpcConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaCapacityProviderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
