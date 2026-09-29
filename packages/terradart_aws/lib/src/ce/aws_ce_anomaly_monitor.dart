// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ce_anomaly_monitor`.
const Set<String> _awsCeAnomalyMonitorSensitive = <String>{};

/// Ce Anomaly Monitor Monitor enum for `monitor_dimension`.
enum CeAnomalyMonitorMonitorDimension implements TerraformEnum {
  service('SERVICE'),
  linkedAccount('LINKED_ACCOUNT'),
  tag('TAG'),
  costCategory('COST_CATEGORY');

  const CeAnomalyMonitorMonitorDimension(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ce Anomaly Monitor Monitor enum for `monitor_type`.
enum CeAnomalyMonitorMonitorType implements TerraformEnum {
  dimensional('DIMENSIONAL'),
  custom('CUSTOM');

  const CeAnomalyMonitorMonitorType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `monitor_dimension`, `monitor_specification` on `aws_ce_anomaly_monitor`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.monitorDimension(...)`.
sealed class CeAnomalyMonitorMonitor {
  const CeAnomalyMonitorMonitor();

  /// Sets `monitor_dimension`.
  const factory CeAnomalyMonitorMonitor.monitorDimension(
    TfArg<CeAnomalyMonitorMonitorDimension> monitorDimension,
  ) = CeAnomalyMonitorMonitorMonitorDimension;

  /// Sets `monitor_specification`.
  const factory CeAnomalyMonitorMonitor.monitorSpecification(
    TfArg<String> monitorSpecification,
  ) = CeAnomalyMonitorMonitorMonitorSpecification;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CeAnomalyMonitorMonitor.monitorDimension] choice: sets `monitor_dimension`.
final class CeAnomalyMonitorMonitorMonitorDimension
    extends CeAnomalyMonitorMonitor {
  const CeAnomalyMonitorMonitorMonitorDimension(this.monitorDimension);

  final TfArg<CeAnomalyMonitorMonitorDimension> monitorDimension;

  @override
  String get blockKey => 'monitor_dimension';

  @override
  Map<String, Object?> encode() => {
    'monitor_dimension': monitorDimension.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'monitor_dimension': monitorDimension,
  };
}

/// The [CeAnomalyMonitorMonitor.monitorSpecification] choice: sets `monitor_specification`.
final class CeAnomalyMonitorMonitorMonitorSpecification
    extends CeAnomalyMonitorMonitor {
  const CeAnomalyMonitorMonitorMonitorSpecification(this.monitorSpecification);

  final TfArg<String> monitorSpecification;

  @override
  String get blockKey => 'monitor_specification';

  @override
  Map<String, Object?> encode() => {
    'monitor_specification': monitorSpecification.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'monitor_specification': monitorSpecification,
  };
}

/// Factory wrapper for `aws_ce_anomaly_monitor`.
final class AwsCeAnomalyMonitor extends Resource {
  static const String tfType = 'aws_ce_anomaly_monitor';

  AwsCeAnomalyMonitor({
    required super.localName,
    CeAnomalyMonitorMonitor? monitor,
    required TfArg<CeAnomalyMonitorMonitorType> monitorType,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?monitor?.argMap,
           'monitor_type': monitorType,
           'name': name,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCeAnomalyMonitorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCeAnomalyMonitor>`.
  RefTo<AwsCeAnomalyMonitor> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
