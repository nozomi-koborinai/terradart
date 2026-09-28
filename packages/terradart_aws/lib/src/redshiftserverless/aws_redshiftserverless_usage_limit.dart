// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshiftserverless_usage_limit`.
const Set<String> _awsRedshiftserverlessUsageLimitSensitive = <String>{};

/// Redshiftserverless Usage Limit Breach enum for `breach_action`.
enum RedshiftserverlessUsageLimitBreachAction implements TerraformEnum {
  log('log'),
  emitMetric('emit-metric'),
  deactivate('deactivate');

  const RedshiftserverlessUsageLimitBreachAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Redshiftserverless Usage Limit enum for `period`.
enum RedshiftserverlessUsageLimitPeriod implements TerraformEnum {
  daily('daily'),
  weekly('weekly'),
  monthly('monthly');

  const RedshiftserverlessUsageLimitPeriod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Redshiftserverless Usage Limit Usage enum for `usage_type`.
enum RedshiftserverlessUsageLimitUsageType implements TerraformEnum {
  serverlessCompute('serverless-compute'),
  crossRegionDatasharing('cross-region-datasharing');

  const RedshiftserverlessUsageLimitUsageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_redshiftserverless_usage_limit`.
final class AwsRedshiftserverlessUsageLimit extends Resource {
  static const String tfType = 'aws_redshiftserverless_usage_limit';

  AwsRedshiftserverlessUsageLimit({
    required super.localName,
    required TfArg<num> amount,
    TfArg<RedshiftserverlessUsageLimitBreachAction>? breachAction,
    TfArg<RedshiftserverlessUsageLimitPeriod>? period,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    required TfArg<RedshiftserverlessUsageLimitUsageType> usageType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'amount': amount,
           if (breachAction != null) 'breach_action': breachAction,
           if (period != null) 'period': period,
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
           'usage_type': usageType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftserverlessUsageLimitSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
