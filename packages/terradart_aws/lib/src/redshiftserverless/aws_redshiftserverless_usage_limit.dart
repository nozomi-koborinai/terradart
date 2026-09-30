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
           'breach_action': ?breachAction,
           'period': ?period,
           'region': ?region,
           'resource_arn': resourceArn,
           'usage_type': usageType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftserverlessUsageLimitSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftserverlessUsageLimit>`.
  RefTo<AwsRedshiftserverlessUsageLimit> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `amount` attribute.
  TfRef<num> get amountRef => TfRef.attribute<num>(this, 'amount');

  /// Reference to `breach_action` attribute.
  TfRef<String> get breachActionRef =>
      TfRef.attribute<String>(this, 'breach_action');

  /// Reference to `period` attribute.
  TfRef<String> get periodRef => TfRef.attribute<String>(this, 'period');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArnRef =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `usage_type` attribute.
  TfRef<String> get usageTypeRef => TfRef.attribute<String>(this, 'usage_type');
}
