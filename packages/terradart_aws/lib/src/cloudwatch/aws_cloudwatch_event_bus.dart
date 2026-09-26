// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_event_bus`.
const Set<String> _awsCloudwatchEventBusSensitive = <String>{};

/// Typed helper for the `dead_letter_config` block of
/// `aws_cloudwatch_event_bus` (derived from provider schema).
@immutable
final class CloudwatchEventBusDeadLetterConfig {
  const CloudwatchEventBusDeadLetterConfig({this.arn});

  final TfArg<String>? arn;

  Map<String, Object?> encode() => {if (arn != null) 'arn': arn!.toTfJson()};
}

/// Typed helper for the `log_config` block of
/// `aws_cloudwatch_event_bus` (derived from provider schema).
@immutable
final class CloudwatchEventBusLogConfig {
  const CloudwatchEventBusLogConfig({this.includeDetail, this.level});

  final TfArg<String>? includeDetail;

  final TfArg<String>? level;

  Map<String, Object?> encode() => {
    if (includeDetail != null) 'include_detail': includeDetail!.toTfJson(),
    if (level != null) 'level': level!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_event_bus`.
final class AwsCloudwatchEventBus extends Resource {
  static const String tfType = 'aws_cloudwatch_event_bus';

  AwsCloudwatchEventBus({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? eventSourceName,
    TfArg<String>? kmsKeyIdentifier,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    CloudwatchEventBusDeadLetterConfig? deadLetterConfig,
    CloudwatchEventBusLogConfig? logConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (eventSourceName != null) 'event_source_name': eventSourceName,
           if (kmsKeyIdentifier != null) 'kms_key_identifier': kmsKeyIdentifier,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (deadLetterConfig != null)
             'dead_letter_config': TfArg.literal(deadLetterConfig.encode()),
           if (logConfig != null)
             'log_config': TfArg.literal(logConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventBusSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
