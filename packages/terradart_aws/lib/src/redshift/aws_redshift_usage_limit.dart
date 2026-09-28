// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_usage_limit`.
const Set<String> _awsRedshiftUsageLimitSensitive = <String>{};

/// Redshift Usage Limit Breach enum for `breach_action`.
enum RedshiftUsageLimitBreachAction implements TerraformEnum {
  log('log'),
  emitMetric('emit-metric'),
  disable('disable');

  const RedshiftUsageLimitBreachAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Redshift Usage Limit Feature enum for `feature_type`.
enum RedshiftUsageLimitFeatureType implements TerraformEnum {
  spectrum('spectrum'),
  concurrencyScaling('concurrency-scaling'),
  crossRegionDatasharing('cross-region-datasharing'),
  extraComputeForAutomaticOptimization(
    'extra-compute-for-automatic-optimization',
  );

  const RedshiftUsageLimitFeatureType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Redshift Usage Limit Limit enum for `limit_type`.
enum RedshiftUsageLimitLimitType implements TerraformEnum {
  time('time'),
  dataScanned('data-scanned');

  const RedshiftUsageLimitLimitType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Redshift Usage Limit enum for `period`.
enum RedshiftUsageLimitPeriod implements TerraformEnum {
  daily('daily'),
  weekly('weekly'),
  monthly('monthly');

  const RedshiftUsageLimitPeriod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_redshift_usage_limit`.
final class AwsRedshiftUsageLimit extends Resource {
  static const String tfType = 'aws_redshift_usage_limit';

  AwsRedshiftUsageLimit({
    required super.localName,
    required TfArg<num> amount,
    TfArg<RedshiftUsageLimitBreachAction>? breachAction,
    required TfArg<String> clusterIdentifier,
    required TfArg<RedshiftUsageLimitFeatureType> featureType,
    required TfArg<RedshiftUsageLimitLimitType> limitType,
    TfArg<RedshiftUsageLimitPeriod>? period,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'amount': amount,
           if (breachAction != null) 'breach_action': breachAction,
           'cluster_identifier': clusterIdentifier,
           'feature_type': featureType,
           'limit_type': limitType,
           if (period != null) 'period': period,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftUsageLimitSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
