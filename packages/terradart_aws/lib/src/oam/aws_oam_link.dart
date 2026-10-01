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
final class OamLinkConfiguration {
  const OamLinkConfiguration({
    this.logGroupConfiguration,
    this.metricConfiguration,
  });

  final OamLinkLogGroupConfiguration? logGroupConfiguration;

  final OamLinkMetricConfiguration? metricConfiguration;

  Map<String, Object?> encode() => {
    'log_group_configuration': ?logGroupConfiguration?.encode(),
    'metric_configuration': ?metricConfiguration?.encode(),
  };
}

/// Typed helper for the `link_configuration.log_group_configuration` block of
/// `aws_oam_link` (derived from provider schema).
@immutable
final class OamLinkLogGroupConfiguration {
  const OamLinkLogGroupConfiguration({required this.filter});

  final TfArg<String> filter;

  Map<String, Object?> encode() => {'filter': filter.toTfJson()};
}

/// Typed helper for the `link_configuration.metric_configuration` block of
/// `aws_oam_link` (derived from provider schema).
@immutable
final class OamLinkMetricConfiguration {
  const OamLinkMetricConfiguration({required this.filter});

  final TfArg<String> filter;

  Map<String, Object?> encode() => {'filter': filter.toTfJson()};
}

/// Factory wrapper for `aws_oam_link`.
final class AwsOamLink extends Resource {
  static const String tfType = 'aws_oam_link';

  AwsOamLink(
    super.localName, {
    required TfArg<String> labelTemplate,
    TfArg<String>? region,
    required List<TfArg<OamLinkResourceTypes>> resourceTypes,
    required TfArg<String> sinkIdentifier,
    TfArg<Map<String, String>>? tags,
    OamLinkConfiguration? linkConfiguration,
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

  /// Reference to `label_template` attribute.
  TfRef<String> get labelTemplate =>
      TfRef.attribute<String>(this, 'label_template');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_types` attribute.
  TfRef<List<String>> get resourceTypes =>
      TfRef.attribute<List<String>>(this, 'resource_types');

  /// Reference to `sink_identifier` attribute.
  TfRef<String> get sinkIdentifier =>
      TfRef.attribute<String>(this, 'sink_identifier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
