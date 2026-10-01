// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshiftserverless_usage_limit`.
const Set<String> _awsRedshiftserverlessUsageLimitSensitive = <String>{};

/// Redshiftserverless Usage Limit Breach enum for `breach_action`.
extension type const RedshiftserverlessUsageLimitBreachAction._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftserverlessUsageLimitBreachAction.variable(String name)
    : this._(TfArg.variable(name));
  RedshiftserverlessUsageLimitBreachAction.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftserverlessUsageLimitBreachAction.arg(TfArg<String> arg)
    : this._(arg);

  static const log = RedshiftserverlessUsageLimitBreachAction._(
    TfArgLiteral('log'),
  );
  static const emitMetric = RedshiftserverlessUsageLimitBreachAction._(
    TfArgLiteral('emit-metric'),
  );
  static const deactivate = RedshiftserverlessUsageLimitBreachAction._(
    TfArgLiteral('deactivate'),
  );

  static const List<RedshiftserverlessUsageLimitBreachAction> values = [
    log,
    emitMetric,
    deactivate,
  ];
}

/// Redshiftserverless Usage Limit enum for `period`.
extension type const RedshiftserverlessUsageLimitPeriod._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftserverlessUsageLimitPeriod.variable(String name)
    : this._(TfArg.variable(name));
  RedshiftserverlessUsageLimitPeriod.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftserverlessUsageLimitPeriod.arg(TfArg<String> arg) : this._(arg);

  static const daily = RedshiftserverlessUsageLimitPeriod._(
    TfArgLiteral('daily'),
  );
  static const weekly = RedshiftserverlessUsageLimitPeriod._(
    TfArgLiteral('weekly'),
  );
  static const monthly = RedshiftserverlessUsageLimitPeriod._(
    TfArgLiteral('monthly'),
  );

  static const List<RedshiftserverlessUsageLimitPeriod> values = [
    daily,
    weekly,
    monthly,
  ];
}

/// Redshiftserverless Usage Limit Usage enum for `usage_type`.
extension type const RedshiftserverlessUsageLimitUsageType._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftserverlessUsageLimitUsageType.variable(String name)
    : this._(TfArg.variable(name));
  RedshiftserverlessUsageLimitUsageType.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftserverlessUsageLimitUsageType.arg(TfArg<String> arg)
    : this._(arg);

  static const serverlessCompute = RedshiftserverlessUsageLimitUsageType._(
    TfArgLiteral('serverless-compute'),
  );
  static const crossRegionDatasharing = RedshiftserverlessUsageLimitUsageType._(
    TfArgLiteral('cross-region-datasharing'),
  );

  static const List<RedshiftserverlessUsageLimitUsageType> values = [
    serverlessCompute,
    crossRegionDatasharing,
  ];
}

/// Factory wrapper for `aws_redshiftserverless_usage_limit`.
final class AwsRedshiftserverlessUsageLimit extends Resource {
  static const String tfType = 'aws_redshiftserverless_usage_limit';

  AwsRedshiftserverlessUsageLimit(
    super.localName, {
    required TfArg<num> amount,
    RedshiftserverlessUsageLimitBreachAction? breachAction,
    RedshiftserverlessUsageLimitPeriod? period,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    required RedshiftserverlessUsageLimitUsageType usageType,
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
  TfRef<num> get amount => TfRef.attribute<num>(this, 'amount');

  /// Reference to `breach_action` attribute.
  TfRef<String> get breachAction =>
      TfRef.attribute<String>(this, 'breach_action');

  /// Reference to `period` attribute.
  TfRef<String> get period => TfRef.attribute<String>(this, 'period');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `usage_type` attribute.
  TfRef<String> get usageType => TfRef.attribute<String>(this, 'usage_type');
}
