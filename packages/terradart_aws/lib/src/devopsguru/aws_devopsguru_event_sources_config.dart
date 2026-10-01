// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devopsguru_event_sources_config`.
const Set<String> _awsDevopsguruEventSourcesConfigSensitive = <String>{};

/// Typed helper for the `event_sources` block of
/// `aws_devopsguru_event_sources_config` (derived from provider schema).
@immutable
final class DevopsguruEventSourcesConfigEventSources {
  const DevopsguruEventSourcesConfigEventSources({this.amazonCodeGuruProfiler});

  final List<DevopsguruEventSourcesConfigAmazonCodeGuruProfiler>?
  amazonCodeGuruProfiler;

  Map<String, Object?> encode() => {
    if (amazonCodeGuruProfiler != null)
      'amazon_code_guru_profiler': [
        for (final e in amazonCodeGuruProfiler!) e.encode(),
      ],
  };
}

/// Typed helper for the `event_sources.amazon_code_guru_profiler` block of
/// `aws_devopsguru_event_sources_config` (derived from provider schema).
@immutable
final class DevopsguruEventSourcesConfigAmazonCodeGuruProfiler {
  const DevopsguruEventSourcesConfigAmazonCodeGuruProfiler({
    required this.status,
  });

  final TfArg<DevopsguruEventSourcesConfigStatus> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// `status` — derived from the provider schema description.
enum DevopsguruEventSourcesConfigStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const DevopsguruEventSourcesConfigStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_devopsguru_event_sources_config`.
final class AwsDevopsguruEventSourcesConfig extends Resource {
  static const String tfType = 'aws_devopsguru_event_sources_config';

  AwsDevopsguruEventSourcesConfig(
    super.localName, {
    TfArg<String>? region,
    List<DevopsguruEventSourcesConfigEventSources>? eventSources,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           if (eventSources != null)
             'event_sources': TfArg.literal([
               for (final e in eventSources) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevopsguruEventSourcesConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDevopsguruEventSourcesConfig>`.
  RefTo<AwsDevopsguruEventSourcesConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
