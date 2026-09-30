// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmonitor_monitor`.
const Set<String> _awsNetworkmonitorMonitorSensitive = <String>{};

/// Factory wrapper for `aws_networkmonitor_monitor`.
final class AwsNetworkmonitorMonitor extends Resource {
  static const String tfType = 'aws_networkmonitor_monitor';

  AwsNetworkmonitorMonitor({
    required super.localName,
    TfArg<num>? aggregationPeriod,
    required TfArg<String> monitorName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aggregation_period': ?aggregationPeriod,
           'monitor_name': monitorName,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmonitorMonitorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmonitorMonitor>`.
  RefTo<AwsNetworkmonitorMonitor> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `aggregation_period` attribute.
  TfRef<num> get aggregationPeriodRef =>
      TfRef.attribute<num>(this, 'aggregation_period');

  /// Reference to `monitor_name` attribute.
  TfRef<String> get monitorNameRef =>
      TfRef.attribute<String>(this, 'monitor_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
