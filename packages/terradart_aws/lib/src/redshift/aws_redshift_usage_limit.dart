// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_usage_limit`.
const Set<String> _awsRedshiftUsageLimitSensitive = <String>{};

/// Redshift Usage Limit Breach enum for `breach_action`.
extension type const RedshiftUsageLimitBreachAction._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftUsageLimitBreachAction.variable(String name)
    : this._(TfArg.variable(name));
  RedshiftUsageLimitBreachAction.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftUsageLimitBreachAction.arg(TfArg<String> arg) : this._(arg);

  static const log = RedshiftUsageLimitBreachAction._(TfArgLiteral('log'));
  static const emitMetric = RedshiftUsageLimitBreachAction._(
    TfArgLiteral('emit-metric'),
  );
  static const disable = RedshiftUsageLimitBreachAction._(
    TfArgLiteral('disable'),
  );

  static const List<RedshiftUsageLimitBreachAction> values = [
    log,
    emitMetric,
    disable,
  ];
}

/// Redshift Usage Limit Feature enum for `feature_type`.
extension type const RedshiftUsageLimitFeatureType._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftUsageLimitFeatureType.variable(String name)
    : this._(TfArg.variable(name));
  RedshiftUsageLimitFeatureType.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftUsageLimitFeatureType.arg(TfArg<String> arg) : this._(arg);

  static const spectrum = RedshiftUsageLimitFeatureType._(
    TfArgLiteral('spectrum'),
  );
  static const concurrencyScaling = RedshiftUsageLimitFeatureType._(
    TfArgLiteral('concurrency-scaling'),
  );
  static const crossRegionDatasharing = RedshiftUsageLimitFeatureType._(
    TfArgLiteral('cross-region-datasharing'),
  );
  static const extraComputeForAutomaticOptimization =
      RedshiftUsageLimitFeatureType._(
        TfArgLiteral('extra-compute-for-automatic-optimization'),
      );

  static const List<RedshiftUsageLimitFeatureType> values = [
    spectrum,
    concurrencyScaling,
    crossRegionDatasharing,
    extraComputeForAutomaticOptimization,
  ];
}

/// Redshift Usage Limit enum for `limit_type`.
extension type const RedshiftUsageLimitType._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftUsageLimitType.variable(String name) : this._(TfArg.variable(name));
  RedshiftUsageLimitType.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftUsageLimitType.arg(TfArg<String> arg) : this._(arg);

  static const time = RedshiftUsageLimitType._(TfArgLiteral('time'));
  static const dataScanned = RedshiftUsageLimitType._(
    TfArgLiteral('data-scanned'),
  );

  static const List<RedshiftUsageLimitType> values = [time, dataScanned];
}

/// Redshift Usage Limit enum for `period`.
extension type const RedshiftUsageLimitPeriod._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftUsageLimitPeriod.variable(String name) : this._(TfArg.variable(name));
  RedshiftUsageLimitPeriod.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftUsageLimitPeriod.arg(TfArg<String> arg) : this._(arg);

  static const daily = RedshiftUsageLimitPeriod._(TfArgLiteral('daily'));
  static const weekly = RedshiftUsageLimitPeriod._(TfArgLiteral('weekly'));
  static const monthly = RedshiftUsageLimitPeriod._(TfArgLiteral('monthly'));

  static const List<RedshiftUsageLimitPeriod> values = [daily, weekly, monthly];
}

/// Factory wrapper for `aws_redshift_usage_limit`.
final class AwsRedshiftUsageLimit extends Resource {
  static const String tfType = 'aws_redshift_usage_limit';

  AwsRedshiftUsageLimit(
    super.localName, {
    required TfArg<num> amount,
    RedshiftUsageLimitBreachAction? breachAction,
    required TfArg<String> clusterIdentifier,
    required RedshiftUsageLimitFeatureType featureType,
    required RedshiftUsageLimitType limitType,
    RedshiftUsageLimitPeriod? period,
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
           'breach_action': ?breachAction,
           'cluster_identifier': clusterIdentifier,
           'feature_type': featureType,
           'limit_type': limitType,
           'period': ?period,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftUsageLimitSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftUsageLimit>`.
  RefTo<AwsRedshiftUsageLimit> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `amount` attribute.
  TfRef<num> get amount => TfRef.attribute<num>(this, 'amount');

  /// Reference to `breach_action` attribute.
  TfRef<String> get breachAction =>
      TfRef.attribute<String>(this, 'breach_action');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifier =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `feature_type` attribute.
  TfRef<String> get featureType =>
      TfRef.attribute<String>(this, 'feature_type');

  /// Reference to `limit_type` attribute.
  TfRef<String> get limitType => TfRef.attribute<String>(this, 'limit_type');

  /// Reference to `period` attribute.
  TfRef<String> get period => TfRef.attribute<String>(this, 'period');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
