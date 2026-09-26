// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshiftserverless_workgroup`.
const Set<String> _awsRedshiftserverlessWorkgroupSensitive = <String>{};

/// Typed helper for the `config_parameter` block of
/// `aws_redshiftserverless_workgroup` (derived from provider schema).
@immutable
final class RedshiftserverlessWorkgroupConfigParameter {
  const RedshiftserverlessWorkgroupConfigParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  final TfArg<String> parameterKey;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_key': parameterKey.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Typed helper for the `price_performance_target` block of
/// `aws_redshiftserverless_workgroup` (derived from provider schema).
@immutable
final class RedshiftserverlessWorkgroupPricePerformanceTarget {
  const RedshiftserverlessWorkgroupPricePerformanceTarget({
    required this.enabled,
    this.level,
  });

  final TfArg<bool> enabled;

  final TfArg<num>? level;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (level != null) 'level': level!.toTfJson(),
  };
}

/// Factory wrapper for `aws_redshiftserverless_workgroup`.
final class AwsRedshiftserverlessWorkgroup extends Resource {
  static const String tfType = 'aws_redshiftserverless_workgroup';

  AwsRedshiftserverlessWorkgroup({
    required super.localName,
    TfArg<num>? baseCapacity,
    TfArg<bool>? enhancedVpcRouting,
    TfArg<num>? maxCapacity,
    required TfArg<String> namespaceName,
    TfArg<num>? port,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupIds,
    TfArg<List<String>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? trackName,
    required TfArg<String> workgroupName,
    List<RedshiftserverlessWorkgroupConfigParameter>? configParameter,
    RedshiftserverlessWorkgroupPricePerformanceTarget? pricePerformanceTarget,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (baseCapacity != null) 'base_capacity': baseCapacity,
           if (enhancedVpcRouting != null)
             'enhanced_vpc_routing': enhancedVpcRouting,
           if (maxCapacity != null) 'max_capacity': maxCapacity,
           'namespace_name': namespaceName,
           if (port != null) 'port': port,
           if (publiclyAccessible != null)
             'publicly_accessible': publiclyAccessible,
           if (region != null) 'region': region,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (subnetIds != null) 'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           if (trackName != null) 'track_name': trackName,
           'workgroup_name': workgroupName,
           if (configParameter != null)
             'config_parameter': TfArg.literal([
               for (final e in configParameter) e.encode(),
             ]),
           if (pricePerformanceTarget != null)
             'price_performance_target': TfArg.literal(
               pricePerformanceTarget.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftserverlessWorkgroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get endpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoint');

  /// Reference to `workgroup_id` attribute.
  TfRef<String> get workgroupId =>
      TfRef.attribute<String>(this, 'workgroup_id');
}
