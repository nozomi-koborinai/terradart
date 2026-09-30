// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_cloudwatch_event_bus`.
const Set<String> _awsCloudwatchEventBusSensitive = <String>{};

/// Typed helper for the `dead_letter_config` block of
/// `aws_cloudwatch_event_bus` (derived from provider schema).
@immutable
final class CloudwatchEventBusDeadLetterConfig {
  const CloudwatchEventBusDeadLetterConfig({this.arn});

  final TfArg<String>? arn;

  Map<String, Object?> encode() => {'arn': ?arn?.toTfJson()};
}

/// Typed helper for the `log_config` block of
/// `aws_cloudwatch_event_bus` (derived from provider schema).
@immutable
final class CloudwatchEventBusLogConfig {
  const CloudwatchEventBusLogConfig({this.includeDetail, this.level});

  final TfArg<CloudwatchEventBusLogConfigIncludeDetail>? includeDetail;

  final TfArg<CloudwatchEventBusLogConfigLevel>? level;

  Map<String, Object?> encode() => {
    'include_detail': ?includeDetail?.toTfJson(),
    'level': ?level?.toTfJson(),
  };
}

/// `include_detail` — derived from the provider schema description.
enum CloudwatchEventBusLogConfigIncludeDetail implements TerraformEnum {
  none('NONE'),
  full('FULL');

  const CloudwatchEventBusLogConfigIncludeDetail(this.terraformValue);
  @override
  final String terraformValue;
}

/// `level` — derived from the provider schema description.
enum CloudwatchEventBusLogConfigLevel implements TerraformEnum {
  off('OFF'),
  error('ERROR'),
  info('INFO'),
  trace('TRACE');

  const CloudwatchEventBusLogConfigLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudwatch_event_bus`.
final class AwsCloudwatchEventBus extends Resource {
  static const String tfType = 'aws_cloudwatch_event_bus';

  AwsCloudwatchEventBus({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? eventSourceName,
    RefTo<AwsKmsKey>? kmsKeyIdentifier,
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
           'description': ?description,
           'event_source_name': ?eventSourceName,
           'kms_key_identifier': ?kmsKeyIdentifier?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (deadLetterConfig != null)
             'dead_letter_config': TfArg.literal(deadLetterConfig.encode()),
           if (logConfig != null)
             'log_config': TfArg.literal(logConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventBusSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchEventBus>`.
  RefTo<AwsCloudwatchEventBus> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `event_source_name` attribute.
  TfRef<String> get eventSourceNameRef =>
      TfRef.attribute<String>(this, 'event_source_name');

  /// Reference to `kms_key_identifier` attribute.
  TfRef<String> get kmsKeyIdentifierRef =>
      TfRef.attribute<String>(this, 'kms_key_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
