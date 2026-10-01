// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

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

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_lambda_capacity_provider`.
final class AwsLambdaCapacityProvider extends Resource {
  static const String tfType = 'aws_lambda_capacity_provider';

  AwsLambdaCapacityProvider({
    required super.localName,
    TfArg<List<Map<String, Object?>>>? capacityProviderScalingConfig,
    TfArg<List<Map<String, Object?>>>? instanceRequirements,
    RefTo<AwsKmsKey>? kmsKeyArn,
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
           'capacity_provider_scaling_config': ?capacityProviderScalingConfig,
           'instance_requirements': ?instanceRequirements,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaCapacityProvider>`.
  RefTo<AwsLambdaCapacityProvider> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `capacity_provider_scaling_config` attribute.
  TfRef<List<Map<String, Object?>>> get capacityProviderScalingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'capacity_provider_scaling_config',
      );

  /// Reference to `instance_requirements` attribute.
  TfRef<List<Map<String, Object?>>> get instanceRequirements =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'instance_requirements',
      );

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
