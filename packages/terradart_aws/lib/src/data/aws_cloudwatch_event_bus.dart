// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_event_bus`.
const Set<String> _awsCloudwatchEventBusSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_event_bus`.
final class DataAwsCloudwatchEventBus extends Data {
  static const String tfType = 'aws_cloudwatch_event_bus';

  DataAwsCloudwatchEventBus({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventBusSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dead_letter_config` attribute.
  TfRef<List<Map<String, Object?>>> get deadLetterConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dead_letter_config');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_identifier` attribute.
  TfRef<String> get kmsKeyIdentifier =>
      TfRef.attribute<String>(this, 'kms_key_identifier');

  /// Reference to `log_config` attribute.
  TfRef<List<Map<String, Object?>>> get logConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'log_config');
}
