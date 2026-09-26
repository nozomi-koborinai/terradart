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
final class NetworkfirewallLoggingConfigurationLoggingConfiguration {
  const NetworkfirewallLoggingConfigurationLoggingConfiguration({
    required this.logDestinationConfig,
  });

  final List<
    NetworkfirewallLoggingConfigurationLoggingConfigurationLogDestinationConfig
  >
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
final class NetworkfirewallLoggingConfigurationLoggingConfigurationLogDestinationConfig {
  const NetworkfirewallLoggingConfigurationLoggingConfigurationLogDestinationConfig({
    required this.logDestination,
    required this.logDestinationType,
    required this.logType,
  });

  final TfArg<Map<String, String>> logDestination;

  final TfArg<String> logDestinationType;

  final TfArg<String> logType;

  Map<String, Object?> encode() => {
    'log_destination': logDestination.toTfJson(),
    'log_destination_type': logDestinationType.toTfJson(),
    'log_type': logType.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkfirewall_logging_configuration`.
final class AwsNetworkfirewallLoggingConfiguration extends Resource {
  static const String tfType = 'aws_networkfirewall_logging_configuration';

  AwsNetworkfirewallLoggingConfiguration({
    required super.localName,
    TfArg<bool>? enableMonitoringDashboard,
    required TfArg<String> firewallArn,
    TfArg<String>? region,
    required NetworkfirewallLoggingConfigurationLoggingConfiguration
    loggingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enableMonitoringDashboard != null)
             'enable_monitoring_dashboard': enableMonitoringDashboard,
           'firewall_arn': firewallArn,
           if (region != null) 'region': region,
           'logging_configuration': TfArg.literal(
             loggingConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkfirewallLoggingConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
