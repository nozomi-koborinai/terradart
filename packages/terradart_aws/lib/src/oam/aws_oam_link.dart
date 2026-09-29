// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_oam_link`.
const Set<String> _awsOamLinkSensitive = <String>{};

/// Oam Link Resource enum for `resource_types`.
enum OamLinkResourceTypes implements TerraformEnum {
  awsCloudwatchMetric('AWS::CloudWatch::Metric'),
  awsLogsLoggroup('AWS::Logs::LogGroup'),
  awsXrayTrace('AWS::XRay::Trace'),
  awsApplicationinsightsApplication('AWS::ApplicationInsights::Application'),
  awsInternetmonitorMonitor('AWS::InternetMonitor::Monitor'),
  awsApplicationsignalsService('AWS::ApplicationSignals::Service'),
  awsApplicationsignalsServicelevelobjective(
    'AWS::ApplicationSignals::ServiceLevelObjective',
  );

  const OamLinkResourceTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `link_configuration` block of
/// `aws_oam_link` (derived from provider schema).
@immutable
final class OamLinkLinkConfiguration {
  const OamLinkLinkConfiguration({
    this.logGroupConfiguration,
    this.metricConfiguration,
  });

  final OamLinkLinkConfigurationLogGroupConfiguration? logGroupConfiguration;

  final OamLinkLinkConfigurationMetricConfiguration? metricConfiguration;

  Map<String, Object?> encode() => {
    'log_group_configuration': ?logGroupConfiguration?.encode(),
    'metric_configuration': ?metricConfiguration?.encode(),
  };
}

/// Typed helper for the `link_configuration.log_group_configuration` block of
/// `aws_oam_link` (derived from provider schema).
@immutable
final class OamLinkLinkConfigurationLogGroupConfiguration {
  const OamLinkLinkConfigurationLogGroupConfiguration({required this.filter});

  final TfArg<String> filter;

  Map<String, Object?> encode() => {'filter': filter.toTfJson()};
}

/// Typed helper for the `link_configuration.metric_configuration` block of
/// `aws_oam_link` (derived from provider schema).
@immutable
final class OamLinkLinkConfigurationMetricConfiguration {
  const OamLinkLinkConfigurationMetricConfiguration({required this.filter});

  final TfArg<String> filter;

  Map<String, Object?> encode() => {'filter': filter.toTfJson()};
}

/// Factory wrapper for `aws_oam_link`.
final class AwsOamLink extends Resource {
  static const String tfType = 'aws_oam_link';

  AwsOamLink({
    required super.localName,
    required TfArg<String> labelTemplate,
    TfArg<String>? region,
    required List<TfArg<OamLinkResourceTypes>> resourceTypes,
    required TfArg<String> sinkIdentifier,
    TfArg<Map<String, String>>? tags,
    OamLinkLinkConfiguration? linkConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'label_template': labelTemplate,
           'region': ?region,
           'resource_types': TfArg.literal([
             for (final e in resourceTypes) e.toTfJson(),
           ]),
           'sink_identifier': sinkIdentifier,
           'tags': ?tags,
           if (linkConfiguration != null)
             'link_configuration': TfArg.literal(linkConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOamLinkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOamLink>`.
  RefTo<AwsOamLink> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `label` attribute.
  TfRef<String> get label => TfRef.attribute<String>(this, 'label');

  /// Reference to `link_id` attribute.
  TfRef<String> get linkId => TfRef.attribute<String>(this, 'link_id');

  /// Reference to `sink_arn` attribute.
  TfRef<String> get sinkArn => TfRef.attribute<String>(this, 'sink_arn');
}
