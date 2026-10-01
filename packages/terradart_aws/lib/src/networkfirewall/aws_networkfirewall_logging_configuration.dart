// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkfirewall_logging_configuration`.
const Set<String> _awsNetworkfirewallLoggingConfigurationSensitive = <String>{};

/// Typed helper for the `logging_configuration` block of
/// `aws_networkfirewall_logging_configuration` (derived from provider schema).
@immutable
final class NetworkfirewallLoggingConfiguration {
  const NetworkfirewallLoggingConfiguration({
    required this.logDestinationConfig,
  });

  final List<NetworkfirewallLoggingConfigurationLogDestinationConfig>
  logDestinationConfig;

  Map<String, Object?> encode() => {
    'log_destination_config': [
      for (final e in logDestinationConfig) e.encode(),
    ],
  };
}

/// Typed helper for the `logging_configuration.log_destination_config` block of
/// `aws_networkfirewall_logging_configuration` (derived from provider schema).
@immutable
final class NetworkfirewallLoggingConfigurationLogDestinationConfig {
  const NetworkfirewallLoggingConfigurationLogDestinationConfig({
    required this.logDestination,
    required this.logDestinationType,
    required this.logType,
  });

  final TfArg<Map<String, String>> logDestination;

  final TfArg<NetworkfirewallLoggingConfigurationLogDestinationType>
  logDestinationType;

  final TfArg<NetworkfirewallLoggingConfigurationLogType> logType;

  Map<String, Object?> encode() => {
    'log_destination': logDestination.toTfJson(),
    'log_destination_type': logDestinationType.toTfJson(),
    'log_type': logType.toTfJson(),
  };
}

/// `log_destination_type` — derived from the provider schema description.
enum NetworkfirewallLoggingConfigurationLogDestinationType
    implements TerraformEnum {
  s3('S3'),
  cloudwatchlogs('CloudWatchLogs'),
  kinesisdatafirehose('KinesisDataFirehose');

  const NetworkfirewallLoggingConfigurationLogDestinationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `log_type` — derived from the provider schema description.
enum NetworkfirewallLoggingConfigurationLogType implements TerraformEnum {
  alert('ALERT'),
  flow('FLOW'),
  tls('TLS');

  const NetworkfirewallLoggingConfigurationLogType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_networkfirewall_logging_configuration`.
final class AwsNetworkfirewallLoggingConfiguration extends Resource {
  static const String tfType = 'aws_networkfirewall_logging_configuration';

  AwsNetworkfirewallLoggingConfiguration(
    super.localName, {
    TfArg<bool>? enableMonitoringDashboard,
    required TfArg<String> firewallArn,
    TfArg<String>? region,
    required NetworkfirewallLoggingConfiguration loggingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enable_monitoring_dashboard': ?enableMonitoringDashboard,
           'firewall_arn': firewallArn,
           'region': ?region,
           'logging_configuration': TfArg.literal(
             loggingConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkfirewallLoggingConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkfirewallLoggingConfiguration>`.
  RefTo<AwsNetworkfirewallLoggingConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enable_monitoring_dashboard` attribute.
  TfRef<bool> get enableMonitoringDashboard =>
      TfRef.attribute<bool>(this, 'enable_monitoring_dashboard');

  /// Reference to `firewall_arn` attribute.
  TfRef<String> get firewallArn =>
      TfRef.attribute<String>(this, 'firewall_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
